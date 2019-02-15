//********************************************************* 
/*  文件名：TEST_60F01x_IIC.c
*	功能：  FT60F01x_IIC功能演示
*   IC:    FT60F011A SOP8 
*   晶振：  16M/4T                    
*   说明：  此演示程序位60F01x_IIC的演示程序.
*		   该程序读取(24C02)0x12地址的值,取反后存入0x13地址 
*
*                  FT60F011A  SOP8 
*                 ----------------
*  VDD-----------|1(VDD)    (GND)8|------------GND     
*  IIC_SDA-------|2(PA2)    (PA4)7|--------IIC_SCL 
*  RXIO----------|3(PA1)    (PA5)6|-------------NC
*  NC------------|4(PA3)    (PA0)5|-----------TXIO
*			      ----------------
*/
//*********************************************************
#include "SYSCFG.h"

//*********************************************************
#define OSC_16M  0X70
#define OSC_8M   0X60
#define OSC_4M   0X50
#define OSC_2M   0X40
#define OSC_1M   0X30
#define OSC_500K 0X20
#define OSC_250K 0X10
#define OSC_32K  0X00

#define WDT_256K 0X80
#define WDT_32K  0X00
//**********************************************************
//***********************宏定义*****************************
#define  u8     unsigned char 
#define  uint      unsigned int
#define  ulong     unsigned long

#define  IIC_SCL		RA4   
#define  IIC_SDA		RA2

#define SDA_OUT  TRISA2 =0
#define SDA_IN	 TRISA2 =1
#define SCL_IN	 TRISA4 =1

//unchar IICReadData;

#define  TXIO		RA0  	//串口的发送脚
#define  RXIO		RA1  	//串口的接收脚
#define  TX_IN()	TRISA0 = 1
#define  TX_OUT()   TRISA0 = 0

#define  Bord		49 		//通过定时器提供波特率
u8 RXFLAG = 0;
u8 ReadAPin;
 /*-------------------------------------------------
 *  函数名：POWER_INITIAL
 *	功能：  上电系统初始化
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/	
void POWER_INITIAL (void) 
{
	OSCCON = WDT_32K|OSC_16M|0X01;	//INROSC
  //OSCCON = 0B01110001;			//WDT 32KHZ IRCF=111=16MHZ/4=4MHZ,0.25US/T
					 				//Bit0=1,系统时钟为内部振荡器(60F01x保留位)
					 				//Bit0=0,时钟源由FOSC<2：0>决定即编译选项时选择(60F01x保留位)
	INTCON = 0;  					//暂禁止所有中断
	PORTA = 0B00000000;				
	TRISA = 0B11101011;				//PA输入输出 0-输出 1-输入，PIN6->RA0->TX    
	WPUA = 0B00000000;     			//PA端口上拉控制 1-开上拉 0-关上拉
  //WPUA2 = 0;					    //关PA2上拉
  
	OPTION = 0B00001000;			//Bit3=1 WDT MODE,PS=000=1:1 WDT RATE
					 				//Bit7(PAPU)=0 ENABLED PULL UP PA
	MSCKCON = 0B00000000;	        //Bit6->0,禁止PA4, PC5稳压输出(60F01x保留位)
					  			    //Bit5->0,TIMER2时钟为Fosc(60F01x保留位)
					  			    //Bit4->0,禁止LVR(60F01x O版之前)
                                    //Bit4->0, LVREN使能时,开启LVR(60F01x O版及O版后)  
	                                //Bit4->1, LVREN使能时,工作时开启LVR, 睡眠时自动关闭LVR(60F01x O版及O版之后)  
}
/*-------------------------------------------------
 *  函数名称：DelayUs
 *  功能：   短延时函数 --16M-4T--大概快1%左右.
 *  输入参数：Time 延时时间长度 延时时长Time*2 Us
 * 	返回参数：无 
 -------------------------------------------------*/
void DelayUs(unsigned char Time)
{
	unsigned char a;
	for(a=0;a<Time;a++)
	{
		NOP();
	}
}                  
/*------------------------------------------------- 
 * 	函数名称：DelayMs
 * 	功能：   短延时函数
 * 	输入参数：Time 延时时间长度 延时时长Time ms
 * 	返回参数：无 
 -------------------------------------------------*/
