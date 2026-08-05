.class public Lcom/rfid/trans/MessageTran;
.super Ljava/lang/Object;
.source "MessageTran.java"


# instance fields
.field private connected:Z

.field private mInStream:Ljava/io/InputStream;

.field private mOutStream:Ljava/io/OutputStream;

.field private mSerialPort:Lcom/rfid/serialport/SerialPort;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/rfid/trans/MessageTran;->mInStream:Ljava/io/InputStream;

    .line 12
    iput-object v0, p0, Lcom/rfid/trans/MessageTran;->mOutStream:Ljava/io/OutputStream;

    .line 13
    iput-object v0, p0, Lcom/rfid/trans/MessageTran;->mSerialPort:Lcom/rfid/serialport/SerialPort;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/rfid/trans/MessageTran;->connected:Z

    return-void
.end method

.method private charToByte(C)B
    .locals 1

    const-string v0, "0123456789ABCDEF"

    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method


# virtual methods
.method public Read()[B
    .locals 5

    .line 76
    iget-boolean v0, p0, Lcom/rfid/trans/MessageTran;->connected:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x100

    :try_start_0
    new-array v0, v0, [B

    .line 79
    iget-object v2, p0, Lcom/rfid/trans/MessageTran;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    .line 82
    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 83
    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    return-object v1
.end method

.method public Write([B)I
    .locals 4

    .line 95
    iget-boolean v0, p0, Lcom/rfid/trans/MessageTran;->connected:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 96
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, 0x1

    if-eq v0, v3, :cond_1

    return v1

    .line 101
    :cond_1
    :try_start_0
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [B

    .line 102
    invoke-static {p1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget-object p1, p0, Lcom/rfid/trans/MessageTran;->mOutStream:Ljava/io/OutputStream;

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return v1
.end method

.method public bytesToHexString([BII)Ljava/lang/String;
    .locals 5

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 115
    :try_start_0
    array-length v2, p1

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-ge p2, p3, :cond_2

    .line 119
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    .line 120
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_3
    :goto_1
    return-object v1
.end method

.method public close()I
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/rfid/trans/MessageTran;->mSerialPort:Lcom/rfid/serialport/SerialPort;

    if-eqz v0, :cond_2

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/rfid/trans/MessageTran;->mInStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 54
    iput-object v1, p0, Lcom/rfid/trans/MessageTran;->mInStream:Ljava/io/InputStream;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/rfid/trans/MessageTran;->mOutStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 59
    iput-object v1, p0, Lcom/rfid/trans/MessageTran;->mOutStream:Ljava/io/OutputStream;

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/rfid/trans/MessageTran;->mSerialPort:Lcom/rfid/serialport/SerialPort;

    invoke-virtual {v0}, Lcom/rfid/serialport/SerialPort;->close()V

    .line 62
    iput-object v1, p0, Lcom/rfid/trans/MessageTran;->mSerialPort:Lcom/rfid/serialport/SerialPort;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/rfid/trans/MessageTran;->connected:Z

    return v0
.end method

.method public hexStringToBytes(Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    const-string v1, ""

    .line 133
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 139
    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    mul-int/lit8 v4, v3, 0x2

    .line 142
    aget-char v5, p1, v4

    invoke-direct {p0, v5}, Lcom/rfid/trans/MessageTran;->charToByte(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v4, v4, 0x1

    aget-char v4, p1, v4

    invoke-direct {p0, v4}, Lcom/rfid/trans/MessageTran;->charToByte(C)B

    move-result v4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    :cond_2
    :goto_1
    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/rfid/trans/MessageTran;->connected:Z

    return v0
.end method

.method public open(Ljava/lang/String;I)I
    .locals 3

    const/4 v0, 0x0

    .line 23
    :try_start_0
    new-instance v1, Lcom/rfid/serialport/SerialPort;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, p2, v0}, Lcom/rfid/serialport/SerialPort;-><init>(Ljava/io/File;II)V

    iput-object v1, p0, Lcom/rfid/trans/MessageTran;->mSerialPort:Lcom/rfid/serialport/SerialPort;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 32
    :goto_0
    iget-object p1, p0, Lcom/rfid/trans/MessageTran;->mSerialPort:Lcom/rfid/serialport/SerialPort;

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/rfid/serialport/SerialPort;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/rfid/trans/MessageTran;->mInStream:Ljava/io/InputStream;

    .line 35
    iget-object p1, p0, Lcom/rfid/trans/MessageTran;->mSerialPort:Lcom/rfid/serialport/SerialPort;

    invoke-virtual {p1}, Lcom/rfid/serialport/SerialPort;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/rfid/trans/MessageTran;->mOutStream:Ljava/io/OutputStream;

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/rfid/trans/MessageTran;->connected:Z

    return v0

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
