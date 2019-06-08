#ifndef CAMERAIP_H
#define CAMERAIP_H


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"
#include "xil_io.h"

#define CAMERAIP_S00_AXI_SLV_REG0_OFFSET 0
#define CAMERAIP_S00_AXI_SLV_REG1_OFFSET 4
#define CAMERAIP_S00_AXI_SLV_REG2_OFFSET 8
#define CAMERAIP_S00_AXI_SLV_REG3_OFFSET 12

#define OV7670_REG_GAIN	 	 	 	 	 (0x00)
#define OV7670_REG_BLUE	 	 	 	 	 (0x01)
#define OV7670_REG_RED	 	 	 	 	 (0x02)
#define OV7670_REG_VREF	 	 	 	 	 (0x03)
#define OV7670_REG_COM1	 	 	 	 	 (0x04)
#define OV7670_REG_BAVE	 	 	 	 	 (0x05)
#define OV7670_REG_GbAVE	 	 	 	 (0x06)
#define OV7670_REG_AECHH	 	 	 	 (0x07)
#define OV7670_REG_RAVE	 	 	 	 	 (0x08)
#define OV7670_REG_COM2	 	 	 	 	 (0x09)
#define OV7670_REG_PID	 	 	 	 	 (0x0A)
#define OV7670_REG_VER	 	 	 	 	 (0x0B)
#define OV7670_REG_COM3	 	 	 	 	 (0x0C)
#define OV7670_REG_COM4	 	 	 	 	 (0x0D)
#define OV7670_REG_COM5	 	 	 	 	 (0x0E)
#define OV7670_REG_COM6	 	 	 	 	 (0x0F)
#define OV7670_REG_AECHH	 	 	 	 (0x10)
#define OV7670_REG_CLKRC	 	 	 	 (0x11)
#define OV7670_REG_COM7	 	 	 	 	 (0x12)
#define OV7670_REG_COM8	 	 	 	 	 (0x13)
#define OV7670_REG_COM9	 	 	 	 	 (0x14)
#define OV7670_REG_COM10	 	 	 	 (0x15)
#define OV7670_REG_RSVD	 	 	 	 	 (0x16)
#define OV7670_REG_HSTART	 	 	 	 (0x17)
#define OV7670_REG_HSTOP	 	 	 	 (0x18)
#define OV7670_REG_VSTRT	 	 	 	 (0x19)
#define OV7670_REG_CSTOP	 	 	 	 (0x1A)
#define OV7670_REG_PSHFT	 	 	 	 (0x1B)
#define OV7670_REG_MIDH	 	 	 	 	 (0x1C)
#define OV7670_REG_MIDL	 	 	 	 	 (0x1D)
#define OV7670_REG_MVFP	 	 	 	 	 (0x1E)
#define OV7670_REG_LAEC	 	 	 	 	 (0x1F)
#define OV7670_REG_ADCCT0	 	 	 	 (0x20)
#define OV7670_REG_ADCCT1	 	 	 	 (0x21)
#define OV7670_REG_ADCCT2	 	 	 	 (0x22)
#define OV7670_REG_ADCCT3	 	 	 	 (0x23)
#define OV7670_REG_AEW	 	 	 	 	 (0x24)
#define OV7670_REG_AEB	 	 	 	 	 (0x25)
#define OV7670_REG_VPT	 	 	 	 	 (0x26)
#define OV7670_REG_BBIAS	 	 	 	 (0x27)
#define OV7670_REG_GbBIAS	 	 	 	 (0x28)
#define OV7670_REG_RSVD	 	 	 	 	 (0x29)
#define OV7670_REG_EXHCH	 	 	 	 (0x2A)
#define OV7670_REG_EXCHL	 	 	 	 (0x2B)
#define OV7670_REG_RBIAS	 	 	 	 (0x2C)
#define OV7670_REG_ADVFL	 	 	 	 (0x2D)
#define OV7670_REG_ADVFH	 	 	 	 (0x2E)
#define OV7670_REG_YAVE	 	 	 	 	 (0x2F)
#define OV7670_REG_HSYST	 	 	 	 (0x30)
#define OV7670_REG_SSYEN	 	 	 	 (0x31)
#define OV7670_REG_HREF	 	 	 	 	 (0x32)
#define OV7670_REG_CHLF	 	 	 	 	 (0x33)
#define OV7670_REG_ARBLM	 	 	 	 (0x34)
#define OV7670_REG_RSVD	 	 	 	 	 (0x35)
#define OV7670_REG_RSVD	 	 	 	 	 (0x36)
#define OV7670_REG_ADC	 	 	 	 	 (0x37)
#define OV7670_REG_ACOM	 	 	 	 	 (0x38)
#define OV7670_REG_OFON	 	 	 	 	 (0x39)
#define OV7670_REG_TSLB	 	 	 	 	 (0x3A)
#define OV7670_REG_COM11	 	 	 	 (0x3B)
#define OV7670_REG_COM12	 	 	 	 (0x3C)
#define OV7670_REG_COM13	 	 	 	 (0x3D)
#define OV7670_REG_COM14	 	 	 	 (0x3E)
#define OV7670_REG_EDGE	 	 	 	 	 (0x3F)
#define OV7670_REG_COM15	 	 	 	 (0x40)
#define OV7670_REG_COM16	 	 	 	 (0x41)
#define OV7670_REG_COM17	 	 	 	 (0x42)
#define OV7670_REG_AWBC1	 	 	 	 (0x43)
#define OV7670_REG_AWBC2	 	 	 	 (0x44)
#define OV7670_REG_AWBC3	 	 	 	 (0x45)
#define OV7670_REG_AWBC4	 	 	 	 (0x46)
#define OV7670_REG_AWBC5	 	 	 	 (0x47)
#define OV7670_REG_AWBC6	 	 	 	 (0x48)
#define OV7670_REG_RSVD	 	 	 	 	 (0x49)
#define OV7670_REG_RSVD	 	 	 	 	 (0x4A)
#define OV7670_REG_REG48	 	 	 	 (0x4B)
#define OV7670_REG_DNSTH	 	 	 	 (0x4C)
#define OV7670_REG_RSVD	 	 	 	 	 (0x4D)
#define OV7670_REG_RSVD	 	 	 	 	 (0x4E)
#define OV7670_REG_MTX1	 	 	 	 	 (0x4F)
#define OV7670_REG_MTX2	 	 	 	 	 (0x50)
#define OV7670_REG_MTX3	 	 	 	 	 (0x51)
#define OV7670_REG_MTX4	 	 	 	 	 (0x52)
#define OV7670_REG_MTX5	 	 	 	 	 (0x53)
#define OV7670_REG_MTX6	 	 	 	 	 (0x54)
#define OV7670_REG_BRIGHT	 	 	 	 (0x55)
#define OV7670_REG_CONTRAS	 	 	 	 (0x56)
#define OV7670_REG_CONTRAS_CENTER	 	 (0x57)
#define OV7670_REG_MTXS	 	 	 	 	 (0x58)
#define OV7670_REG_RSD	 	 	 	 	 (0x59)
#define OV7670_REG_RSVD	 	 	 	 	 (0x5A)
#define OV7670_REG_RSVD	 	 	 	 	 (0x5B)
#define OV7670_REG_RSVD	 	 	 	 	 (0x5C)
#define OV7670_REG_RSVD	 	 	 	 	 (0x5D)
#define OV7670_REG_RSVD	 	 	 	 	 (0x5E)
#define OV7670_REG_RSVD	 	 	 	 	 (0x5F)
#define OV7670_REG_RSVD	 	 	 	 	 (0x60)
#define OV7670_REG_RSVD	 	 	 	 	 (0x61)
#define OV7670_REG_LCC1	 	 	 	 	 (0x62)
#define OV7670_REG_LCC2	 	 	 	 	 (0x63)
#define OV7670_REG_LCC3	 	 	 	 	 (0x64)
#define OV7670_REG_LCC4	 	 	 	 	 (0x65)
#define OV7670_REG_LCC5	 	 	 	 	 (0x66)
#define OV7670_REG_MANU	 	 	 	 	 (0x67)
#define OV7670_REG_MANV	 	 	 	 	 (0x68)
#define OV7670_REG_GFIX	 	 	 	 	 (0x69)
#define OV7670_REG_GGAIN	 	 	 	 (0x6A)
#define OV7670_REG_DBLV	 	 	 	 	 (0x6B)
#define OV7670_REG_AWBCTR3	 	 	 	 (0x6C)
#define OV7670_REG_AWBCTR2	 	 	 	 (0x6D)
#define OV7670_REG_AWBCTR1	 	 	 	 (0x6E)
#define OV7670_REG_AWBCTR0	 	 	 	 (0x6F)
#define OV7670_REG_SCALING_XSC	 	 	 (0x70)
#define OV7670_REG_SCALING_YSC	 	 	 (0x71)
#define OV7670_REG_SCALING_DCWCTR	 	 (0x72)
#define OV7670_REG_SCALING_PCLK_DIV	 	 (0x73)
#define OV7670_REG_REG74	 	 	 	 (0x74)
#define OV7670_REG_REG75	 	 	 	 (0x75)
#define OV7670_REG_REG76	 	 	 	 (0x76)
#define OV7670_REG_REG77	 	 	 	 (0x77)
#define OV7670_REG_RSVD	 	 	 	 	 (0x78)
#define OV7670_REG_RSVD	 	 	 	 	 (0x79)
#define OV7670_REG_GAM1	 	 	 	 	 (0x7A)
#define OV7670_REG_GAM2	 	 	 	 	 (0x7B)
#define OV7670_REG_GAM3	 	 	 	 	 (0x7C)
#define OV7670_REG_GAM4	 	 	 	 	 (0x7D)
#define OV7670_REG_GAM5	 	 	 	 	 (0x7E)
#define OV7670_REG_GAM6	 	 	 	 	 (0x7F)
#define OV7670_REG_GAM7	 	 	 	 	 (0x80)
#define OV7670_REG_-	 	 	 	 	 (0x81)
#define OV7670_REG_-	 	 	 	 	 (0x82)
#define OV7670_REG_-	 	 	 	 	 (0x83)
#define OV7670_REG_-	 	 	 	 	 (0x84)
#define OV7670_REG_-	 	 	 	 	 (0x85)
#define OV7670_REG_-	 	 	 	 	 (0x86)
#define OV7670_REG_-	 	 	 	 	 (0x87)
#define OV7670_REG_-	 	 	 	 	 (0x88)
#define OV7670_REG_GAM8	 	 	 	 	 (0x89)
#define OV7670_REG_RSVD	 	 	 	 	 (0x8A)
#define OV7670_REG_RSVD	 	 	 	 	 (0x8B)
#define OV7670_REG_RSVD	 	 	 	 	 (0x8C)
#define OV7670_REG_RSVD	 	 	 	 	 (0x8D)
#define OV7670_REG_RSVD	 	 	 	 	 (0x8E)
#define OV7670_REG_RSVD	 	 	 	 	 (0x8F)
#define OV7670_REG_RSVD	 	 	 	 	 (0x90)
#define OV7670_REG_RSVD	 	 	 	 	 (0x91)
#define OV7670_REG_DM_LNL	 	 	 	 (0x92)
#define OV7670_REG_DM_LNH	 	 	 	 (0x93)
#define OV7670_REG_LCC6	 	 	 	 	 (0x94)
#define OV7670_REG_LCC7	 	 	 	 	 (0x95)
#define OV7670_REG_	 	 	 	 	 	 (0x96)
#define OV7670_REG_	 	 	 	 	 	 (0x97)
#define OV7670_REG_	 	 	 	 	 	 (0x98)
#define OV7670_REG_	 	 	 	 	 	 (0x99)
#define OV7670_REG_	 	 	 	 	 	 (0x9A)
#define OV7670_REG_	 	 	 	 	 	 (0x9B)
#define OV7670_REG_	 	 	 	 	 	 (0x9C)
#define OV7670_REG_BD50ST	 	 	 	 (0x9D)
#define OV7670_REG_BD60ST	 	 	 	 (0x9E)
#define OV7670_REG_AEC_CNTRL0	 	 	 (0x9F)
#define OV7670_REG_AEC_CNTRL1	 	 	 (0xA0)
#define OV7670_REG_AEC_CNTRL2	 	 	 (0xA1)
#define OV7670_REG_AEC_CNTRL3	 	 	 (0xA2)
#define OV7670_REG_AEC_CNTRL4	 	 	 (0xA3)
#define OV7670_REG_AEC_CNTRL5	 	 	 (0xA4)
#define OV7670_REG_AEC_CNTRL6	 	 	 (0xA5)
#define OV7670_REG_AEC_CNTRL7	 	 	 (0xA6)
#define OV7670_REG_AEC_CNTRL8	 	 	 (0xA7)
#define OV7670_REG_AEC_CNTRL9	 	 	 (0xA8)
#define OV7670_REG_AEC_CNTRL10	 	 	 (0xA9)
#define OV7670_REG_AEC_CNTRL11	 	 	 (0xAA)
#define OV7670_REG_AEC_CNTRL12	 	 	 (0xAB)
#define OV7670_REG_STR_OPT	 	 	 	 (0xAC)
#define OV7670_REG_STR_R	 	 	 	 (0xAD)
#define OV7670_REG_STR_G	 	 	 	 (0xAE)
#define OV7670_REG_STR_B	 	 	 	 (0xAF)
#define OV7670_REG_RSVD	 	 	 	 	 (0xB0)
#define OV7670_REG_RSVD	 	 	 	 	 (0xB1)
#define OV7670_REG_RSVD	 	 	 	 	 (0xB2)
#define OV7670_REG_THL_ST	 	 	 	 (0xB3)
#define OV7670_REG_RSVD	 	 	 	 	 (0xB4)
#define OV7670_REG_THL_DT	 	 	 	 (0xB5)
#define OV7670_REG_RSVD	 	 	 	 	 (0xB6)
#define OV7670_REG_RSVD	 	 	 	 	 (0xB7)
#define OV7670_REG_RSVD	 	 	 	 	 (0xB8)
#define OV7670_REG_RSVD	 	 	 	 	 (0xB9)
#define OV7670_REG_RSVD	 	 	 	 	 (0xBA)
#define OV7670_REG_RSVD	 	 	 	 	 (0xBB)
#define OV7670_REG_RSVD	 	 	 	 	 (0xBC)
#define OV7670_REG_RSVD	 	 	 	 	 (0xBD)
#define OV7670_REG_AD_CHB	 	 	 	 (0xBE)
#define OV7670_REG_AD_CHR	 	 	 	 (0xBF)
#define OV7670_REG_AD_CHGB	 	 	 	 (0xC0)
#define OV7670_REG_AD_CHGR	 	 	 	 (0xC1)
#define OV7670_REG_RSVD	 	 	 	 	 (0xC2)
#define OV7670_REG_RSVD	 	 	 	 	 (0xC3)
#define OV7670_REG_RSVD	 	 	 	 	 (0xC4)
#define OV7670_REG_RSVD	 	 	 	 	 (0xC5)
#define OV7670_REG_RSVD	 	 	 	 	 (0xC6)
#define OV7670_REG_RSVD	 	 	 	 	 (0xC7)
#define OV7670_REG_RSVD	 	 	 	 	 (0xC8)
#define OV7670_REG_SATCTR	 	 	 	 (0xC9)

/**************************** Type Definitions *****************************/
/**
 *
 * Write a value to a CAMERAIP register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the CAMERAIPdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void CAMERAIP_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define CAMERAIP_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a CAMERAIP register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the CAMERAIP device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 CAMERAIP_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define CAMERAIP_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/************************** Function Prototypes ****************************/
/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the CAMERAIP instance to be worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
XStatus CAMERAIP_Reg_SelfTest(u32 baseaddr_p);

int OV7670_initialize(u32 BaseAddress);

void OV7670_setup(u16 writeData);

#endif // CAMERAIP_H