void DelayMs(unsigned int Time)
{
	unsigned int a,b;
	for(a=0;a<Time;a++)
	{
		for(b=0;b<5;b++)
		{
		 	DelayUs(98);    //快1%
		}
	}
}
/*------------------------------------------------- 
 * 	函数名称：DelayS
 * 	功能：   短延时函数
 * 	输入参数：Time 延时时间长度 延时时长Time S
 * 	返回参数：无 
 -------------------------------------------------*/
void DelayS(unsigned char Time)
{
	unsigned char a,b;
	for(a=0;a<Time;a++)
	{
		for(b=0;b<10;b++)
		{
		 	DelayMs(100); 
		}
	}
}
//延时分钟
void DelayM(unsigned char Time)
{
	unsigned char a;
	for(a=0;a<Time;a++)
	{
		DelayS(60); 
	}
}
/*-------------------------------------------------
 *  函数名：IIC_Start
 *	功能：  产生IIC起始信号
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/
void IIC_Start(void)
{
	SDA_OUT;          //SDA线输出
	IIC_SDA=1;	  	  
	IIC_SCL=1;
	DelayUs(10);
 	IIC_SDA=0;        //START:when CLK is high,DATA change form high to low 
	DelayUs(10);
	IIC_SCL=0;        //钳住I2C总线，准备发送或接收数据 
    DelayUs(10);
}	  
/*-------------------------------------------------
 *  函数名：IIC_Stop
 *	功能：  产生IIC停止信号
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/
 void IIC_Stop(void)
{
	SDA_OUT;          //SDA线输出
	IIC_SCL=0;
	IIC_SDA=0;        //STOP:when CLK is high DATA change form low to high
 	DelayUs(10);
	IIC_SCL=1; 
    DelayUs(10);
	IIC_SDA=1;        //发送I2C总线结束信号
	DelayUs(10);							   	
}
/*-------------------------------------------------
 *  函数名：IIC_Wait_Ack
 *	功能：  等待应答信号到来
 *  输入：  无
 *  输出：  返回值：1，接收应答失败
 *               0，接收应答成功
 --------------------------------------------------*/
unsigned char IIC_Wait_Ack(void)
{
	unsigned char ucErrTime=0;      
	SDA_IN;               //SDA设置为输入  
	IIC_SDA=1;
	DelayUs(5);	   
	IIC_SCL=1;
	DelayUs(5);	 
	while(IIC_SDA)
	{
		ucErrTime++;
		if(ucErrTime>250) //等待超时
		{
			IIC_Stop();
			return 1;
		}
	}
	IIC_SCL=0;            //时钟输出0 	   
	return 0;  
} 
/*-------------------------------------------------
 *  函数名：IIC_Ack
 *	功能：  产生ACK应答
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/
void IIC_Ack(void)
{
	IIC_SCL=0;
	SDA_OUT;              //SDA线输出
	IIC_SDA=0;
	DelayUs(5);	
	IIC_SCL=1;
	DelayUs(5);	
	IIC_SCL=0;
}
/*-------------------------------------------------
 *  函数名：IIC_NAck
 *	功能：  不产生ACK应答
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/	    
void IIC_NAck(void)
{
	IIC_SCL=0;
	SDA_OUT;              //SDA线输出
	IIC_SDA=1;
	DelayUs(5);	
	IIC_SCL=1;
	DelayUs(5);	
	IIC_SCL=0;
}					 				     
/*-------------------------------------------------
 *  函数名：IIC_Send_Byte
 *	功能：  IIC发送一个字节
 *  输入：  写入要发送的一个人字节数据txd
 *  输出：  无
 --------------------------------------------------*/		  
