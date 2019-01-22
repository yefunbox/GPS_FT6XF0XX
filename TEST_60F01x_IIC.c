//********************************************************* 
/*  �ļ�����TEST_60F01x_IIC.c
*	���ܣ�  FT60F01x_IIC������ʾ
*   IC:    FT60F011A SOP8 
*   ����  16M/4T                    
*   ˵����  ����ʾ����λ60F01x_IIC����ʾ����.
*		   �ó����ȡ(24C02)0x12��ַ��ֵ,ȡ�������0x13��ַ 
*
*                  FT60F011A  SOP8 
*                 ----------------
*  VDD-----------|1(VDD)    (GND)8|------------GND     
*  IIC_SDA-------|2(PA2)    (PA4)7|--------IIC_SCL 
*  NC------------|3(PA1)    (PA5)6|-------------NC
*  NC------------|4(PA3)    (PA0)5|-------------NC
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
//***********************�궨��*****************************
#define  unchar     unsigned char 
#define  unint      unsigned int
#define  unlong     unsigned long

#define  IIC_SCL		RA4   
#define  IIC_SDA		RA2

#define SDA_OUT  TRISA2 =0
#define SDA_IN	 TRISA2 =1
#define SCL_IN	 TRISA4 =1

//unchar IICReadData;

 /*-------------------------------------------------
 *  ��������POWER_INITIAL
 *	���ܣ�  �ϵ�ϵͳ��ʼ��
 *  ���룺  ��
 *  �����  ��
 --------------------------------------------------*/	
void POWER_INITIAL (void) 
{
	OSCCON = WDT_32K|OSC_16M|0X01;	//INROSC
  //OSCCON = 0B01110001;			//WDT 32KHZ IRCF=111=16MHZ/4=4MHZ,0.25US/T
					 				//Bit0=1,ϵͳʱ��Ϊ�ڲ�����(60F01x����λ)
					 				//Bit0=0,ʱ��Դ��FOSC<2��0>����������ѡ��ʱѡ��(60F01x����λ)
	INTCON = 0;  					//�ݽ�ֹ�����ж�
	PORTA = 0B00000000;				
	TRISA = 0B11101011;				//PA������� 0-��� 1-����    
	WPUA = 0B00000000;     			//PA�˿��������� 1-������ 0-������
  //WPUA2 = 0;					    //��PA2����
  
	OPTION = 0B00001000;			//Bit3=1 WDT MODE,PS=000=1:1 WDT RATE
					 				//Bit7(PAPU)=0 ENABLED PULL UP PA
	MSCKCON = 0B00000000;	        //Bit6->0,��ֹPA4, PC5��ѹ���(60F01x����λ)
					  			    //Bit5->0,TIMER2ʱ��ΪFosc(60F01x����λ)
					  			    //Bit4->0,��ֹLVR(60F01x O��֮ǰ)
                                    //Bit4->0, LVRENʹ��ʱ,����LVR(60F01x O�漰O���)  
	                                //Bit4->1, LVRENʹ��ʱ,����ʱ����LVR, ˯��ʱ�Զ��ر�LVR(60F01x O�漰O��֮��)  
}
/*-------------------------------------------------
 *  �������ƣ�DelayUs
 *  ���ܣ�   ����ʱ���� --16M-4T--��ſ�1%����.
 *  ���������Time ��ʱʱ�䳤�� ��ʱʱ��Time*2 Us
 * 	���ز������� 
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
 * 	�������ƣ�DelayMs
 * 	���ܣ�   ����ʱ����
 * 	���������Time ��ʱʱ�䳤�� ��ʱʱ��Time ms
 * 	���ز������� 
 -------------------------------------------------*/
void DelayMs(unsigned char Time)
{
	unsigned char a,b;
	for(a=0;a<Time;a++)
	{
		for(b=0;b<5;b++)
		{
		 	DelayUs(98);    //��1%
		}
	}
}
/*------------------------------------------------- 
 * 	�������ƣ�DelayS
 * 	���ܣ�   ����ʱ����
 * 	���������Time ��ʱʱ�䳤�� ��ʱʱ��Time S
 * 	���ز������� 
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
//��ʱ����
void DelayM(unsigned char Time)
{
	unsigned char a;
	for(a=0;a<Time;a++)
	{
		DelayS(60); 
	}
}
/*-------------------------------------------------
 *  ��������IIC_Start
 *	���ܣ�  ����IIC��ʼ�ź�
 *  ���룺  ��
 *  �����  ��
 --------------------------------------------------*/
