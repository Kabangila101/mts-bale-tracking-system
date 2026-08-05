.class public interface abstract Lcom/rfid/trans/CReader;
.super Ljava/lang/Object;
.source "CReader.java"


# virtual methods
.method public abstract BlockErase_G2(B[BBBB[B[B)I
.end method

.method public abstract BlockWrite_G2(BB[BBB[B[B[B)I
.end method

.method public abstract Connect(Ljava/lang/String;II)I
.end method

.method public abstract DisConnect()I
.end method

.method public abstract FST_ShowImage(B[B)I
.end method

.method public abstract FST_TranImage(B[B[B)I
.end method

.method public abstract Fd_ExtReadMemory(Ljava/lang/String;IILjava/lang/String;BLjava/lang/String;[B[I)I
.end method

.method public abstract Fd_GetTemperature(Ljava/lang/String;BBBBBLjava/lang/String;[B)I
.end method

.method public abstract Fd_InitRegfile(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract Fd_OP_Mode_Chk(Ljava/lang/String;BLjava/lang/String;[B)I
.end method

.method public abstract Fd_ReadMemory(Ljava/lang/String;IBLjava/lang/String;BLjava/lang/String;[B)I
.end method

.method public abstract Fd_ReadReg(Ljava/lang/String;ILjava/lang/String;[B)I
.end method

.method public abstract Fd_StartLogging(Ljava/lang/String;IILjava/lang/String;)I
.end method

.method public abstract Fd_StopLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract Fd_WriteMemory(Ljava/lang/String;I[BLjava/lang/String;BLjava/lang/String;)I
.end method

.method public abstract Fd_WriteReg(Ljava/lang/String;I[BLjava/lang/String;)I
.end method

.method public abstract GetDRM([B)I
.end method

.method public abstract GetDeviceID()Ljava/lang/String;
.end method

.method public abstract GetGPIOStatus([B)I
.end method

.method public abstract GetInventoryPatameter()Lcom/rfid/trans/ReaderParameter;
.end method

.method public abstract GetProfile([B)I
.end method

.method public abstract GetRFIDTempreture()Ljava/lang/String;
.end method

.method public abstract GetReaderInformation([B[B[B[B[B)I
.end method

.method public abstract GetRetryTimes([B)I
.end method

.method public abstract GetWritePower([B)I
.end method

.method public abstract InventoryOnce(BBBBBBBLjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BBBBBBB",
            "Ljava/util/List<",
            "Lcom/rfid/trans/ReadTag;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract Kill_G2(B[B[B[B)I
.end method

.method public abstract LedOn_kx2005x(Ljava/lang/String;Ljava/lang/String;B)I
.end method

.method public abstract Lock_G2(B[BBB[B[B)I
.end method

.method public abstract PowerControll(Landroid/content/Context;Z)V
.end method

.method public abstract ReadData_G2(B[BBIB[B[B[B)I
.end method

.method public abstract ReadData_G2(Ljava/lang/String;BIBLjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract ScanRfid()V
.end method

.method public abstract SetAddress(B)I
.end method

.method public abstract SetBaudRate(I)I
.end method

.method public abstract SetCallBack(Lcom/rfid/trans/TagCallback;)V
.end method

.method public abstract SetDRM(B)I
.end method

.method public abstract SetGPIO(B)I
.end method

.method public abstract SetInventoryPatameter(Lcom/rfid/trans/ReaderParameter;)V
.end method

.method public abstract SetMessageBack(Lcom/rfid/trans/RFIDLogCallBack;)V
.end method

.method public abstract SetProfile(B)I
.end method

.method public abstract SetRegion(BBB)I
.end method

.method public abstract SetRetryTimes(B)I
.end method

.method public abstract SetRfPower(B)I
.end method

.method public abstract SetSoundID(ILandroid/media/SoundPool;)V
.end method

.method public abstract SetWritePower(B)I
.end method

.method public abstract StartRead()I
.end method

.method public abstract StopRead()V
.end method

.method public abstract WriteData_G2(BB[BBI[B[B[B)I
.end method

.method public abstract WriteData_G2(Ljava/lang/String;Ljava/lang/String;BILjava/lang/String;)I
.end method

.method public abstract WriteEPC_G2(B[B[B[B)I
.end method

.method public abstract WriteEPC_G2(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract isConnect()Z
.end method