void IIC_Send_Byte(unsigned char txd)
{                        
    unsigned char t;   
	SDA_OUT;	          //SDA线输出   
    IIC_SCL=0;            //拉低时钟开始数据传输
    for(t=0;t<8;t++)
    {              
		if((txd&0x80)>>7)
			IIC_SDA=1;
		else
			IIC_SDA=0;
		txd<<=1; 	  
		DelayUs(5);				  
		IIC_SCL=1;
		DelayUs(5);	
		IIC_SCL=0;	
		DelayUs(5);
    }	 
} 	    
/*-------------------------------------------------
 *  函数名：IIC_Read_Byte
 *	功能：  IIC读一个字节
 *  输入：  无
 *  输出：  读出存储器里面的数据并返回receive
 --------------------------------------------------*/
 unsigned char IIC_Read_Byte(void)
{
	unsigned char i,receive=0;
	SDA_IN;               //SDA设置为输入
    for(i=0;i<8;i++ )
	{
        IIC_SCL=0; 
        DelayUs(5);	
     	IIC_SCL=1;
        receive<<=1;
        if(IIC_SDA)receive++;   
		DelayUs(5);	
    }					 
    IIC_NAck();           //发送nACK
  
    return receive;
}
/*-------------------------------------------------
 *  函数名：IIC_READ
 *	功能：  IIC读出制定位置的数据
 *  输入：  address
 *  输出：  读出address存储器里面的数据iicdata
 --------------------------------------------------*/
 unsigned char IIC_READ(unsigned char address)
	{
	unsigned char iicdata = 0;
	IIC_READ_Begin:
		IIC_Start();
		IIC_Send_Byte(0xa0);
		if(IIC_Wait_Ack())goto IIC_READ_Begin;
		IIC_Send_Byte(address);				    //填要读的数据地址
		if(IIC_Wait_Ack())goto IIC_READ_Begin; 
		IIC_Start();
		IIC_Send_Byte(0xa1);
		if(IIC_Wait_Ack())goto IIC_READ_Begin;
		iicdata=IIC_Read_Byte();
		IIC_Stop();		
		return iicdata;
	}
 /*-------------------------------------------------
 *  函数名：IIC_WRITE
 *	功能：  IIC把数据data写入制定的位置address
 *  输入：  address，data
 *  输出：  无
 --------------------------------------------------*/
void IIC_WRITE(unsigned char address,unsigned char data)
{
	IIC_WRITE_Begin:
		IIC_Start();
		IIC_Send_Byte(0xa0);
		if(IIC_Wait_Ack())goto IIC_WRITE_Begin;

		IIC_Send_Byte(address);
		if(IIC_Wait_Ack())goto IIC_WRITE_Begin;

		IIC_Send_Byte(data);
		if(IIC_Wait_Ack())goto IIC_WRITE_Begin;

		IIC_Stop();	
}
unsigned char I2C_SendString(unsigned char chip_addr, unsigned char const *buffer,int Number)
{
    unsigned char i;
    IIC_Start();
    IIC_Send_Byte(chip_addr);   //发送器件地址0XA0,写数据

    if(IIC_Wait_Ack()==1){
        //printf("Wait_Ack err 000\n");
        return 0;
    }

    for(i=0; i<Number; i++) {
        IIC_Send_Byte(*buffer);
        if(IIC_Wait_Ack()==1) {
            //printf("\r\nerr 3\r\n");
            return 0;
        }
        buffer++;
    }
    IIC_Stop();
    return 1;
}
/*----------------------------------------------------
 *	函数名：TIMER0_INITIAL
 *	功能：  初始化设置定时器
 *	输入：  无
 *  输出：  无
 *	说明：  设置TMR0定时时长104us=(1/16000000)*4*2*208(16M-2T-PSA 1:2- TMR0=255溢出)	                      
 ----------------------------------------------------*/