void IIC_Start(void)
{
	SDA_OUT;          //SDA�����
	IIC_SDA=1;	  	  
	IIC_SCL=1;
	DelayUs(10);
 	IIC_SDA=0;        //START:when CLK is high,DATA change form high to low 
	DelayUs(10);
	IIC_SCL=0;        //ǯסI2C���ߣ�׼�����ͻ�������� 
    DelayUs(10);
}	  
/*-------------------------------------------------
 *  ��������IIC_Stop
 *	���ܣ�  ����IICֹͣ�ź�
 *  ���룺  ��
 *  �����  ��
 --------------------------------------------------*/
 void IIC_Stop(void)
{
	SDA_OUT;          //SDA�����
	IIC_SCL=0;
	IIC_SDA=0;        //STOP:when CLK is high DATA change form low to high
 	DelayUs(10);
	IIC_SCL=1; 
    DelayUs(10);
	IIC_SDA=1;        //����I2C���߽����ź�
	DelayUs(10);							   	
}
/*-------------------------------------------------
 *  ��������IIC_Wait_Ack
 *	���ܣ�  �ȴ�Ӧ���źŵ���
 *  ���룺  ��
 *  �����  ����ֵ��1������Ӧ��ʧ��
 *               0������Ӧ��ɹ�
 --------------------------------------------------*/
unsigned char IIC_Wait_Ack(void)
{
	unsigned char ucErrTime=0;      
	SDA_IN;               //SDA����Ϊ����  
	IIC_SDA=1;
	DelayUs(5);	   
	IIC_SCL=1;
	DelayUs(5);	 
	while(IIC_SDA)
	{
		ucErrTime++;
		if(ucErrTime>250) //�ȴ���ʱ
		{
			IIC_Stop();
			return 1;
		}
	}
	IIC_SCL=0;            //ʱ�����0 	   
	return 0;  
} 
/*-------------------------------------------------
 *  ��������IIC_Ack
 *	���ܣ�  ����ACKӦ��
 *  ���룺  ��
 *  �����  ��
 --------------------------------------------------*/
void IIC_Ack(void)
{
	IIC_SCL=0;
	SDA_OUT;              //SDA�����
	IIC_SDA=0;
	DelayUs(5);	
	IIC_SCL=1;
	DelayUs(5);	
	IIC_SCL=0;
}
/*-------------------------------------------------
 *  ��������IIC_NAck
 *	���ܣ�  ������ACKӦ��
 *  ���룺  ��
 *  �����  ��
 --------------------------------------------------*/	    
void IIC_NAck(void)
{
	IIC_SCL=0;
	SDA_OUT;              //SDA�����
	IIC_SDA=1;
	DelayUs(5);	
	IIC_SCL=1;
	DelayUs(5);	
	IIC_SCL=0;
}					 				     
/*-------------------------------------------------
 *  ��������IIC_Send_Byte
 *	���ܣ�  IIC����һ���ֽ�
 *  ���룺  д��Ҫ���͵�һ�����ֽ�����txd
 *  �����  ��
 --------------------------------------------------*/		  