void TIMER0_INITIAL (void)  
{
	OPTION = 0B00000000;    //Bit5 T0CS Timer0时钟源选择 
							//1-外部引脚电平变化T0CKI 0-内部时钟(FOSC/2)
							//Bit4 T0CKI引脚触发方式 1-下降沿 0-上升沿
							//Bit3 PSA 预分频器分配位 0-Timer0 1-WDT 
							//Bit2:0 PS2 8个预分频比 000 - 1:2
	TMR0 = Bord; 
    T0IF = 0;				//清空T0软件中断
}
/*-------------------------------------------------
 *  函数名: PA2_Level_Change_INITIAL
 *	功能：  PA端口(PA2)电平变化中断初始化
 *  输入：  无
 *  输出：  无
--------------------------------------------------*/
void PA2_Level_Change_INITIAL(void)
{
	TRISA2 =1; 				//SET PA2 INPUT
	ReadAPin = PORTA;		//清PA电平变化中断
	PAIF =0;   				//清PA INT中断标志位
    IOCA2 =1;  				//使能PA2电平变化中断
	PAIE =1;   				//使能PA INT中断
  //GIE =1;    				//使能全局中断
}
void uartInit() {
	POWER_INITIAL();
    TIMER0_INITIAL();
    PA2_Level_Change_INITIAL();
    GIE = 1; 				//开中断
	T0IE = 1;				//开定时器/计数器0中断
}
/*-------------------------------------------------
 *  函数名： interrupt ISR
 *	功能：  中断处理，包括定时器0中断和外部中断
 *  输入：  无
 *  输出：  无
 *	说明：  定时器产生104uS中断，对应9600的波特率 1000000÷9600=104
 --------------------------------------------------*/
void interrupt ISR(void)	//PIC_HI-TECH使用
{ 
   
  //定时器0的中断处理**********************
	if(T0IE && T0IF)		//104us
	{
		TMR0 = Bord;		//注意:对TMR0重新赋值TMR0在两个周期内不变化
		 
		T0IF = 0;
        T0IE = 0;
	} 
    
    //PA电平变化中断**********************
	if(PAIE && PAIF)		
    {
		ReadAPin = PORTA; 	//读取PORTA数据清PAIF标志
		PAIF = 0;  			//清PAIF标志位
		if(RXIO == 0)
        {
        	PAIE = 0;  		//暂先禁止PA电平变化中断
			IOCA2 =0;  		//禁止PA2电平变化中断
            RXFLAG = 1;
        } 
    }
}
/*-------------------------------------------------
 *  函数名： WaitTF0
 *	功能：  查询定时器溢出后，在中断里关闭定时器后，再次打开定时器
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/
void WaitTF0( void )
{
     while(T0IE);
     T0IE=1;
}
/*-------------------------------------------------
 *  函数名： WByte
 *	功能：  UART发送一个字节
 *  输入：  input
 *  输出：  无
 --------------------------------------------------*/
void WByte(u8 input) {
	                        //发送起始位
	u8 i=8;
	TXIO = 1;
	TMR0 = Bord;
	T0IE = 1;  
	WaitTF0(); 
	TXIO=0;
	WaitTF0();
	                        //发送8位数据位
	while(i--)
	{
		if(input&0x01) {    //先传低位
			TXIO=1;
		} else {
			TXIO = 0;
		}    
		WaitTF0();
		input=input>>1;
	}
	                        //发送校验位(无)
	                        //发送结束位
	TXIO=(bit)1;
	T0IE=0;
}
void WString(u8 const *buffer,int Number) {
    u8 i;
    
    TX_OUT();
    for(i=0; i<Number; i++) {
        WByte(*buffer);
        buffer++;
    }
    TX_IN();
}
/*-------------------------------------------------
 *  函数名： RByte
 *	功能：  UART接收一个字节
 *  输入：  无
 *  输出：  Output
 --------------------------------------------------*/
u8 RByte() {
	u8 Output=0;
	u8 i=8;
	T0IE=1;                 //启动Timer0
	TMR0 = Bord;
	WaitTF0();
	T0IE=1;                 //启动Timer0
	TMR0 = Bord;
	WaitTF0();              //等过起始位
	                        //发送8位数据位
	while(i--)
	{
		Output >>=1;
		if(RXIO) 
        {
        	Output|=0x80;   //先收低位
        }
		WaitTF0();          //位间延时
	}
	T0IE=0;                 //停止Timer0
	return Output;
}
u8 const par1[] = { 
//上电第一组
0xB5,0x62,0x06,0x41,0x0C,0x00,0x00,0x00,0x03,0x1F,0x78,0xB7,0x58,0xB7,0xFF,0x76,0xCF,0xFF,0xF6,0x6B,
};
u8 const par2[] = { 
//GPS
0xB5,0x62,0x06,0x3E,0x3C,0x00,0x00,0x00,0x20,0x07,0x00,0x08,0x10,0x00,
0x01,0x00,0x01,0x01,0x01,0x01,0x03,0x00,0x00,0x00,0x01,0x01,0x02,0x04,
0x08,0x00,0x00,0x00,0x01,0x01,0x03,0x08,0x10,0x00,0x00,0x00,0x01,0x01,
0x04,0x00,0x08,0x00,0x00,0x00,0x01,0x01,0x05,0x00,0x03,0x00,0x01,0x00,
0x01,0x01,0x06,0x08,0x0E,0x00,0x01,0x00,0x01,0x01,0x2E,0x5D,
};
u8 const par3[] = {
//NAV-5-2G
0xB5,0x62,0x06,0x24,0x24,0x00,0xFF,0xFF,0x04,0x03,0x00,0x00,0x00,0x00,0x10,
0x27,0x00,0x00,0x00,0x00,0x5E,0x01,0x5E,0x01,0xC8,0x00,0x5E,0x01,0xC8,0x3C,
0x00,0x00,0x00,0x00,0x1E,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x91,0xC4,
};
u8 const par4[] = {
//过滤卫星
0xB5,0x62,0x06,0x17,0x14,0x00,0x00,0x40,0x00,0x02,0x60,0x00,0x00,0x00,0x00,
0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xD5,0x4F,
};
u8 const par5[] = {
//AOP
0xB5,0x62,0x06,0x23,0x28,0x00,0x02,0x00,0x4C,0x66,0x40,0x00,0x00,0x00,0x00,0x00,
0x03,0x20,0x06,0x00,0x00,0x00,0x00,0x00,0x4B,0x07,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x01,0x00,0x00,0x2C,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xEE,0x44,
};
u8 const par6[] = {
//GPS-Time
0xB5,0x62,0x06,0x31,0x20,0x00,0x00,0x01,0x00,0x00,
0x32,0x00,0x00,0x00,0x40,0x42,0x0F,0x00,0x40,0x42,
0x0F,0x00,0x00,0x00,0x00,0x00,0xA0,0x86,0x01,0x00,
0x00,0x00,0x00,0x00,0xF7,0x00,0x00,0x00,0xCA,0xB6,
};
u8 const par7[] = {
//打开UPD
0xB5,0x62,0x06,0x01,0x08,0x00,0x09,0x14,0x01,0x00,0x00,0x00,0x00,0x00,0x2D,0x7D,
};
u8 const par_back_AOP[] = {
//上电30S发第一次，每间隔30S发1次，共发10次后，发完10次后每隔5分钟发一次，一直发下去
//备份AOP
0xB5,0x62,0x09,0x14,0x04,0x00,0x00,0x00,0x00,0x00,0x21,0xEC,
};
void main()
{
    char i;
	POWER_INITIAL();				    //系统初始化
    DelayS(1);
    DelayMs(500);
    I2C_SendString(0x84,par1,sizeof(par1));
	DelayMs(100);
    I2C_SendString(0x84,par2,sizeof(par2));
    DelayMs(100);
    I2C_SendString(0x84,par3,sizeof(par3));
    DelayMs(100);
    I2C_SendString(0x84,par4,sizeof(par4));
    DelayMs(100);
    I2C_SendString(0x84,par5,sizeof(par5));
    DelayMs(100);
    I2C_SendString(0x84,par6,sizeof(par6));
    DelayMs(100);
    I2C_SendString(0x84,par7,sizeof(par7));
    //DelayS(20);
    //uartInit();
    
    DelayS(30);
    for(i = 0;i < 10;i++) {
    	I2C_SendString(0x84,par_back_AOP,sizeof(par_back_AOP));
        DelayS(30);
    }
    while(1){
    	I2C_SendString(0x84,par_back_AOP,sizeof(par_back_AOP));
        DelayM(5);
    }
    //DelayS(1);
    SDA_IN;
    SCL_IN;
	while(1)
	{
    	NOP();

	}
}




	