void IIC_Send_Byte(unsigned char txd)
{                        
    unsigned char t;   
	SDA_OUT;	          //SDA�����   
    IIC_SCL=0;            //����ʱ�ӿ�ʼ���ݴ���
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
 *  ��������IIC_Read_Byte
 *	���ܣ�  IIC��һ���ֽ�
 *  ���룺  ��
 *  �����  �����洢����������ݲ�����receive
 --------------------------------------------------*/
 unsigned char IIC_Read_Byte(void)
{
	unsigned char i,receive=0;
	SDA_IN;               //SDA����Ϊ����
    for(i=0;i<8;i++ )
	{
        IIC_SCL=0; 
        DelayUs(5);	
     	IIC_SCL=1;
        receive<<=1;
        if(IIC_SDA)receive++;   
		DelayUs(5);	
    }					 
    IIC_NAck();           //����nACK
  
    return receive;
}
/*-------------------------------------------------
 *  ��������IIC_READ
 *	���ܣ�  IIC�����ƶ�λ�õ�����
 *  ���룺  address
 *  �����  ����address�洢�����������iicdata
 --------------------------------------------------*/
 unsigned char IIC_READ(unsigned char address)
	{
	unsigned char iicdata = 0;
	IIC_READ_Begin:
		IIC_Start();
		IIC_Send_Byte(0xa0);
		if(IIC_Wait_Ack())goto IIC_READ_Begin;
		IIC_Send_Byte(address);				    //��Ҫ�������ݵ�ַ
		if(IIC_Wait_Ack())goto IIC_READ_Begin; 
		IIC_Start();
		IIC_Send_Byte(0xa1);
		if(IIC_Wait_Ack())goto IIC_READ_Begin;
		iicdata=IIC_Read_Byte();
		IIC_Stop();		
		return iicdata;
	}
 /*-------------------------------------------------
 *  ��������IIC_WRITE
 *	���ܣ�  IIC������dataд���ƶ���λ��address
 *  ���룺  address��data
 *  �����  ��
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

unsigned char const par1[] = { 
    //�ϵ��һ��
    0xB5,0x62,0x06,0x41,0x0C,0x00,0x00,0x00,0x03,0x1F,0x78,0xB7,0x58,0xB7,0xFF,0x76,0xCF,0xFF,0xF6,0x6B,
};
unsigned char const par2[] = { 
    //GPS
	0xB5,0x62,0x06,0x3E,0x3C,0x00,0x00,0x00,0x20,0x07,0x00,
	0x08,0x10,0x00,0x01,0x00,0x01,0x01,0x01,0x01,0x03,0x00,
	0x00,0x00,0x01,0x01,0x02,0x04,0x08,0x00,0x00,0x00,0x01,
	0x01,0x03,0x08,0x10,0x00,0x00,0x00,0x01,0x01,0x04,0x00,
	0x08,0x00,0x00,0x00,0x01,0x01,0x05,0x00,0x03,0x00,0x01,
	0x00,0x01,0x01,0x06,0x08,0x0E,0x00,0x00,0x00,0x01,0x01,
	0x2D,0x59,
};
unsigned char const par3[] = {
    //NAV-5-2G
	0xB5,0x62,0x06,0x24,0x24,0x00,0xFF,0xFF,0x00,0x03,0x00,0x00,0x00,0x00,0x10,0x27,
	0x00,0x00,0x00,0x00,0x5E,0x01,0x5E,0x01,0x90,0x01,0x5E,0x01,0x64,0x3C,0x00,0x00,
	0x00,0x00,0x0A,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xDE,0x45,
};
unsigned char const par4[] = {
    //AOP
	0xB5,0x62,0x06,0x23,0x28,0x00,0x02,0x00,0x4C,0x66,0x40,0x00,0x00,0x00,0x00,0x00,
	0x03,0x20,0x06,0x00,0x00,0x00,0x00,0x00,0x4B,0x07,0x00,0x00,0x00,0x00,0x00,0x00,
	0x00,0x01,0x00,0x00,0x2C,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xEE,0x44,
};
unsigned char const par5[] = {
    //GPS-Time
	0xB5,0x62,0x06,0x31,0x20,0x00,0x00,0x01,0x00,0x00,
	0x32,0x00,0x00,0x00,0x40,0x42,0x0F,0x00,0x40,0x42,
	0x0F,0x00,0x00,0x00,0x00,0x00,0xA0,0x86,0x01,0x00,
	0x00,0x00,0x00,0x00,0xF7,0x00,0x00,0x00,0xCA,0xB6,
};
unsigned char const par6[] = {
    //����AOP
	0xB5,0x62,0x09,0x14,0x04,0x00,0x00,0x00,0x00,0x00,0x21,0xEC,
    //�ϵ�ÿ10S��һ�Σ���30�κ�ÿ5���ӷ�һ��
};
unsigned char I2C_SendString(unsigned char chip_addr, unsigned char const *buffer,int Number)
{
    unsigned char i;
    IIC_Start();
    IIC_Send_Byte(chip_addr);   //����������ַ0XA0,д����

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
/*-------------------------------------------------
 *  ������: main 
 *	���ܣ�  ������
 *  ���룺  ��
 *  �����  ��
 --------------------------------------------------*/
void main()
{
    char i;
	POWER_INITIAL();				    //ϵͳ��ʼ��
    DelayS(1);
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
    for(i = 0;i < 30;i++) {
    	I2C_SendString(0x84,par6,sizeof(par6));
        DelayS(10);
    }
    while(1){
    	I2C_SendString(0x84,par6,sizeof(par6));
        DelayM(5);
    }
    DelayS(1);
    SDA_IN;
    SCL_IN;
	while(1)
	{
    	NOP();

	}
}
	