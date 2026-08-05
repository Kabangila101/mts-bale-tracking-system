.class public Lcom/rfid/trans/BaseReader;
.super Ljava/lang/Object;
.source "BaseReader.java"


# instance fields
.field private callback:Lcom/rfid/trans/TagCallback;

.field private lastPacket:I

.field private logswitch:I

.field private maxScanTime:J

.field private msg:Lcom/rfid/trans/MessageTran;

.field private msgCallback:Lcom/rfid/trans/RFIDLogCallBack;

.field packIndex:I

.field private recvBuff:[B

.field private recvLength:[I

.field private volatile strEPC:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/rfid/trans/MessageTran;

    invoke-direct {v0}, Lcom/rfid/trans/MessageTran;-><init>()V

    iput-object v0, p0, Lcom/rfid/trans/BaseReader;->msg:Lcom/rfid/trans/MessageTran;

    const-wide/16 v0, 0x7d0

    .line 13
    iput-wide v0, p0, Lcom/rfid/trans/BaseReader;->maxScanTime:J

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 14
    iput-object v0, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v0, 0x4e20

    new-array v0, v0, [B

    .line 15
    iput-object v0, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/rfid/trans/BaseReader;->logswitch:I

    .line 790
    iput v0, p0, Lcom/rfid/trans/BaseReader;->lastPacket:I

    const-string v0, ""

    .line 791
    iput-object v0, p0, Lcom/rfid/trans/BaseReader;->strEPC:Ljava/lang/String;

    const/4 v0, -0x1

    .line 3042
    iput v0, p0, Lcom/rfid/trans/BaseReader;->packIndex:I

    return-void
.end method

.method private CheckCRC([BI)Z
    .locals 2

    const/16 v0, 0x100

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [B

    .line 50
    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    invoke-direct {p0, v0, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    add-int/lit8 p1, p2, 0x1

    .line 52
    aget-byte p1, v0, p1

    if-nez p1, :cond_0

    aget-byte p1, v0, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v1
.end method

.method private GetCMDData([B[III)I
    .locals 11

    const/16 v0, 0x7d0

    new-array v0, v0, [B

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    :cond_0
    const/4 v4, 0x0

    .line 155
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    int-to-long v7, p4

    cmp-long v9, v5, v7

    if-gez v9, :cond_7

    .line 157
    iget-object v5, p0, Lcom/rfid/trans/BaseReader;->msg:Lcom/rfid/trans/MessageTran;

    invoke-virtual {v5}, Lcom/rfid/trans/MessageTran;->Read()[B

    move-result-object v5

    if-eqz v5, :cond_1

    .line 160
    iget v6, p0, Lcom/rfid/trans/BaseReader;->logswitch:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    const-string v6, "Recv"

    .line 162
    array-length v8, v5

    invoke-virtual {p0, v5, v3, v8}, Lcom/rfid/trans/BaseReader;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v6, p0, Lcom/rfid/trans/BaseReader;->msgCallback:Lcom/rfid/trans/RFIDLogCallBack;

    if-eqz v6, :cond_2

    .line 164
    invoke-interface {v6, v5}, Lcom/rfid/trans/RFIDLogCallBack;->RecvMessageCallback([B)V

    .line 166
    :cond_2
    array-length v6, v5

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    add-int v8, v6, v4

    .line 168
    new-array v9, v8, [B

    .line 169
    invoke-static {v0, v3, v9, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    invoke-static {v5, v3, v9, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    :goto_1
    sub-int v5, v8, v4

    const/4 v6, 0x4

    if-le v5, v6, :cond_6

    .line 174
    aget-byte v10, v9, v4

    and-int/lit16 v10, v10, 0xff

    if-lt v10, v6, :cond_5

    add-int/lit8 v6, v4, 0x2

    aget-byte v6, v9, v6

    and-int/lit16 v6, v6, 0xff

    if-ne v6, p3, :cond_5

    .line 176
    aget-byte v6, v9, v4

    and-int/lit16 v6, v6, 0xff

    add-int v10, v4, v6

    add-int/2addr v10, v7

    if-ge v8, v10, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 178
    new-array v5, v6, [B

    .line 179
    invoke-static {v9, v4, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    invoke-direct {p0, v5, v6}, Lcom/rfid/trans/BaseReader;->CheckCRC([BI)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 182
    invoke-static {v5, v3, p1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    aput v6, p2, v3

    return v3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-le v8, v4, :cond_0

    .line 199
    invoke-static {v9, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    goto :goto_0

    :catch_0
    move-exception p1

    .line 208
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :cond_7
    const/16 p1, 0x30

    return p1
.end method

.method private GetInventoryData(BIILjava/util/List;[IZZ)I
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BII",
            "Ljava/util/List<",
            "Lcom/rfid/trans/ReadTag;",
            ">;[IZZ)I"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    const/4 v2, 0x0

    .line 270
    aput v2, p5, v2

    const/16 v3, 0x7d0

    new-array v3, v3, [B

    .line 275
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-wide v5, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v4, p1

    .line 280
    :cond_0
    :try_start_0
    iget-object v9, v1, Lcom/rfid/trans/BaseReader;->msg:Lcom/rfid/trans/MessageTran;

    invoke-virtual {v9}, Lcom/rfid/trans/MessageTran;->Read()[B

    move-result-object v9

    if-eqz v9, :cond_16

    .line 283
    iget v5, v1, Lcom/rfid/trans/BaseReader;->logswitch:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const-string v5, "Recv"

    .line 285
    array-length v10, v9

    invoke-virtual {v1, v9, v2, v10}, Lcom/rfid/trans/BaseReader;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v5, v1, Lcom/rfid/trans/BaseReader;->msgCallback:Lcom/rfid/trans/RFIDLogCallBack;

    if-eqz v5, :cond_1

    .line 287
    invoke-interface {v5, v9}, Lcom/rfid/trans/RFIDLogCallBack;->RecvMessageCallback([B)V

    .line 289
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 290
    array-length v5, v9

    if-nez v5, :cond_2

    move-wide v5, v10

    goto/16 :goto_9

    :cond_2
    add-int v12, v5, v7

    .line 292
    new-array v13, v12, [B

    .line 293
    invoke-static {v3, v2, v13, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    invoke-static {v9, v2, v13, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    :goto_0
    sub-int v7, v12, v5

    const/4 v9, 0x5

    if-le v7, v9, :cond_14

    and-int/lit16 v14, v4, 0xff

    const/16 v15, 0xff

    if-ne v14, v15, :cond_3

    const/4 v4, 0x0

    .line 299
    :cond_3
    aget-byte v14, v13, v5

    and-int/2addr v14, v15

    if-lt v14, v9, :cond_13

    add-int/lit8 v14, v5, 0x1

    aget-byte v9, v13, v14

    if-ne v9, v4, :cond_13

    add-int/lit8 v9, v5, 0x2

    aget-byte v9, v13, v9

    and-int/2addr v9, v15

    move/from16 v2, p2

    if-ne v9, v2, :cond_13

    .line 301
    aget-byte v9, v13, v5

    and-int/2addr v9, v15

    add-int v16, v5, v9

    add-int/lit8 v15, v16, 0x1

    if-ge v12, v15, :cond_4

    goto/16 :goto_7

    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 303
    new-array v7, v9, [B

    const/4 v15, 0x0

    .line 304
    invoke-static {v13, v5, v7, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    invoke-direct {v1, v7, v9}, Lcom/rfid/trans/BaseReader;->CheckCRC([BI)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 308
    aget-byte v9, v7, v15

    const/16 v14, 0xff

    and-int/2addr v9, v14

    add-int/2addr v9, v6

    add-int/2addr v5, v9

    const/4 v9, 0x3

    .line 310
    aget-byte v15, v7, v9

    and-int/2addr v15, v14

    const/4 v14, 0x2

    if-eq v15, v6, :cond_6

    if-eq v15, v14, :cond_6

    if-eq v15, v9, :cond_6

    const/4 v9, 0x4

    if-ne v15, v9, :cond_5

    goto :goto_1

    :cond_5
    return v15

    :cond_6
    :goto_1
    const/4 v9, 0x5

    .line 313
    aget-byte v9, v7, v9

    const/16 v14, 0xff

    and-int/2addr v9, v14

    if-lez v9, :cond_f

    const/4 v14, 0x0

    .line 316
    aget v16, p5, v14

    add-int/lit8 v16, v16, 0x1

    aput v16, p5, v14

    const/4 v14, 0x6

    move v14, v8

    const/4 v8, 0x0

    const/16 v16, 0x6

    :goto_2
    if-ge v8, v9, :cond_e

    if-eqz p6, :cond_7

    .line 320
    sput-boolean v6, Lcom/rfid/trans/ReaderHelp;->isSound:Z

    .line 321
    :cond_7
    aget-byte v6, v7, v16

    const/16 v2, 0xff

    and-int/2addr v6, v2

    and-int/lit8 v6, v6, 0x7f

    move/from16 v17, v4

    .line 322
    aget-byte v4, v7, v16

    and-int/2addr v4, v2

    shr-int/lit8 v2, v4, 0x7

    .line 323
    new-instance v4, Lcom/rfid/trans/ReadTag;

    invoke-direct {v4}, Lcom/rfid/trans/ReadTag;-><init>()V

    move/from16 v18, v5

    const/4 v5, 0x1

    .line 324
    iput v5, v4, Lcom/rfid/trans/ReadTag;->antId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    if-lez v6, :cond_a

    move/from16 v19, v9

    .line 327
    :try_start_1
    new-array v9, v6, [B

    move-wide/from16 v20, v10

    add-int/lit8 v10, v16, 0x1

    const/4 v11, 0x0

    .line 328
    invoke-static {v7, v10, v9, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v2, :cond_8

    .line 331
    invoke-virtual {v1, v9, v11, v6}, Lcom/rfid/trans/BaseReader;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/rfid/trans/ReadTag;->epcId:Ljava/lang/String;

    const/4 v2, 0x0

    .line 332
    iput-object v2, v4, Lcom/rfid/trans/ReadTag;->memId:Ljava/lang/String;

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    .line 336
    invoke-virtual {v1, v9, v2, v6}, Lcom/rfid/trans/BaseReader;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v9

    .line 337
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v10, 0x18

    if-ne v2, v10, :cond_9

    .line 339
    iput-object v5, v4, Lcom/rfid/trans/ReadTag;->epcId:Ljava/lang/String;

    .line 340
    iput-object v9, v4, Lcom/rfid/trans/ReadTag;->memId:Ljava/lang/String;

    goto :goto_3

    .line 344
    :cond_9
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v10

    const/4 v5, 0x0

    invoke-virtual {v9, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/rfid/trans/ReadTag;->epcId:Ljava/lang/String;

    .line 345
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v9, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/rfid/trans/ReadTag;->memId:Ljava/lang/String;

    goto :goto_3

    :cond_a
    move/from16 v19, v9

    move-wide/from16 v20, v10

    .line 352
    iput-object v5, v4, Lcom/rfid/trans/ReadTag;->epcId:Ljava/lang/String;

    const/4 v2, 0x0

    .line 353
    iput-object v2, v4, Lcom/rfid/trans/ReadTag;->memId:Ljava/lang/String;

    :goto_3
    add-int/lit8 v2, v16, 0x1

    add-int/2addr v2, v6

    .line 356
    aget-byte v2, v7, v2

    const/16 v5, 0xff

    and-int/2addr v2, v5

    iput v2, v4, Lcom/rfid/trans/ReadTag;->rssi:I

    const/4 v2, 0x0

    .line 357
    iput v2, v4, Lcom/rfid/trans/ReadTag;->phase:I

    .line 358
    iget-object v2, v1, Lcom/rfid/trans/BaseReader;->callback:Lcom/rfid/trans/TagCallback;

    if-eqz v2, :cond_b

    if-eqz p6, :cond_b

    if-nez v14, :cond_b

    .line 360
    invoke-interface {v2, v4}, Lcom/rfid/trans/TagCallback;->tagCallback(Lcom/rfid/trans/ReadTag;)V

    :cond_b
    if-eqz v0, :cond_c

    .line 363
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v16, v16, 0x2

    add-int v16, v16, v6

    if-eqz p7, :cond_d

    if-nez v14, :cond_d

    const/4 v2, -0x1

    .line 368
    invoke-virtual {v1, v2}, Lcom/rfid/trans/BaseReader;->StopInventory(B)V

    const/4 v14, 0x1

    :cond_d
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, p2

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v9, v19

    move-wide/from16 v10, v20

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_e
    move/from16 v17, v4

    move/from16 v18, v5

    move-wide/from16 v20, v10

    move v8, v14

    goto :goto_4

    :cond_f
    move/from16 v17, v4

    move/from16 v18, v5

    move-wide/from16 v20, v10

    :goto_4
    const/4 v2, 0x1

    if-eq v15, v2, :cond_11

    const/4 v4, 0x2

    if-ne v15, v4, :cond_10

    goto :goto_5

    :cond_10
    move/from16 v5, v18

    goto :goto_6

    :cond_11
    :goto_5
    const/4 v0, 0x0

    return v0

    :cond_12
    move/from16 v17, v4

    move-wide/from16 v20, v10

    const/4 v2, 0x1

    move v5, v14

    goto :goto_6

    :cond_13
    move/from16 v17, v4

    move-wide/from16 v20, v10

    const/4 v2, 0x1

    add-int/lit8 v5, v5, 0x1

    :goto_6
    move/from16 v4, v17

    move-wide/from16 v10, v20

    const/4 v2, 0x0

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_14
    :goto_7
    move-wide/from16 v20, v10

    if-le v12, v5, :cond_15

    const/4 v2, 0x0

    .line 398
    invoke-static {v13, v5, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8

    :cond_15
    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_8
    move-wide/from16 v5, v20

    goto :goto_9

    :cond_16
    const-wide/16 v9, 0x1

    .line 407
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 409
    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sub-long/2addr v9, v5

    const-wide/16 v11, 0x1388

    cmp-long v13, v9, v11

    if-ltz v13, :cond_0

    goto :goto_a

    :catch_0
    move-exception v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :goto_a
    const/16 v0, 0x30

    return v0
.end method

.method private GetInventoryMixData(BIILjava/util/List;[I)I
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BII",
            "Ljava/util/List<",
            "Lcom/rfid/trans/ReadTag;",
            ">;[I)I"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    const/4 v2, 0x0

    .line 794
    aput v2, p5, v2

    const/16 v3, 0x7d0

    new-array v4, v3, [B

    .line 799
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    .line 802
    :goto_0
    :try_start_0
    iget-object v8, v1, Lcom/rfid/trans/BaseReader;->msg:Lcom/rfid/trans/MessageTran;

    invoke-virtual {v8}, Lcom/rfid/trans/MessageTran;->Read()[B

    move-result-object v8

    const/4 v9, 0x2

    if-eqz v8, :cond_11

    .line 805
    iget v10, v1, Lcom/rfid/trans/BaseReader;->logswitch:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    const-string v10, "Recv"

    .line 807
    array-length v12, v8

    invoke-virtual {v1, v8, v2, v12}, Lcom/rfid/trans/BaseReader;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v10, v1, Lcom/rfid/trans/BaseReader;->msgCallback:Lcom/rfid/trans/RFIDLogCallBack;

    if-eqz v10, :cond_0

    .line 809
    invoke-interface {v10, v8}, Lcom/rfid/trans/RFIDLogCallBack;->RecvMessageCallback([B)V

    .line 811
    :cond_0
    array-length v10, v8

    if-nez v10, :cond_1

    goto/16 :goto_a

    :cond_1
    add-int v12, v10, v7

    .line 813
    new-array v13, v12, [B

    .line 814
    invoke-static {v4, v2, v13, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 815
    invoke-static {v8, v2, v13, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    :goto_1
    sub-int v8, v12, v7

    const/4 v10, 0x5

    if-le v8, v10, :cond_f

    .line 819
    aget-byte v14, v13, v7

    and-int/lit16 v14, v14, 0xff

    if-lt v14, v10, :cond_e

    add-int/lit8 v14, v7, 0x2

    aget-byte v14, v13, v14

    and-int/lit16 v14, v14, 0xff

    move/from16 v15, p2

    if-ne v14, v15, :cond_e

    .line 821
    aget-byte v14, v13, v7

    and-int/lit16 v14, v14, 0xff

    add-int v16, v7, v14

    add-int/lit8 v3, v16, 0x1

    if-ge v12, v3, :cond_2

    goto/16 :goto_9

    :cond_2
    add-int/lit8 v14, v14, 0x1

    .line 823
    new-array v3, v14, [B

    .line 824
    invoke-static {v13, v7, v3, v2, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 825
    invoke-direct {v1, v3, v14}, Lcom/rfid/trans/BaseReader;->CheckCRC([BI)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 827
    aget-byte v8, v3, v2

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v8, v11

    add-int/2addr v7, v8

    const/4 v8, 0x3

    .line 829
    aget-byte v14, v3, v8

    and-int/lit16 v14, v14, 0xff

    const/4 v2, 0x4

    if-eq v14, v11, :cond_4

    if-eq v14, v9, :cond_4

    if-eq v14, v8, :cond_4

    if-ne v14, v2, :cond_3

    goto :goto_2

    :cond_3
    return v14

    .line 832
    :cond_4
    :goto_2
    aget-byte v8, v3, v10

    and-int/lit16 v8, v8, 0xff

    if-lez v8, :cond_a

    const/4 v8, 0x6

    .line 836
    aget-byte v8, v3, v8

    and-int/lit16 v8, v8, 0xff

    const/4 v10, 0x7

    .line 837
    aget-byte v17, v3, v10

    .line 838
    aget-byte v10, v3, v10

    and-int/lit16 v10, v10, 0xff

    const/16 v9, 0x7f

    and-int/2addr v10, v9

    .line 839
    new-array v2, v10, [B

    const/16 v9, 0x8

    const/4 v11, 0x0

    .line 840
    invoke-static {v3, v9, v2, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v9, 0x80

    const-string v11, ""

    if-ge v8, v9, :cond_6

    if-lez v10, :cond_5

    const/4 v3, 0x0

    .line 845
    :try_start_1
    invoke-virtual {v1, v2, v3, v10}, Lcom/rfid/trans/BaseReader;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rfid/trans/BaseReader;->strEPC:Ljava/lang/String;

    goto :goto_3

    .line 847
    :cond_5
    iput-object v11, v1, Lcom/rfid/trans/BaseReader;->strEPC:Ljava/lang/String;

    .line 848
    :goto_3
    iput v8, v1, Lcom/rfid/trans/BaseReader;->lastPacket:I

    goto :goto_4

    :cond_6
    const/4 v9, 0x0

    .line 852
    aget v16, p5, v9

    const/16 v18, 0x1

    add-int/lit8 v16, v16, 0x1

    aput v16, p5, v9

    .line 853
    iget v9, v1, Lcom/rfid/trans/BaseReader;->lastPacket:I

    move/from16 v19, v7

    and-int/lit8 v7, v9, 0x7f

    and-int/lit8 v8, v8, 0x7f

    add-int/lit8 v15, v8, -0x1

    if-eq v7, v15, :cond_7

    const/16 v7, 0x7f

    if-ne v9, v7, :cond_9

    if-nez v8, :cond_9

    :cond_7
    const/4 v7, 0x1

    .line 855
    sput-boolean v7, Lcom/rfid/trans/ReaderHelp;->isSound:Z

    const/4 v7, 0x0

    .line 856
    invoke-virtual {v1, v2, v7, v10}, Lcom/rfid/trans/BaseReader;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v2

    .line 857
    new-instance v7, Lcom/rfid/trans/ReadTag;

    invoke-direct {v7}, Lcom/rfid/trans/ReadTag;-><init>()V

    const/4 v8, 0x4

    .line 858
    aget-byte v8, v3, v8

    and-int/lit16 v8, v8, 0xff

    iput v8, v7, Lcom/rfid/trans/ReadTag;->antId:I

    .line 859
    iget-object v8, v1, Lcom/rfid/trans/BaseReader;->strEPC:Ljava/lang/String;

    iput-object v8, v7, Lcom/rfid/trans/ReadTag;->epcId:Ljava/lang/String;

    .line 860
    iput-object v2, v7, Lcom/rfid/trans/ReadTag;->memId:Ljava/lang/String;

    add-int/lit8 v10, v10, 0x8

    .line 861
    aget-byte v2, v3, v10

    and-int/lit16 v2, v2, 0xff

    iput v2, v7, Lcom/rfid/trans/ReadTag;->rssi:I

    .line 862
    iget-object v2, v1, Lcom/rfid/trans/BaseReader;->callback:Lcom/rfid/trans/TagCallback;

    if-eqz v2, :cond_8

    .line 864
    invoke-interface {v2, v7}, Lcom/rfid/trans/TagCallback;->tagCallback(Lcom/rfid/trans/ReadTag;)V

    :cond_8
    if-eqz v0, :cond_9

    .line 868
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    :cond_9
    iput-object v11, v1, Lcom/rfid/trans/BaseReader;->strEPC:Ljava/lang/String;

    goto :goto_5

    :cond_a
    :goto_4
    move/from16 v19, v7

    :goto_5
    const/4 v2, 0x1

    if-eq v14, v2, :cond_c

    const/4 v3, 0x2

    if-ne v14, v3, :cond_b

    goto :goto_6

    :cond_b
    move/from16 v7, v19

    goto :goto_8

    :cond_c
    :goto_6
    const/4 v0, 0x0

    return v0

    :cond_d
    const/4 v2, 0x1

    goto :goto_7

    :cond_e
    const/4 v2, 0x1

    :goto_7
    add-int/lit8 v7, v7, 0x1

    :goto_8
    const/4 v2, 0x0

    const/16 v3, 0x7d0

    const/4 v9, 0x2

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_f
    :goto_9
    if-le v12, v7, :cond_10

    const/4 v2, 0x0

    .line 899
    invoke-static {v13, v7, v4, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v7, v8

    goto :goto_a

    :cond_10
    const/4 v2, 0x0

    const/4 v7, 0x0

    goto :goto_a

    :cond_11
    const-wide/16 v8, 0x5

    .line 908
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 910
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sub-long/2addr v8, v5

    const/4 v3, 0x2

    mul-int/lit8 v3, p3, 0x2

    const/16 v10, 0x7d0

    add-int/2addr v3, v10

    int-to-long v11, v3

    cmp-long v3, v8, v11

    if-ltz v3, :cond_12

    goto :goto_b

    :cond_12
    const/16 v3, 0x7d0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 912
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :goto_b
    const/16 v0, 0x30

    return v0
.end method

.method private GetInventoryMixData_led(BIILjava/util/List;[I)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BII",
            "Ljava/util/List<",
            "Lcom/rfid/trans/ReadTag;",
            ">;[I)I"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    const/4 v2, 0x0

    .line 989
    aput v2, p5, v2

    const/16 v3, 0x7d0

    new-array v3, v3, [B

    .line 994
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    .line 997
    :cond_0
    :try_start_0
    iget-object v7, v1, Lcom/rfid/trans/BaseReader;->msg:Lcom/rfid/trans/MessageTran;

    invoke-virtual {v7}, Lcom/rfid/trans/MessageTran;->Read()[B

    move-result-object v7

    if-eqz v7, :cond_11

    .line 1000
    iget v8, v1, Lcom/rfid/trans/BaseReader;->logswitch:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    const-string v8, "Recv"

    .line 1002
    array-length v10, v7

    invoke-virtual {v1, v7, v2, v10}, Lcom/rfid/trans/BaseReader;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object v8, v1, Lcom/rfid/trans/BaseReader;->msgCallback:Lcom/rfid/trans/RFIDLogCallBack;

    if-eqz v8, :cond_1

    .line 1004
    invoke-interface {v8, v7}, Lcom/rfid/trans/RFIDLogCallBack;->RecvMessageCallback([B)V

    .line 1006
    :cond_1
    array-length v8, v7

    if-nez v8, :cond_2

    move/from16 v13, p2

    goto/16 :goto_5

    :cond_2
    add-int v10, v8, v6

    .line 1008
    new-array v11, v10, [B

    .line 1009
    invoke-static {v3, v2, v11, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1010
    invoke-static {v7, v2, v11, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x0

    :goto_0
    sub-int v7, v10, v6

    const/4 v8, 0x5

    if-le v7, v8, :cond_f

    .line 1014
    aget-byte v12, v11, v6

    and-int/lit16 v12, v12, 0xff

    if-lt v12, v8, :cond_c

    add-int/lit8 v12, v6, 0x2

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    move/from16 v13, p2

    if-ne v12, v13, :cond_d

    .line 1016
    aget-byte v12, v11, v6

    and-int/lit16 v12, v12, 0xff

    add-int v14, v6, v12

    add-int/2addr v14, v9

    if-ge v10, v14, :cond_3

    goto/16 :goto_4

    :cond_3
    add-int/lit8 v12, v12, 0x1

    .line 1018
    new-array v7, v12, [B

    .line 1019
    invoke-static {v11, v6, v7, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1020
    invoke-direct {v1, v7, v12}, Lcom/rfid/trans/BaseReader;->CheckCRC([BI)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1022
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1023
    aget-byte v12, v7, v2

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v12, v9

    add-int/2addr v6, v12

    const/4 v12, 0x3

    .line 1025
    aget-byte v14, v7, v12

    and-int/lit16 v14, v14, 0xff

    const/4 v15, 0x4

    const/4 v2, 0x2

    if-eq v14, v9, :cond_5

    if-eq v14, v2, :cond_5

    if-eq v14, v12, :cond_5

    if-ne v14, v15, :cond_4

    goto :goto_1

    :cond_4
    return v14

    .line 1028
    :cond_5
    :goto_1
    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    if-lez v8, :cond_9

    const/4 v8, 0x6

    .line 1032
    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    const/4 v12, 0x7

    .line 1033
    aget-byte v16, v7, v12

    .line 1034
    aget-byte v12, v7, v12

    and-int/lit16 v12, v12, 0xff

    and-int/lit8 v12, v12, 0x7f

    .line 1035
    new-array v2, v12, [B

    const/16 v15, 0x8

    const/4 v9, 0x0

    .line 1036
    invoke-static {v7, v15, v2, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v15, 0x80

    if-ge v8, v15, :cond_9

    const-string v8, ""

    if-lez v12, :cond_6

    .line 1041
    :try_start_1
    invoke-virtual {v1, v2, v9, v12}, Lcom/rfid/trans/BaseReader;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rfid/trans/BaseReader;->strEPC:Ljava/lang/String;

    goto :goto_2

    .line 1043
    :cond_6
    iput-object v8, v1, Lcom/rfid/trans/BaseReader;->strEPC:Ljava/lang/String;

    :goto_2
    const/4 v2, 0x1

    .line 1044
    sput-boolean v2, Lcom/rfid/trans/ReaderHelp;->isSound:Z

    .line 1045
    new-instance v2, Lcom/rfid/trans/ReadTag;

    invoke-direct {v2}, Lcom/rfid/trans/ReadTag;-><init>()V

    const/4 v9, 0x4

    .line 1046
    aget-byte v9, v7, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, v2, Lcom/rfid/trans/ReadTag;->antId:I

    .line 1047
    iget-object v9, v1, Lcom/rfid/trans/BaseReader;->strEPC:Ljava/lang/String;

    iput-object v9, v2, Lcom/rfid/trans/ReadTag;->epcId:Ljava/lang/String;

    .line 1048
    iput-object v8, v2, Lcom/rfid/trans/ReadTag;->memId:Ljava/lang/String;

    add-int/lit8 v12, v12, 0x8

    .line 1049
    aget-byte v7, v7, v12

    and-int/lit16 v7, v7, 0xff

    iput v7, v2, Lcom/rfid/trans/ReadTag;->rssi:I

    .line 1050
    iget-object v7, v1, Lcom/rfid/trans/BaseReader;->callback:Lcom/rfid/trans/TagCallback;

    if-eqz v7, :cond_7

    .line 1052
    invoke-interface {v7, v2}, Lcom/rfid/trans/TagCallback;->tagCallback(Lcom/rfid/trans/ReadTag;)V

    :cond_7
    if-eqz v0, :cond_8

    .line 1056
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1058
    :cond_8
    iput-object v8, v1, Lcom/rfid/trans/BaseReader;->strEPC:Ljava/lang/String;

    :cond_9
    const/4 v2, 0x1

    if-eq v14, v2, :cond_a

    const/4 v7, 0x2

    if-ne v14, v7, :cond_e

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_b
    const/4 v2, 0x1

    goto :goto_3

    :cond_c
    move/from16 v13, p2

    :cond_d
    const/4 v2, 0x1

    :goto_3
    add-int/lit8 v6, v6, 0x1

    :cond_e
    const/4 v2, 0x0

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_f
    move/from16 v13, p2

    :goto_4
    if-le v10, v6, :cond_10

    const/4 v2, 0x0

    .line 1089
    invoke-static {v11, v6, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v6, v7

    goto :goto_5

    :cond_10
    const/4 v2, 0x0

    const/4 v6, 0x0

    goto :goto_5

    :cond_11
    move/from16 v13, p2

    const-wide/16 v7, 0x5

    .line 1098
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 1100
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sub-long/2addr v7, v4

    const-wide/16 v9, 0x7d0

    cmp-long v11, v7, v9

    if-ltz v11, :cond_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 1102
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :goto_6
    const/16 v0, 0x30

    return v0
.end method

.method private GetInventorySingleData(BIILjava/util/List;[I)I
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BII",
            "Ljava/util/List<",
            "Lcom/rfid/trans/ReadTag;",
            ">;[I)I"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    const/4 v2, 0x0

    .line 427
    aput v2, p5, v2

    const/16 v3, 0x7d0

    new-array v3, v3, [B

    .line 432
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-wide v5, v4

    const/4 v7, 0x0

    move/from16 v4, p1

    .line 437
    :goto_0
    :try_start_0
    iget-object v8, v1, Lcom/rfid/trans/BaseReader;->msg:Lcom/rfid/trans/MessageTran;

    invoke-virtual {v8}, Lcom/rfid/trans/MessageTran;->Read()[B

    move-result-object v8

    if-eqz v8, :cond_11

    .line 440
    iget v5, v1, Lcom/rfid/trans/BaseReader;->logswitch:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const-string v5, "Recv"

    .line 442
    array-length v9, v8

    invoke-virtual {v1, v8, v2, v9}, Lcom/rfid/trans/BaseReader;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v5, v1, Lcom/rfid/trans/BaseReader;->msgCallback:Lcom/rfid/trans/RFIDLogCallBack;

    if-eqz v5, :cond_0

    .line 444
    invoke-interface {v5, v8}, Lcom/rfid/trans/RFIDLogCallBack;->RecvMessageCallback([B)V

    .line 446
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 447
    array-length v5, v8

    if-nez v5, :cond_1

    move-object v2, v3

    move-wide v5, v9

    const/4 v3, 0x0

    goto/16 :goto_a

    :cond_1
    add-int v11, v5, v7

    .line 449
    new-array v12, v11, [B

    .line 450
    invoke-static {v3, v2, v12, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    invoke-static {v8, v2, v12, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    :goto_1
    sub-int v7, v11, v5

    const/4 v8, 0x5

    if-le v7, v8, :cond_f

    and-int/lit16 v13, v4, 0xff

    const/16 v14, 0xff

    if-ne v13, v14, :cond_2

    const/4 v4, 0x0

    .line 456
    :cond_2
    aget-byte v13, v12, v5

    and-int/2addr v13, v14

    if-lt v13, v8, :cond_e

    add-int/lit8 v13, v5, 0x1

    aget-byte v15, v12, v13

    if-ne v15, v4, :cond_e

    add-int/lit8 v15, v5, 0x2

    aget-byte v15, v12, v15

    and-int/2addr v15, v14

    move/from16 v8, p2

    if-ne v15, v8, :cond_e

    .line 458
    aget-byte v15, v12, v5

    and-int/2addr v15, v14

    add-int v16, v5, v15

    add-int/lit8 v14, v16, 0x1

    if-ge v11, v14, :cond_3

    goto/16 :goto_8

    :cond_3
    add-int/lit8 v15, v15, 0x1

    .line 460
    new-array v7, v15, [B

    .line 461
    invoke-static {v12, v5, v7, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    invoke-direct {v1, v7, v15}, Lcom/rfid/trans/BaseReader;->CheckCRC([BI)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 464
    aget-byte v13, v7, v2

    const/16 v14, 0xff

    and-int/2addr v13, v14

    add-int/2addr v13, v6

    add-int/2addr v5, v13

    const/4 v13, 0x3

    .line 466
    aget-byte v15, v7, v13

    and-int/2addr v15, v14

    const/4 v14, 0x2

    if-eq v15, v6, :cond_5

    if-eq v15, v14, :cond_5

    if-eq v15, v13, :cond_5

    const/4 v13, 0x4

    if-ne v15, v13, :cond_4

    goto :goto_2

    :cond_4
    return v15

    :cond_5
    :goto_2
    const/4 v13, 0x5

    .line 469
    aget-byte v13, v7, v13

    const/16 v14, 0xff

    and-int/2addr v13, v14

    if-lez v13, :cond_a

    .line 472
    aget v14, p5, v2

    add-int/2addr v14, v6

    aput v14, p5, v2

    const/4 v14, 0x6

    :goto_3
    if-ge v2, v13, :cond_a

    .line 477
    aget-byte v6, v7, v14

    move/from16 v17, v5

    const/16 v5, 0xff

    and-int/2addr v6, v5

    and-int/lit8 v6, v6, 0x7f

    .line 478
    aget-byte v8, v7, v14

    and-int/2addr v8, v5

    shr-int/lit8 v5, v8, 0x7

    .line 479
    new-instance v8, Lcom/rfid/trans/ReadTag;

    invoke-direct {v8}, Lcom/rfid/trans/ReadTag;-><init>()V

    move-wide/from16 v18, v9

    const/4 v9, 0x1

    .line 480
    iput v9, v8, Lcom/rfid/trans/ReadTag;->antId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, ""

    if-lez v6, :cond_8

    .line 483
    :try_start_1
    new-array v9, v6, [B

    move/from16 v20, v13

    add-int/lit8 v13, v14, 0x1

    move-object/from16 v21, v3

    const/4 v3, 0x0

    .line 484
    invoke-static {v7, v13, v9, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v5, :cond_6

    .line 487
    invoke-virtual {v1, v9, v3, v6}, Lcom/rfid/trans/BaseReader;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/rfid/trans/ReadTag;->epcId:Ljava/lang/String;

    const/4 v3, 0x0

    .line 488
    iput-object v3, v8, Lcom/rfid/trans/ReadTag;->memId:Ljava/lang/String;

    goto :goto_4

    .line 492
    :cond_6
    invoke-virtual {v1, v9, v3, v6}, Lcom/rfid/trans/BaseReader;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v5

    .line 493
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v9, 0x18

    if-ne v3, v9, :cond_7

    .line 495
    iput-object v10, v8, Lcom/rfid/trans/ReadTag;->epcId:Ljava/lang/String;

    .line 496
    iput-object v5, v8, Lcom/rfid/trans/ReadTag;->memId:Ljava/lang/String;

    goto :goto_4

    .line 500
    :cond_7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v9

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/rfid/trans/ReadTag;->epcId:Ljava/lang/String;

    .line 501
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/rfid/trans/ReadTag;->memId:Ljava/lang/String;

    .line 504
    :goto_4
    invoke-virtual {v1, v4}, Lcom/rfid/trans/BaseReader;->StopInventory(B)V

    goto :goto_5

    :cond_8
    move-object/from16 v21, v3

    move/from16 v20, v13

    .line 508
    iput-object v10, v8, Lcom/rfid/trans/ReadTag;->epcId:Ljava/lang/String;

    const/4 v3, 0x0

    .line 509
    iput-object v3, v8, Lcom/rfid/trans/ReadTag;->memId:Ljava/lang/String;

    :goto_5
    add-int/lit8 v3, v14, 0x1

    add-int/2addr v3, v6

    .line 512
    aget-byte v3, v7, v3

    const/16 v5, 0xff

    and-int/2addr v3, v5

    iput v3, v8, Lcom/rfid/trans/ReadTag;->rssi:I

    const/4 v3, 0x0

    .line 513
    iput v3, v8, Lcom/rfid/trans/ReadTag;->phase:I

    if-eqz v0, :cond_9

    .line 514
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v6

    add-int/lit8 v2, v2, 0x1

    move/from16 v8, p2

    move/from16 v5, v17

    move-wide/from16 v9, v18

    move/from16 v13, v20

    move-object/from16 v3, v21

    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_a
    move-object/from16 v21, v3

    move/from16 v17, v5

    move-wide/from16 v18, v9

    const/4 v2, 0x1

    if-eq v15, v2, :cond_c

    const/4 v3, 0x2

    if-ne v15, v3, :cond_b

    goto :goto_6

    :cond_b
    move/from16 v5, v17

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v0, 0x0

    return v0

    :cond_d
    move-object/from16 v21, v3

    move-wide/from16 v18, v9

    const/4 v2, 0x1

    move v5, v13

    goto :goto_7

    :cond_e
    move-object/from16 v21, v3

    move-wide/from16 v18, v9

    const/4 v2, 0x1

    add-int/lit8 v5, v5, 0x1

    :goto_7
    move-wide/from16 v9, v18

    move-object/from16 v3, v21

    const/4 v2, 0x0

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_f
    :goto_8
    move-object/from16 v21, v3

    move-wide/from16 v18, v9

    if-le v11, v5, :cond_10

    move-object/from16 v2, v21

    const/4 v3, 0x0

    .line 541
    invoke-static {v12, v5, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    :cond_10
    move-object/from16 v2, v21

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_9
    move-wide/from16 v5, v18

    goto :goto_a

    :cond_11
    move-object v2, v3

    const/4 v3, 0x0

    const-wide/16 v8, 0x5

    .line 550
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 552
    :goto_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sub-long/2addr v8, v5

    const-wide/16 v10, 0x1388

    cmp-long v12, v8, v10

    if-ltz v12, :cond_12

    goto :goto_b

    :cond_12
    move-object v3, v2

    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 554
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :goto_b
    const/16 v0, 0x30

    return v0
.end method

.method private SendCMD([B)I
    .locals 3

    .line 138
    iget v0, p0, Lcom/rfid/trans/BaseReader;->logswitch:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 140
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v2, v1

    invoke-virtual {p0, p1, v0, v2}, Lcom/rfid/trans/BaseReader;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Send"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->msgCallback:Lcom/rfid/trans/RFIDLogCallBack;

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0, p1}, Lcom/rfid/trans/RFIDLogCallBack;->SendMessageCallback([B)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->msg:Lcom/rfid/trans/MessageTran;

    invoke-virtual {v0, p1}, Lcom/rfid/trans/MessageTran;->Write([B)I

    move-result p1

    return p1
.end method

.method private charToByte(C)B
    .locals 1

    const-string v0, "0123456789ABCDEF"

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method private getCRC([BI)V
    .locals 6

    const v0, 0xffff

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, p2, :cond_2

    .line 27
    :try_start_0
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v0, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    shr-int/lit8 v0, v0, 0x1

    const v5, 0x8408

    xor-int/2addr v0, v5

    goto :goto_2

    :cond_0
    shr-int/lit8 v0, v0, 0x1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p2, v2, 0x1

    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    .line 36
    aput-byte v1, p1, v2

    shr-int/2addr v0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 37
    aput-byte v0, p1, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public BlockErase_G2(BB[BBBB[B[B)I
    .locals 6

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, v0, 0xd

    .line 2085
    new-array v1, v1, [B

    add-int/lit8 v2, v0, 0xc

    int-to-byte v2, v2

    const/4 v3, 0x0

    .line 2086
    aput-byte v2, v1, v3

    const/4 v2, 0x1

    .line 2087
    aput-byte p1, v1, v2

    const/4 p1, 0x2

    const/4 v4, 0x7

    .line 2088
    aput-byte v4, v1, p1

    const/4 p1, 0x3

    .line 2089
    aput-byte p2, v1, p1

    const/4 v5, 0x4

    if-lez p2, :cond_0

    .line 2091
    invoke-static {p3, v3, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 p2, v0, 0x4

    .line 2092
    aput-byte p4, v1, p2

    add-int/lit8 p2, v0, 0x5

    .line 2093
    aput-byte p5, v1, p2

    add-int/lit8 p2, v0, 0x6

    .line 2094
    aput-byte p6, v1, p2

    add-int/2addr v0, v4

    .line 2095
    invoke-static {p7, v3, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2096
    aget-byte p2, v1, v3

    sub-int/2addr p2, v2

    invoke-direct {p0, v1, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2097
    invoke-direct {p0, v1}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2098
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object p3, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 p4, 0x3e8

    invoke-direct {p0, p2, p3, v4, p4}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_3

    .line 2101
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p3, p2, p1

    if-nez p3, :cond_1

    .line 2103
    aput-byte v3, p8, v3

    goto :goto_0

    .line 2105
    :cond_1
    aget-byte p3, p2, p1

    and-int/lit16 p3, p3, 0xff

    const/16 p4, 0xfc

    if-ne p3, p4, :cond_2

    .line 2107
    aget-byte p3, p2, v5

    aput-byte p3, p8, v3

    .line 2109
    :cond_2
    :goto_0
    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_3
    const/16 p1, 0x30

    return p1
.end method

.method public BlockWrite_G2(BBB[BBB[B[BB[BB[B[B)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p11

    and-int/lit16 v6, v1, 0xff

    const/16 v9, 0xbb8

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x1

    const/16 v13, 0x10

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v8, 0xff

    const/4 v7, 0x0

    if-ge v6, v13, :cond_4

    add-int v5, v1, p2

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v5, 0xd

    .line 1789
    new-array v6, v6, [B

    add-int/lit8 v5, v5, 0xc

    int-to-byte v5, v5

    .line 1790
    aput-byte v5, v6, v7

    .line 1791
    aput-byte p1, v6, v12

    .line 1792
    aput-byte v13, v6, v15

    .line 1793
    aput-byte p2, v6, v14

    .line 1794
    aput-byte v1, v6, v11

    if-lez v1, :cond_0

    mul-int/lit8 v5, v1, 0x2

    .line 1796
    invoke-static {v2, v7, v6, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v1, 0x5

    .line 1797
    aput-byte p5, v6, v2

    add-int/lit8 v2, v1, 0x6

    .line 1798
    aput-byte p6, v6, v2

    add-int/lit8 v2, v1, 0x7

    mul-int/lit8 v5, p2, 0x2

    .line 1799
    invoke-static {v3, v7, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x7

    .line 1800
    invoke-static {v4, v7, v6, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1801
    aget-byte v1, v6, v7

    sub-int/2addr v1, v12

    invoke-direct {v0, v6, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1802
    invoke-direct {v0, v6}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1803
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    invoke-direct {v0, v1, v2, v13, v9}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_3

    .line 1806
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v14

    if-nez v2, :cond_1

    .line 1808
    aput-byte v7, p13, v7

    goto :goto_0

    .line 1810
    :cond_1
    aget-byte v2, v1, v14

    and-int/2addr v2, v8

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_2

    .line 1812
    aget-byte v2, v1, v11

    aput-byte v2, p13, v7

    .line 1814
    :cond_2
    :goto_0
    aget-byte v1, v1, v14

    and-int/2addr v1, v8

    return v1

    :cond_3
    const/16 v1, 0x30

    return v1

    :cond_4
    if-ne v6, v8, :cond_b

    if-nez v5, :cond_5

    return v8

    :cond_5
    and-int/lit16 v9, v5, 0xff

    .line 1823
    rem-int/lit8 v16, v9, 0x8

    if-nez v16, :cond_6

    .line 1825
    div-int/lit8 v9, v9, 0x8

    goto :goto_1

    .line 1829
    :cond_6
    div-int/lit8 v9, v9, 0x8

    add-int/2addr v9, v12

    :goto_1
    mul-int/lit8 v10, p2, 0x2

    add-int/lit8 v17, v10, 0x11

    add-int v8, v17, v9

    .line 1831
    new-array v8, v8, [B

    add-int/lit8 v17, v10, 0x10

    add-int v11, v17, v9

    int-to-byte v11, v11

    .line 1832
    aput-byte v11, v8, v7

    .line 1833
    aput-byte p1, v8, v12

    .line 1834
    aput-byte v13, v8, v15

    .line 1835
    aput-byte p2, v8, v14

    const/4 v11, 0x4

    .line 1836
    aput-byte v1, v8, v11

    const/16 v11, 0xff

    if-ne v6, v11, :cond_7

    const/4 v1, 0x0

    :cond_7
    mul-int/lit8 v1, v1, 0x2

    const/4 v6, 0x5

    .line 1841
    invoke-static {v2, v7, v8, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v1, 0x5

    .line 1842
    aput-byte p5, v8, v2

    add-int/lit8 v2, v1, 0x6

    .line 1843
    aput-byte p6, v8, v2

    add-int/lit8 v2, v1, 0x7

    .line 1844
    invoke-static {v3, v7, v8, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v10

    add-int/lit8 v2, v1, 0x7

    const/4 v3, 0x4

    .line 1845
    invoke-static {v4, v7, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v1, 0xb

    .line 1846
    aput-byte p9, v8, v2

    add-int/lit8 v2, v1, 0xc

    .line 1847
    aget-byte v3, p10, v7

    aput-byte v3, v8, v2

    add-int/lit8 v2, v1, 0xd

    .line 1848
    aget-byte v3, p10, v12

    aput-byte v3, v8, v2

    add-int/lit8 v2, v1, 0xe

    .line 1849
    aput-byte v5, v8, v2

    add-int/lit8 v1, v1, 0xf

    move-object/from16 v2, p12

    .line 1850
    invoke-static {v2, v7, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1851
    aget-byte v1, v8, v7

    sub-int/2addr v1, v12

    invoke-direct {v0, v8, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1852
    invoke-direct {v0, v8}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1853
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0xbb8

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_a

    .line 1856
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v14

    if-nez v2, :cond_8

    .line 1858
    aput-byte v7, p13, v7

    const/16 v3, 0xff

    goto :goto_2

    .line 1860
    :cond_8
    aget-byte v2, v1, v14

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0xfc

    if-ne v2, v4, :cond_9

    const/4 v2, 0x4

    .line 1862
    aget-byte v2, v1, v2

    aput-byte v2, p13, v7

    .line 1864
    :cond_9
    :goto_2
    aget-byte v1, v1, v14

    and-int/2addr v1, v3

    return v1

    :cond_a
    const/16 v1, 0x30

    return v1

    :cond_b
    const/16 v3, 0xff

    return v3
.end method

.method public CheckLock_6B(BB[B[B)I
    .locals 5

    const/16 v0, 0xe

    new-array v0, v0, [B

    const/16 v1, 0xd

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, 0x54

    aput-byte v3, v0, p1

    const/4 p1, 0x3

    aput-byte p2, v0, p1

    const/4 p2, 0x4

    const/16 v4, 0x8

    .line 3683
    invoke-static {p3, v2, v0, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3684
    aget-byte p3, v0, v2

    sub-int/2addr p3, v1

    invoke-direct {p0, v0, p3}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3685
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3686
    iget-object p3, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v1, 0x3e8

    invoke-direct {p0, p3, v0, v3, v1}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p3

    if-nez p3, :cond_1

    .line 3689
    iget-object p3, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v0, p3, p1

    if-nez v0, :cond_0

    .line 3691
    aget-byte p2, p3, p2

    aput-byte p2, p4, v2

    .line 3693
    :cond_0
    aget-byte p1, p3, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_1
    const/16 p1, 0x30

    return p1
.end method

.method public ConfigDRM(B[B)I
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, -0x70

    aput-byte v3, v0, p1

    .line 1286
    aget-byte p1, p2, v2

    const/4 v3, 0x3

    aput-byte p1, v0, v3

    .line 1287
    aget-byte p1, v0, v2

    sub-int/2addr p1, v1

    invoke-direct {p0, v0, p1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1288
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1289
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v1, 0x90

    const/16 v4, 0x190

    invoke-direct {p0, p1, v0, v1, v4}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p1

    if-nez p1, :cond_1

    .line 1292
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v0, p1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 1294
    aget-byte v0, p1, v0

    aput-byte v0, p2, v2

    .line 1296
    :cond_0
    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_1
    const/16 p1, 0x30

    return p1
.end method

.method public Connect(Ljava/lang/String;II)I
    .locals 0

    .line 119
    iput p3, p0, Lcom/rfid/trans/BaseReader;->logswitch:I

    .line 120
    iget-object p3, p0, Lcom/rfid/trans/BaseReader;->msg:Lcom/rfid/trans/MessageTran;

    invoke-virtual {p3, p1, p2}, Lcom/rfid/trans/MessageTran;->open(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public DisConnect()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->msg:Lcom/rfid/trans/MessageTran;

    invoke-virtual {v0}, Lcom/rfid/trans/MessageTran;->close()I

    move-result v0

    return v0
.end method

.method public EraseData_GB(BB[BB[B[B[B[B)I
    .locals 12

    move-object v0, p0

    move v1, p2

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0xf

    .line 3534
    new-array v3, v3, [B

    add-int/lit8 v2, v2, 0xe

    int-to-byte v2, v2

    const/4 v4, 0x0

    .line 3535
    aput-byte v2, v3, v4

    const/4 v2, 0x1

    .line 3536
    aput-byte p1, v3, v2

    const/4 v5, 0x2

    const/16 v6, 0x5a

    .line 3537
    aput-byte v6, v3, v5

    const/4 v7, 0x3

    .line 3538
    aput-byte v1, v3, v7

    and-int/lit16 v8, v1, 0xff

    const/16 v9, 0xff

    if-ne v8, v9, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 v8, 0x4

    if-lez v1, :cond_1

    mul-int/lit8 v10, v1, 0x2

    move-object v11, p3

    .line 3544
    invoke-static {p3, v4, v3, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v5, v1, 0x4

    .line 3545
    aput-byte p4, v3, v5

    add-int/lit8 v5, v1, 0x5

    .line 3546
    aget-byte v10, p5, v4

    aput-byte v10, v3, v5

    add-int/lit8 v5, v1, 0x6

    .line 3547
    aget-byte v10, p5, v2

    aput-byte v10, v3, v5

    add-int/lit8 v5, v1, 0x7

    .line 3548
    aget-byte v10, p6, v4

    aput-byte v10, v3, v5

    add-int/lit8 v5, v1, 0x8

    .line 3549
    aget-byte v10, p6, v2

    aput-byte v10, v3, v5

    add-int/lit8 v1, v1, 0x9

    move-object/from16 v5, p7

    .line 3550
    invoke-static {v5, v4, v3, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3551
    aget-byte v1, v3, v4

    sub-int/2addr v1, v2

    invoke-direct {p0, v3, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3552
    invoke-direct {p0, v3}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3553
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0x7d0

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_4

    .line 3556
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v7

    if-nez v2, :cond_2

    .line 3558
    aput-byte v4, p8, v4

    goto :goto_0

    .line 3560
    :cond_2
    aget-byte v2, v1, v7

    and-int/2addr v2, v9

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_3

    .line 3562
    aget-byte v2, v1, v8

    aput-byte v2, p8, v4

    .line 3564
    :cond_3
    :goto_0
    aget-byte v1, v1, v7

    and-int/2addr v1, v9

    return v1

    :cond_4
    const/16 v1, 0x30

    return v1
.end method

.method public EraseData_GJB(BB[BB[B[B[B[B)I
    .locals 12

    move-object v0, p0

    move v1, p2

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0xf

    .line 3343
    new-array v3, v3, [B

    add-int/lit8 v2, v2, 0xe

    int-to-byte v2, v2

    const/4 v4, 0x0

    .line 3344
    aput-byte v2, v3, v4

    const/4 v2, 0x1

    .line 3345
    aput-byte p1, v3, v2

    const/4 v5, 0x2

    const/16 v6, 0x5a

    .line 3346
    aput-byte v6, v3, v5

    const/4 v7, 0x3

    .line 3347
    aput-byte v1, v3, v7

    and-int/lit16 v8, v1, 0xff

    const/16 v9, 0xff

    if-ne v8, v9, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 v8, 0x4

    if-lez v1, :cond_1

    mul-int/lit8 v10, v1, 0x2

    move-object v11, p3

    .line 3353
    invoke-static {p3, v4, v3, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v5, v1, 0x4

    .line 3354
    aput-byte p4, v3, v5

    add-int/lit8 v5, v1, 0x5

    .line 3355
    aget-byte v10, p5, v4

    aput-byte v10, v3, v5

    add-int/lit8 v5, v1, 0x6

    .line 3356
    aget-byte v10, p5, v2

    aput-byte v10, v3, v5

    add-int/lit8 v5, v1, 0x7

    .line 3357
    aget-byte v10, p6, v4

    aput-byte v10, v3, v5

    add-int/lit8 v5, v1, 0x8

    .line 3358
    aget-byte v10, p6, v2

    aput-byte v10, v3, v5

    add-int/lit8 v1, v1, 0x9

    move-object/from16 v5, p7

    .line 3359
    invoke-static {v5, v4, v3, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3360
    aget-byte v1, v3, v4

    sub-int/2addr v1, v2

    invoke-direct {p0, v3, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3361
    invoke-direct {p0, v3}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3362
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0xbb8

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_4

    .line 3365
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v7

    if-nez v2, :cond_2

    .line 3367
    aput-byte v4, p8, v4

    goto :goto_0

    .line 3369
    :cond_2
    aget-byte v2, v1, v7

    and-int/2addr v2, v9

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_3

    .line 3371
    aget-byte v2, v1, v8

    aput-byte v2, p8, v4

    .line 3373
    :cond_3
    :goto_0
    aget-byte v1, v1, v7

    and-int/2addr v1, v9

    return v1

    :cond_4
    const/16 v1, 0x30

    return v1
.end method

.method public ExtReadData_G2(BB[BB[BB[BB[BB[B[B[B)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p7

    move/from16 v3, p10

    move-object/from16 v4, p12

    and-int/lit16 v5, v1, 0xff

    const/16 v8, 0xbb8

    const/16 v9, 0x10

    const/16 v10, 0x15

    const/16 v11, 0x8

    const/4 v12, 0x2

    const/4 v13, 0x3

    const/4 v14, 0x1

    const/4 v15, 0x4

    const/4 v6, 0x0

    if-ge v5, v9, :cond_4

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v9, v3, 0xe

    .line 1522
    new-array v9, v9, [B

    add-int/lit8 v7, v3, 0xd

    int-to-byte v7, v7

    .line 1523
    aput-byte v7, v9, v6

    .line 1524
    aput-byte p1, v9, v14

    .line 1525
    aput-byte v10, v9, v12

    .line 1526
    aput-byte v1, v9, v13

    if-lez v5, :cond_0

    move-object/from16 v1, p3

    .line 1528
    invoke-static {v1, v6, v9, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v1, v3, 0x4

    .line 1529
    aput-byte p4, v9, v1

    add-int/lit8 v1, v3, 0x5

    .line 1530
    aget-byte v5, p5, v6

    aput-byte v5, v9, v1

    add-int/lit8 v1, v3, 0x6

    .line 1531
    aget-byte v5, p5, v14

    aput-byte v5, v9, v1

    add-int/lit8 v1, v3, 0x7

    .line 1532
    aput-byte p6, v9, v1

    add-int/2addr v3, v11

    .line 1533
    invoke-static {v2, v6, v9, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1534
    aget-byte v1, v9, v6

    sub-int/2addr v1, v14

    invoke-direct {v0, v9, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1535
    invoke-direct {v0, v9}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1536
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    invoke-direct {v0, v1, v2, v10, v8}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_3

    .line 1539
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v13

    if-nez v2, :cond_1

    .line 1541
    aput-byte v6, p13, v6

    mul-int/lit8 v2, p6, 0x2

    .line 1542
    invoke-static {v1, v15, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v7, 0xff

    goto :goto_0

    .line 1544
    :cond_1
    aget-byte v2, v1, v13

    const/16 v7, 0xff

    and-int/2addr v2, v7

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_2

    .line 1546
    aget-byte v1, v1, v15

    aput-byte v1, p13, v6

    .line 1548
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v1, v1, v13

    and-int/2addr v1, v7

    return v1

    :cond_3
    const/16 v1, 0x30

    return v1

    :cond_4
    const/16 v7, 0xff

    if-ne v5, v7, :cond_a

    if-nez v3, :cond_5

    return v7

    :cond_5
    and-int/lit16 v5, v3, 0xff

    .line 1557
    rem-int/lit8 v7, v5, 0x8

    if-nez v7, :cond_6

    .line 1559
    div-int/2addr v5, v11

    goto :goto_1

    .line 1563
    :cond_6
    div-int/2addr v5, v11

    add-int/2addr v5, v14

    :goto_1
    add-int/lit8 v7, v5, 0x12

    .line 1565
    new-array v7, v7, [B

    add-int/lit8 v8, v5, 0x11

    int-to-byte v8, v8

    .line 1566
    aput-byte v8, v7, v6

    .line 1567
    aput-byte p1, v7, v14

    .line 1568
    aput-byte v10, v7, v12

    .line 1569
    aput-byte v1, v7, v13

    .line 1570
    aput-byte p4, v7, v15

    .line 1571
    aget-byte v1, p5, v6

    const/4 v8, 0x5

    aput-byte v1, v7, v8

    .line 1572
    aget-byte v1, p5, v14

    const/4 v8, 0x6

    aput-byte v1, v7, v8

    const/4 v1, 0x7

    .line 1573
    aput-byte p6, v7, v1

    .line 1574
    invoke-static {v2, v6, v7, v11, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0xc

    .line 1575
    aput-byte p8, v7, v1

    .line 1576
    aget-byte v1, p9, v6

    const/16 v2, 0xd

    aput-byte v1, v7, v2

    .line 1577
    aget-byte v1, p9, v14

    const/16 v2, 0xe

    aput-byte v1, v7, v2

    const/16 v1, 0xf

    .line 1578
    aput-byte v3, v7, v1

    move-object/from16 v1, p11

    .line 1579
    invoke-static {v1, v6, v7, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1580
    aget-byte v1, v7, v6

    sub-int/2addr v1, v14

    invoke-direct {v0, v7, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1581
    invoke-direct {v0, v7}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1582
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0xbb8

    invoke-direct {v0, v1, v2, v10, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_9

    .line 1585
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v13

    if-nez v2, :cond_7

    .line 1587
    aput-byte v6, p13, v6

    mul-int/lit8 v2, p6, 0x2

    .line 1588
    invoke-static {v1, v15, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0xff

    goto :goto_2

    .line 1590
    :cond_7
    aget-byte v2, v1, v13

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0xfc

    if-ne v2, v4, :cond_8

    .line 1592
    aget-byte v1, v1, v15

    aput-byte v1, p13, v6

    .line 1594
    :cond_8
    :goto_2
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v1, v1, v13

    and-int/2addr v1, v3

    return v1

    :cond_9
    const/16 v1, 0x30

    return v1

    :cond_a
    const/16 v3, 0xff

    return v3
.end method

.method public ExtWriteData_G2(BBB[BB[B[B[BB[BB[B[B)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v4, p11

    and-int/lit16 v5, v1, 0xff

    const/16 v8, 0xbb8

    const/16 v9, 0x10

    const/4 v10, 0x5

    const/16 v11, 0x16

    const/4 v12, 0x4

    const/16 v13, 0x8

    const/4 v14, 0x2

    const/4 v15, 0x3

    const/16 v16, 0x1

    const/16 v7, 0xff

    const/4 v6, 0x0

    if-ge v5, v9, :cond_4

    add-int v4, v1, p2

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v4, 0xe

    .line 1699
    new-array v5, v5, [B

    add-int/lit8 v4, v4, 0xd

    int-to-byte v4, v4

    .line 1700
    aput-byte v4, v5, v6

    .line 1701
    aput-byte p1, v5, v16

    .line 1702
    aput-byte v11, v5, v14

    .line 1703
    aput-byte p2, v5, v15

    .line 1704
    aput-byte v1, v5, v12

    if-lez v1, :cond_0

    mul-int/lit8 v4, v1, 0x2

    move-object/from16 v9, p4

    .line 1706
    invoke-static {v9, v6, v5, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, v1, 0x5

    .line 1707
    aput-byte p5, v5, v4

    add-int/lit8 v4, v1, 0x6

    .line 1708
    aget-byte v9, p6, v6

    aput-byte v9, v5, v4

    add-int/lit8 v4, v1, 0x7

    .line 1709
    aget-byte v9, p6, v16

    aput-byte v9, v5, v4

    add-int/lit8 v4, v1, 0x8

    mul-int/lit8 v9, p2, 0x2

    .line 1710
    invoke-static {v2, v6, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v9

    add-int/2addr v1, v13

    .line 1711
    invoke-static {v3, v6, v5, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1712
    aget-byte v1, v5, v6

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v5, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1713
    invoke-direct {v0, v5}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1714
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    invoke-direct {v0, v1, v2, v11, v8}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_3

    .line 1717
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v15

    if-nez v2, :cond_1

    .line 1719
    aput-byte v6, p13, v6

    goto :goto_0

    .line 1721
    :cond_1
    aget-byte v2, v1, v15

    and-int/2addr v2, v7

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_2

    .line 1723
    aget-byte v2, v1, v12

    aput-byte v2, p13, v6

    .line 1725
    :cond_2
    :goto_0
    aget-byte v1, v1, v15

    and-int/2addr v1, v7

    return v1

    :cond_3
    const/16 v1, 0x30

    return v1

    :cond_4
    if-ne v5, v7, :cond_a

    if-nez v4, :cond_5

    return v7

    :cond_5
    and-int/lit16 v5, v4, 0xff

    .line 1734
    rem-int/lit8 v17, v5, 0x8

    if-nez v17, :cond_6

    .line 1736
    div-int/2addr v5, v13

    goto :goto_1

    .line 1740
    :cond_6
    div-int/2addr v5, v13

    add-int/lit8 v5, v5, 0x1

    :goto_1
    mul-int/lit8 v7, p2, 0x2

    add-int/lit8 v18, v7, 0x12

    add-int v8, v18, v5

    .line 1742
    new-array v8, v8, [B

    add-int/lit8 v18, v7, 0x11

    add-int v9, v18, v5

    int-to-byte v9, v9

    .line 1743
    aput-byte v9, v8, v6

    .line 1744
    aput-byte p1, v8, v16

    .line 1745
    aput-byte v11, v8, v14

    .line 1746
    aput-byte p2, v8, v15

    .line 1747
    aput-byte v1, v8, v12

    .line 1748
    aput-byte p5, v8, v10

    .line 1749
    aget-byte v1, p6, v6

    const/4 v9, 0x6

    aput-byte v1, v8, v9

    .line 1750
    aget-byte v1, p6, v16

    const/4 v9, 0x7

    aput-byte v1, v8, v9

    .line 1751
    invoke-static {v2, v6, v8, v13, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v7, 0x8

    .line 1752
    invoke-static {v3, v6, v8, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v7, 0xc

    .line 1753
    aput-byte p9, v8, v1

    add-int/lit8 v1, v7, 0xd

    .line 1754
    aget-byte v2, p10, v6

    aput-byte v2, v8, v1

    add-int/lit8 v1, v7, 0xe

    .line 1755
    aget-byte v2, p10, v16

    aput-byte v2, v8, v1

    add-int/lit8 v1, v7, 0xf

    .line 1756
    aput-byte v4, v8, v1

    const/16 v1, 0x10

    add-int/2addr v7, v1

    move-object/from16 v1, p12

    .line 1757
    invoke-static {v1, v6, v8, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1758
    aget-byte v1, v8, v6

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v8, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1759
    invoke-direct {v0, v8}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1760
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0xbb8

    invoke-direct {v0, v1, v2, v11, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_9

    .line 1763
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v15

    if-nez v2, :cond_7

    .line 1765
    aput-byte v6, p13, v6

    const/16 v3, 0xff

    goto :goto_2

    .line 1767
    :cond_7
    aget-byte v2, v1, v15

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0xfc

    if-ne v2, v4, :cond_8

    .line 1769
    aget-byte v2, v1, v12

    aput-byte v2, p13, v6

    .line 1771
    :cond_8
    :goto_2
    aget-byte v1, v1, v15

    and-int/2addr v1, v3

    return v1

    :cond_9
    const/16 v1, 0x30

    return v1

    :cond_a
    const/16 v3, 0xff

    return v3
.end method

.method public FST_ShowImage(BB[B)I
    .locals 5

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, v0, 0x6

    .line 2274
    new-array v1, v1, [B

    add-int/lit8 v2, v0, 0x5

    int-to-byte v2, v2

    const/4 v3, 0x0

    .line 2275
    aput-byte v2, v1, v3

    const/4 v2, 0x1

    .line 2276
    aput-byte p1, v1, v2

    const/16 p1, -0x2f

    const/4 v4, 0x2

    .line 2277
    aput-byte p1, v1, v4

    const/4 p1, 0x3

    .line 2278
    aput-byte p2, v1, p1

    if-lez v0, :cond_0

    const/4 p2, 0x4

    .line 2280
    invoke-static {p3, v3, v1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2281
    :cond_0
    aget-byte p2, v1, v3

    and-int/lit16 p2, p2, 0xff

    sub-int/2addr p2, v2

    invoke-direct {p0, v1, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2282
    invoke-direct {p0, v1}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2283
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object p3, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v0, 0xd1

    const/16 v1, 0x2ee0

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_1

    .line 2286
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_1
    const/16 p1, 0x30

    return p1
.end method

.method public FST_TranImage(BB[B[B)I
    .locals 5

    and-int/lit16 v0, p2, 0xff

    add-int/lit8 v1, v0, 0x8

    .line 2253
    new-array v1, v1, [B

    add-int/lit8 v2, v0, 0x7

    int-to-byte v2, v2

    const/4 v3, 0x0

    .line 2254
    aput-byte v2, v1, v3

    const/4 v2, 0x1

    .line 2255
    aput-byte p1, v1, v2

    const/4 p1, 0x2

    const/16 v4, -0x30

    .line 2256
    aput-byte v4, v1, p1

    const/4 p1, 0x3

    .line 2257
    aput-byte p2, v1, p1

    .line 2258
    aget-byte p2, p3, v3

    const/4 v4, 0x4

    aput-byte p2, v1, v4

    .line 2259
    aget-byte p2, p3, v2

    const/4 p3, 0x5

    aput-byte p2, v1, p3

    const/4 p2, 0x6

    .line 2260
    invoke-static {p4, v3, v1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2261
    aget-byte p2, v1, v3

    and-int/lit16 p2, p2, 0xff

    sub-int/2addr p2, v2

    invoke-direct {p0, v1, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2262
    invoke-direct {p0, v1}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2263
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object p3, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 p4, 0xd0

    const/16 v0, 0x5dc

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_0

    .line 2266
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/16 p1, 0x30

    return p1
.end method

.method public Fd_ExtReadMemory(BB[B[B[B[BB[BB[BB[B[B[I[B)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move/from16 v7, p11

    move-object/from16 v8, p13

    move-object/from16 v9, p14

    const/4 v10, -0x1

    .line 3133
    iput v10, v0, Lcom/rfid/trans/BaseReader;->packIndex:I

    and-int/lit16 v10, v2, 0xff

    const/16 v14, -0x35

    const/4 v15, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x0

    if-ltz v10, :cond_1

    const/16 v13, 0x10

    if-ge v10, v13, :cond_1

    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v10, v7, 0x13

    .line 3136
    new-array v10, v10, [B

    add-int/lit8 v13, v7, 0x12

    int-to-byte v13, v13

    .line 3137
    aput-byte v13, v10, v11

    .line 3138
    aput-byte v1, v10, v15

    .line 3139
    aput-byte v14, v10, v12

    const/4 v13, 0x3

    .line 3140
    aput-byte v2, v10, v13

    if-lez v2, :cond_0

    const/16 v13, 0x10

    if-ge v2, v13, :cond_0

    move-object/from16 v2, p3

    const/4 v13, 0x4

    .line 3142
    invoke-static {v2, v11, v10, v13, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v2, v7, 0x4

    .line 3143
    invoke-static {v3, v11, v10, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v7, 0x6

    .line 3144
    invoke-static {v4, v11, v10, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v7, 0x8

    const/4 v3, 0x4

    .line 3145
    invoke-static {v5, v11, v10, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v7, 0xc

    .line 3146
    aput-byte p7, v10, v2

    const/16 v2, 0xd

    add-int/2addr v7, v2

    .line 3147
    invoke-static {v6, v11, v10, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3148
    aget-byte v2, v10, v11

    sub-int/2addr v2, v15

    invoke-direct {v0, v10, v2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3149
    invoke-direct {v0, v10}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    const/16 v2, 0xcb

    .line 3150
    invoke-virtual {v0, v1, v8, v9, v2}, Lcom/rfid/trans/BaseReader;->GetMemDataFromPort(B[B[II)I

    move-result v1

    return v1

    :cond_1
    const/16 v13, 0xff

    if-ne v10, v13, :cond_4

    if-nez v7, :cond_2

    return v13

    :cond_2
    and-int/lit16 v10, v7, 0xff

    .line 3157
    rem-int/lit8 v13, v10, 0x8

    const/16 v12, 0x8

    if-nez v13, :cond_3

    .line 3159
    div-int/2addr v10, v12

    goto :goto_0

    .line 3163
    :cond_3
    div-int/2addr v10, v12

    add-int/2addr v10, v15

    :goto_0
    add-int/lit8 v13, v10, 0x17

    .line 3165
    new-array v13, v13, [B

    add-int/lit8 v12, v10, 0x16

    int-to-byte v12, v12

    .line 3166
    aput-byte v12, v13, v11

    .line 3167
    aput-byte v1, v13, v15

    const/4 v12, 0x2

    .line 3168
    aput-byte v14, v13, v12

    const/4 v14, 0x3

    .line 3169
    aput-byte v2, v13, v14

    const/4 v2, 0x4

    .line 3170
    invoke-static {v3, v11, v13, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x6

    .line 3171
    invoke-static {v4, v11, v13, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x8

    .line 3172
    invoke-static {v5, v11, v13, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0xc

    .line 3173
    aput-byte p7, v13, v3

    const/16 v3, 0xd

    .line 3174
    invoke-static {v6, v11, v13, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x11

    .line 3175
    aput-byte p9, v13, v2

    .line 3176
    aget-byte v2, p10, v11

    const/16 v3, 0x12

    aput-byte v2, v13, v3

    .line 3177
    aget-byte v2, p10, v15

    const/16 v3, 0x13

    aput-byte v2, v13, v3

    const/16 v2, 0x14

    .line 3178
    aput-byte v7, v13, v2

    const/16 v2, 0x15

    move-object/from16 v3, p12

    .line 3179
    invoke-static {v3, v11, v13, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3180
    aget-byte v2, v13, v11

    sub-int/2addr v2, v15

    invoke-direct {v0, v13, v2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3181
    invoke-direct {v0, v13}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    const/16 v2, 0xcb

    .line 3182
    invoke-virtual {v0, v1, v8, v9, v2}, Lcom/rfid/trans/BaseReader;->GetMemDataFromPort(B[B[II)I

    move-result v1

    return v1

    :cond_4
    return v13
.end method

.method public Fd_GetTemperature(BB[BBBBBB[BB[BB[B[B[B)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p9

    move/from16 v3, p12

    move-object/from16 v4, p14

    and-int/lit16 v5, v1, 0xff

    const/16 v9, 0xc5

    const/16 v10, 0x9

    const/16 v11, -0x3b

    const/16 v12, 0x10

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x0

    if-ltz v5, :cond_4

    if-ge v5, v12, :cond_4

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v5, v3, 0xf

    .line 2729
    new-array v5, v5, [B

    add-int/lit8 v8, v3, 0xe

    int-to-byte v8, v8

    .line 2730
    aput-byte v8, v5, v6

    .line 2731
    aput-byte p1, v5, v14

    .line 2732
    aput-byte v11, v5, v13

    .line 2733
    aput-byte v1, v5, v15

    if-lez v1, :cond_0

    if-ge v1, v12, :cond_0

    move-object/from16 v1, p3

    .line 2735
    invoke-static {v1, v6, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v1, v3, 0x4

    .line 2736
    aput-byte p4, v5, v1

    add-int/lit8 v1, v3, 0x5

    .line 2737
    aput-byte p5, v5, v1

    add-int/lit8 v1, v3, 0x6

    .line 2738
    aput-byte p6, v5, v1

    add-int/lit8 v1, v3, 0x7

    .line 2739
    aput-byte p7, v5, v1

    add-int/lit8 v1, v3, 0x8

    .line 2740
    aput-byte p8, v5, v1

    add-int/2addr v3, v10

    .line 2741
    invoke-static {v2, v6, v5, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2742
    aget-byte v1, v5, v6

    sub-int/2addr v1, v14

    invoke-direct {v0, v5, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2743
    invoke-direct {v0, v5}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2744
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0x5dc

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_3

    .line 2747
    aput-byte v6, p15, v6

    .line 2748
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v15

    if-nez v2, :cond_1

    .line 2750
    invoke-static {v1, v7, v4, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v8, 0xff

    goto :goto_0

    .line 2752
    :cond_1
    aget-byte v2, v1, v15

    const/16 v8, 0xff

    and-int/2addr v2, v8

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_2

    .line 2754
    aget-byte v1, v1, v7

    aput-byte v1, p15, v6

    .line 2756
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v1, v1, v15

    and-int/2addr v1, v8

    return v1

    :cond_3
    const/16 v1, 0x30

    return v1

    :cond_4
    const/16 v8, 0xff

    if-ne v5, v8, :cond_a

    if-nez v3, :cond_5

    return v8

    :cond_5
    and-int/lit16 v5, v3, 0xff

    .line 2765
    rem-int/lit8 v8, v5, 0x8

    const/16 v16, 0x8

    if-nez v8, :cond_6

    .line 2767
    div-int/lit8 v5, v5, 0x8

    goto :goto_1

    .line 2771
    :cond_6
    div-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v14

    :goto_1
    add-int/lit8 v8, v5, 0x13

    .line 2773
    new-array v8, v8, [B

    add-int/lit8 v9, v5, 0x12

    int-to-byte v9, v9

    .line 2774
    aput-byte v9, v8, v6

    .line 2775
    aput-byte p1, v8, v14

    .line 2776
    aput-byte v11, v8, v13

    .line 2777
    aput-byte v1, v8, v15

    .line 2778
    aput-byte p4, v8, v7

    const/4 v1, 0x5

    .line 2779
    aput-byte p5, v8, v1

    const/4 v1, 0x6

    .line 2780
    aput-byte p6, v8, v1

    const/4 v1, 0x7

    .line 2781
    aput-byte p7, v8, v1

    .line 2782
    aput-byte p8, v8, v16

    .line 2783
    invoke-static {v2, v6, v8, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0xd

    .line 2784
    aput-byte p10, v8, v1

    .line 2785
    aget-byte v1, p11, v6

    const/16 v2, 0xe

    aput-byte v1, v8, v2

    .line 2786
    aget-byte v1, p11, v14

    const/16 v2, 0xf

    aput-byte v1, v8, v2

    .line 2787
    aput-byte v3, v8, v12

    const/16 v1, 0x11

    move-object/from16 v2, p13

    .line 2788
    invoke-static {v2, v6, v8, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2789
    aget-byte v1, v8, v6

    sub-int/2addr v1, v14

    invoke-direct {v0, v8, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2790
    invoke-direct {v0, v8}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2791
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0x5dc

    const/16 v5, 0xc5

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_9

    .line 2794
    aput-byte v6, p15, v6

    .line 2795
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v15

    if-nez v2, :cond_7

    .line 2797
    invoke-static {v1, v7, v4, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0xff

    goto :goto_2

    .line 2799
    :cond_7
    aget-byte v2, v1, v15

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0xfc

    if-ne v2, v4, :cond_8

    .line 2801
    aget-byte v1, v1, v7

    aput-byte v1, p15, v6

    .line 2803
    :cond_8
    :goto_2
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v1, v1, v15

    and-int/2addr v1, v3

    return v1

    :cond_9
    const/16 v1, 0x30

    return v1

    :cond_a
    const/16 v3, 0xff

    return v3
.end method

.method public Fd_InitRegfile(BB[B[BB[BB[B[B)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p7

    and-int/lit16 v4, v1, 0xff

    const/16 v7, 0x5dc

    const/16 v8, 0xc0

    const/16 v9, -0x40

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x4

    const/16 v14, 0xff

    const/4 v15, 0x0

    if-ltz v4, :cond_3

    const/16 v6, 0x10

    if-ge v4, v6, :cond_3

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v3, 0xa

    .line 2345
    new-array v4, v4, [B

    add-int/lit8 v5, v3, 0x9

    int-to-byte v5, v5

    .line 2346
    aput-byte v5, v4, v15

    .line 2347
    aput-byte p1, v4, v12

    .line 2348
    aput-byte v9, v4, v10

    .line 2349
    aput-byte v1, v4, v11

    if-lez v1, :cond_0

    if-ge v1, v6, :cond_0

    move-object/from16 v1, p3

    .line 2351
    invoke-static {v1, v15, v4, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/2addr v3, v13

    .line 2352
    invoke-static {v2, v15, v4, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2353
    aget-byte v1, v4, v15

    sub-int/2addr v1, v12

    invoke-direct {v0, v4, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2354
    invoke-direct {v0, v4}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2355
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    invoke-direct {v0, v1, v2, v8, v7}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_2

    .line 2358
    aput-byte v15, p9, v15

    .line 2359
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v11

    and-int/2addr v2, v14

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_1

    .line 2361
    aget-byte v2, v1, v13

    aput-byte v2, p9, v15

    .line 2363
    :cond_1
    aget-byte v1, v1, v11

    and-int/2addr v1, v14

    return v1

    :cond_2
    const/16 v1, 0x30

    return v1

    :cond_3
    if-ne v4, v14, :cond_8

    if-nez v3, :cond_4

    return v14

    :cond_4
    and-int/lit16 v4, v3, 0xff

    .line 2372
    rem-int/lit8 v5, v4, 0x8

    const/16 v6, 0x8

    if-nez v5, :cond_5

    .line 2374
    div-int/2addr v4, v6

    goto :goto_0

    .line 2378
    :cond_5
    div-int/2addr v4, v6

    add-int/2addr v4, v12

    :goto_0
    add-int/lit8 v5, v4, 0xe

    .line 2380
    new-array v5, v5, [B

    add-int/lit8 v14, v4, 0xd

    int-to-byte v14, v14

    .line 2381
    aput-byte v14, v5, v15

    .line 2382
    aput-byte p1, v5, v12

    .line 2383
    aput-byte v9, v5, v10

    .line 2384
    aput-byte v1, v5, v11

    .line 2385
    invoke-static {v2, v15, v5, v13, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2386
    aput-byte p5, v5, v6

    .line 2387
    aget-byte v1, p6, v15

    const/16 v2, 0x9

    aput-byte v1, v5, v2

    .line 2388
    aget-byte v1, p6, v12

    const/16 v2, 0xa

    aput-byte v1, v5, v2

    const/16 v1, 0xb

    .line 2389
    aput-byte v3, v5, v1

    const/16 v1, 0xc

    move-object/from16 v2, p8

    .line 2390
    invoke-static {v2, v15, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2391
    aget-byte v1, v5, v15

    sub-int/2addr v1, v12

    invoke-direct {v0, v5, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2392
    invoke-direct {v0, v5}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2393
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    invoke-direct {v0, v1, v2, v8, v7}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_7

    .line 2396
    aput-byte v15, p9, v15

    .line 2397
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v11

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0xfc

    if-ne v2, v4, :cond_6

    .line 2399
    aget-byte v2, v1, v13

    aput-byte v2, p9, v15

    .line 2401
    :cond_6
    aget-byte v1, v1, v11

    and-int/2addr v1, v3

    return v1

    :cond_7
    const/16 v1, 0x30

    return v1

    :cond_8
    const/16 v3, 0xff

    return v3
.end method

.method public Fd_OP_Mode_Chk(BB[BB[BB[BB[B[B[B)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p5

    move/from16 v3, p8

    const/4 v4, 0x0

    .line 2962
    aput-byte v4, p11, v4

    and-int/lit16 v5, v1, 0xff

    const/16 v8, 0x5dc

    const/16 v9, 0xc8

    const/16 v10, -0x38

    const/4 v11, 0x2

    const/4 v12, 0x5

    const/4 v13, 0x3

    const/4 v14, 0x1

    const/4 v15, 0x4

    if-ltz v5, :cond_4

    const/16 v6, 0x10

    if-ge v5, v6, :cond_4

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v5, v3, 0xb

    .line 2965
    new-array v5, v5, [B

    add-int/lit8 v7, v3, 0xa

    int-to-byte v7, v7

    .line 2966
    aput-byte v7, v5, v4

    .line 2967
    aput-byte p1, v5, v14

    .line 2968
    aput-byte v10, v5, v11

    .line 2969
    aput-byte v1, v5, v13

    if-lez v1, :cond_0

    if-ge v1, v6, :cond_0

    move-object/from16 v1, p3

    .line 2971
    invoke-static {v1, v4, v5, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v1, v3, 0x4

    .line 2972
    aput-byte p4, v5, v1

    add-int/2addr v3, v12

    .line 2973
    invoke-static {v2, v4, v5, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2974
    aget-byte v1, v5, v4

    sub-int/2addr v1, v14

    invoke-direct {v0, v5, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2975
    invoke-direct {v0, v5}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2976
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    invoke-direct {v0, v1, v2, v9, v8}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_3

    .line 2979
    aput-byte v4, p11, v4

    .line 2980
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v13

    const/16 v6, 0xff

    and-int/2addr v2, v6

    if-nez v2, :cond_1

    .line 2982
    aget-byte v2, v1, v15

    aput-byte v2, p10, v4

    .line 2983
    aget-byte v2, v1, v12

    aput-byte v2, p10, v14

    goto :goto_0

    .line 2985
    :cond_1
    aget-byte v2, v1, v13

    and-int/2addr v2, v6

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_2

    .line 2987
    aget-byte v2, v1, v15

    aput-byte v2, p11, v4

    .line 2989
    :cond_2
    :goto_0
    aget-byte v1, v1, v13

    and-int/2addr v1, v6

    return v1

    :cond_3
    const/16 v1, 0x30

    return v1

    :cond_4
    const/16 v6, 0xff

    if-ne v5, v6, :cond_a

    if-nez v3, :cond_5

    return v6

    :cond_5
    and-int/lit16 v5, v3, 0xff

    .line 2998
    rem-int/lit8 v6, v5, 0x8

    if-nez v6, :cond_6

    .line 3000
    div-int/lit8 v5, v5, 0x8

    goto :goto_1

    .line 3004
    :cond_6
    div-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v14

    :goto_1
    add-int/lit8 v6, v5, 0xf

    .line 3006
    new-array v6, v6, [B

    add-int/lit8 v7, v5, 0xe

    int-to-byte v7, v7

    .line 3007
    aput-byte v7, v6, v4

    .line 3008
    aput-byte p1, v6, v14

    .line 3009
    aput-byte v10, v6, v11

    .line 3010
    aput-byte v1, v6, v13

    .line 3011
    aput-byte p4, v6, v15

    .line 3012
    invoke-static {v2, v4, v6, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x9

    .line 3013
    aput-byte p6, v6, v1

    .line 3014
    aget-byte v1, p7, v4

    const/16 v2, 0xa

    aput-byte v1, v6, v2

    .line 3015
    aget-byte v1, p7, v14

    const/16 v2, 0xb

    aput-byte v1, v6, v2

    const/16 v1, 0xc

    .line 3016
    aput-byte v3, v6, v1

    const/16 v1, 0xd

    move-object/from16 v2, p9

    .line 3017
    invoke-static {v2, v4, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3018
    aget-byte v1, v6, v4

    sub-int/2addr v1, v14

    invoke-direct {v0, v6, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3019
    invoke-direct {v0, v6}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3020
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    invoke-direct {v0, v1, v2, v9, v8}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_9

    .line 3023
    aput-byte v4, p11, v4

    .line 3024
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v13

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-nez v2, :cond_7

    .line 3026
    aget-byte v2, v1, v15

    aput-byte v2, p10, v4

    .line 3027
    aget-byte v2, v1, v12

    aput-byte v2, p10, v14

    goto :goto_2

    .line 3029
    :cond_7
    aget-byte v2, v1, v13

    and-int/2addr v2, v3

    const/16 v5, 0xfc

    if-ne v2, v5, :cond_8

    .line 3031
    aget-byte v2, v1, v15

    aput-byte v2, p11, v4

    .line 3033
    :cond_8
    :goto_2
    aget-byte v1, v1, v13

    and-int/2addr v1, v3

    return v1

    :cond_9
    const/16 v1, 0x30

    return v1

    :cond_a
    const/16 v3, 0xff

    return v3
.end method

.method public Fd_ReadMemory(BB[B[BB[BB[BB[BB[B[B[B)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p8

    move/from16 v6, p11

    move-object/from16 v7, p13

    and-int/lit16 v8, v1, 0xff

    const/16 v13, 0xc

    const/16 v14, -0x3d

    const/16 v15, 0x10

    const/4 v10, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x3

    const/4 v9, 0x4

    const/4 v11, 0x0

    if-ltz v8, :cond_4

    if-ge v8, v15, :cond_4

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v8, v6, 0x12

    .line 2565
    new-array v8, v8, [B

    add-int/lit8 v12, v6, 0x11

    int-to-byte v12, v12

    .line 2566
    aput-byte v12, v8, v11

    .line 2567
    aput-byte p1, v8, v16

    .line 2568
    aput-byte v14, v8, v10

    .line 2569
    aput-byte v1, v8, v17

    if-lez v1, :cond_0

    if-ge v1, v15, :cond_0

    move-object/from16 v1, p3

    .line 2571
    invoke-static {v1, v11, v8, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v1, v6, 0x4

    .line 2572
    invoke-static {v2, v11, v8, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v6, 0x6

    .line 2573
    aput-byte v3, v8, v1

    add-int/lit8 v1, v6, 0x7

    .line 2574
    invoke-static {v4, v11, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v6, 0xb

    .line 2575
    aput-byte p7, v8, v1

    add-int/2addr v6, v13

    .line 2576
    invoke-static {v5, v11, v8, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2577
    aget-byte v1, v8, v11

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v8, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2578
    invoke-direct {v0, v8}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2579
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v4, 0x5dc

    const/16 v5, 0xc3

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_3

    .line 2582
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v17

    if-nez v2, :cond_1

    .line 2584
    aput-byte v11, p14, v11

    const/16 v12, 0xff

    and-int/lit16 v2, v3, 0xff

    .line 2585
    invoke-static {v1, v9, v7, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    const/16 v12, 0xff

    .line 2587
    aget-byte v2, v1, v17

    and-int/2addr v2, v12

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_2

    .line 2589
    aget-byte v1, v1, v9

    aput-byte v1, p14, v11

    .line 2591
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v1, v1, v17

    and-int/2addr v1, v12

    return v1

    :cond_3
    const/16 v1, 0x30

    return v1

    :cond_4
    const/16 v12, 0xff

    if-ne v8, v12, :cond_a

    if-nez v6, :cond_5

    return v12

    :cond_5
    and-int/lit16 v8, v6, 0xff

    .line 2600
    rem-int/lit8 v12, v8, 0x8

    if-nez v12, :cond_6

    .line 2602
    div-int/lit8 v8, v8, 0x8

    goto :goto_1

    .line 2606
    :cond_6
    div-int/lit8 v8, v8, 0x8

    add-int/lit8 v8, v8, 0x1

    :goto_1
    add-int/lit8 v12, v8, 0x16

    .line 2608
    new-array v12, v12, [B

    add-int/lit8 v15, v8, 0x15

    int-to-byte v15, v15

    .line 2609
    aput-byte v15, v12, v11

    .line 2610
    aput-byte p1, v12, v16

    .line 2611
    aput-byte v14, v12, v10

    .line 2612
    aput-byte v1, v12, v17

    .line 2613
    invoke-static {v2, v11, v12, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x6

    .line 2614
    aput-byte v3, v12, v1

    const/4 v1, 0x7

    .line 2615
    invoke-static {v4, v11, v12, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0xb

    .line 2616
    aput-byte p7, v12, v1

    .line 2617
    invoke-static {v5, v11, v12, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x10

    .line 2618
    aput-byte p9, v12, v1

    .line 2619
    aget-byte v1, p10, v11

    const/16 v2, 0x11

    aput-byte v1, v12, v2

    .line 2620
    aget-byte v1, p10, v16

    const/16 v2, 0x12

    aput-byte v1, v12, v2

    const/16 v1, 0x13

    .line 2621
    aput-byte v6, v12, v1

    const/16 v1, 0x14

    move-object/from16 v2, p12

    .line 2622
    invoke-static {v2, v11, v12, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2623
    aget-byte v1, v12, v11

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v12, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2624
    invoke-direct {v0, v12}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2625
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v4, 0x5dc

    const/16 v5, 0xc3

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_9

    .line 2628
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v17

    if-nez v2, :cond_7

    .line 2630
    aput-byte v11, p14, v11

    const/16 v2, 0xff

    and-int/2addr v3, v2

    .line 2631
    invoke-static {v1, v9, v7, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_7
    const/16 v2, 0xff

    .line 2633
    aget-byte v3, v1, v17

    and-int/2addr v3, v2

    const/16 v4, 0xfc

    if-ne v3, v4, :cond_8

    .line 2635
    aget-byte v1, v1, v9

    aput-byte v1, p14, v11

    .line 2637
    :cond_8
    :goto_2
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v1, v1, v17

    and-int/2addr v1, v2

    return v1

    :cond_9
    const/16 v1, 0x30

    return v1

    :cond_a
    const/16 v2, 0xff

    return v2
.end method

.method public Fd_ReadReg(BB[B[B[BB[BB[B[B[B)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p8

    move-object/from16 v5, p10

    and-int/lit16 v6, v1, 0xff

    const/4 v11, 0x6

    const/16 v12, -0x3f

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x3

    const/4 v8, 0x4

    const/4 v7, 0x0

    if-ltz v6, :cond_4

    const/16 v9, 0x10

    if-ge v6, v9, :cond_4

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v6, v4, 0xc

    .line 2414
    new-array v6, v6, [B

    add-int/lit8 v10, v4, 0xb

    int-to-byte v10, v10

    .line 2415
    aput-byte v10, v6, v7

    .line 2416
    aput-byte p1, v6, v13

    .line 2417
    aput-byte v12, v6, v14

    .line 2418
    aput-byte v1, v6, v15

    if-lez v1, :cond_0

    if-ge v1, v9, :cond_0

    move-object/from16 v1, p3

    .line 2420
    invoke-static {v1, v7, v6, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v1, v4, 0x4

    .line 2421
    invoke-static {v2, v7, v6, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v11

    .line 2422
    invoke-static {v3, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2423
    aget-byte v1, v6, v7

    sub-int/2addr v1, v13

    invoke-direct {v0, v6, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2424
    invoke-direct {v0, v6}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2425
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0x5dc

    const/16 v4, 0xc1

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_3

    .line 2428
    aput-byte v7, p11, v7

    .line 2429
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v15

    if-nez v2, :cond_1

    .line 2431
    invoke-static {v1, v8, v5, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v9, 0xff

    goto :goto_0

    .line 2433
    :cond_1
    aget-byte v2, v1, v15

    const/16 v9, 0xff

    and-int/2addr v2, v9

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_2

    .line 2435
    aget-byte v1, v1, v8

    aput-byte v1, p11, v7

    .line 2437
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v1, v1, v15

    and-int/2addr v1, v9

    return v1

    :cond_3
    const/16 v1, 0x30

    return v1

    :cond_4
    const/16 v9, 0xff

    if-ne v6, v9, :cond_a

    if-nez v4, :cond_5

    return v9

    :cond_5
    and-int/lit16 v6, v4, 0xff

    .line 2446
    rem-int/lit8 v9, v6, 0x8

    if-nez v9, :cond_6

    .line 2448
    div-int/lit8 v6, v6, 0x8

    goto :goto_1

    .line 2452
    :cond_6
    div-int/lit8 v6, v6, 0x8

    add-int/2addr v6, v13

    :goto_1
    add-int/lit8 v9, v6, 0x10

    .line 2454
    new-array v9, v9, [B

    add-int/lit8 v10, v6, 0xf

    int-to-byte v10, v10

    .line 2455
    aput-byte v10, v9, v7

    .line 2456
    aput-byte p1, v9, v13

    .line 2457
    aput-byte v12, v9, v14

    .line 2458
    aput-byte v1, v9, v15

    .line 2459
    invoke-static {v2, v7, v9, v8, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2460
    invoke-static {v3, v7, v9, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0xa

    .line 2461
    aput-byte p6, v9, v1

    .line 2462
    aget-byte v1, p7, v7

    const/16 v2, 0xb

    aput-byte v1, v9, v2

    .line 2463
    aget-byte v1, p7, v13

    const/16 v2, 0xc

    aput-byte v1, v9, v2

    const/16 v1, 0xd

    .line 2464
    aput-byte v4, v9, v1

    const/16 v1, 0xe

    move-object/from16 v2, p9

    .line 2465
    invoke-static {v2, v7, v9, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2466
    aget-byte v1, v9, v7

    sub-int/2addr v1, v13

    invoke-direct {v0, v9, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2467
    invoke-direct {v0, v9}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2468
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0x5dc

    const/16 v4, 0xc1

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_9

    .line 2471
    aput-byte v7, p11, v7

    .line 2472
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v15

    if-nez v2, :cond_7

    .line 2474
    invoke-static {v1, v8, v5, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0xff

    goto :goto_2

    .line 2476
    :cond_7
    aget-byte v2, v1, v15

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0xfc

    if-ne v2, v4, :cond_8

    .line 2478
    aget-byte v1, v1, v8

    aput-byte v1, p11, v7

    .line 2480
    :cond_8
    :goto_2
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v1, v1, v15

    and-int/2addr v1, v3

    return v1

    :cond_9
    const/16 v1, 0x30

    return v1

    :cond_a
    const/16 v3, 0xff

    return v3
.end method

.method public Fd_StartLogging(BB[B[B[B[BB[BB[B[B)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p9

    const/4 v6, 0x0

    .line 2815
    aput-byte v6, p11, v6

    and-int/lit16 v7, v1, 0xff

    const/16 v11, 0xc6

    const/16 v12, -0x3a

    const/16 v13, 0x10

    const/16 v14, 0x8

    const/4 v15, 0x3

    const/16 v16, 0x1

    const/4 v9, 0x4

    const/4 v8, 0x2

    if-ltz v7, :cond_3

    if-ge v7, v13, :cond_3

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v7, v5, 0xe

    .line 2818
    new-array v7, v7, [B

    add-int/lit8 v10, v5, 0xd

    int-to-byte v10, v10

    .line 2819
    aput-byte v10, v7, v6

    .line 2820
    aput-byte p1, v7, v16

    .line 2821
    aput-byte v12, v7, v8

    .line 2822
    aput-byte v1, v7, v15

    if-lez v1, :cond_0

    if-ge v1, v13, :cond_0

    move-object/from16 v1, p3

    .line 2824
    invoke-static {v1, v6, v7, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v1, v5, 0x4

    .line 2825
    invoke-static {v2, v6, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v5, 0x6

    .line 2826
    invoke-static {v3, v6, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v14

    .line 2827
    invoke-static {v4, v6, v7, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2828
    aget-byte v1, v7, v6

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v7, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2829
    invoke-direct {v0, v7}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2830
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0x5dc

    invoke-direct {v0, v1, v2, v11, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_2

    .line 2833
    aput-byte v6, p11, v6

    .line 2834
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v15

    const/16 v10, 0xff

    and-int/2addr v2, v10

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_1

    .line 2836
    aget-byte v2, v1, v9

    aput-byte v2, p11, v6

    .line 2838
    :cond_1
    aget-byte v1, v1, v15

    and-int/2addr v1, v10

    return v1

    :cond_2
    const/16 v1, 0x30

    return v1

    :cond_3
    const/16 v10, 0xff

    if-ne v7, v10, :cond_8

    if-nez v5, :cond_4

    return v10

    :cond_4
    and-int/lit16 v7, v5, 0xff

    .line 2847
    rem-int/lit8 v10, v7, 0x8

    if-nez v10, :cond_5

    .line 2849
    div-int/2addr v7, v14

    goto :goto_0

    .line 2853
    :cond_5
    div-int/2addr v7, v14

    add-int/lit8 v7, v7, 0x1

    :goto_0
    add-int/lit8 v10, v7, 0x12

    .line 2855
    new-array v10, v10, [B

    add-int/lit8 v11, v7, 0x11

    int-to-byte v11, v11

    .line 2856
    aput-byte v11, v10, v6

    .line 2857
    aput-byte p1, v10, v16

    .line 2858
    aput-byte v12, v10, v8

    .line 2859
    aput-byte v1, v10, v15

    .line 2860
    invoke-static {v2, v6, v10, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x6

    .line 2861
    invoke-static {v3, v6, v10, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2862
    invoke-static {v4, v6, v10, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0xc

    .line 2863
    aput-byte p7, v10, v1

    .line 2864
    aget-byte v1, p8, v6

    const/16 v2, 0xd

    aput-byte v1, v10, v2

    .line 2865
    aget-byte v1, p8, v16

    const/16 v2, 0xe

    aput-byte v1, v10, v2

    const/16 v1, 0xf

    .line 2866
    aput-byte v5, v10, v1

    move-object/from16 v1, p10

    .line 2867
    invoke-static {v1, v6, v10, v13, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2868
    aget-byte v1, v10, v6

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v10, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2869
    invoke-direct {v0, v10}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2870
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0x5dc

    const/16 v4, 0xc6

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_7

    .line 2873
    aput-byte v6, p11, v6

    .line 2874
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v15

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0xfc

    if-ne v2, v4, :cond_6

    .line 2876
    aget-byte v2, v1, v9

    aput-byte v2, p11, v6

    .line 2878
    :cond_6
    aget-byte v1, v1, v15

    and-int/2addr v1, v3

    return v1

    :cond_7
    const/16 v1, 0x30

    return v1

    :cond_8
    const/16 v3, 0xff

    return v3
.end method

.method public Fd_StopLogging(BB[B[B[BB[BB[B[B)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p8

    const/4 v4, 0x0

    .line 2889
    aput-byte v4, p10, v4

    and-int/lit16 v5, v1, 0xff

    const/16 v8, 0x5dc

    const/16 v9, 0xc7

    const/16 v10, -0x39

    const/4 v11, 0x2

    const/16 v12, 0x10

    const/16 v13, 0x8

    const/4 v14, 0x3

    const/4 v15, 0x1

    const/4 v7, 0x4

    if-ltz v5, :cond_3

    if-ge v5, v12, :cond_3

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v5, v3, 0xe

    .line 2892
    new-array v5, v5, [B

    add-int/lit8 v6, v3, 0xd

    int-to-byte v6, v6

    .line 2893
    aput-byte v6, v5, v4

    .line 2894
    aput-byte p1, v5, v15

    .line 2895
    aput-byte v10, v5, v11

    .line 2896
    aput-byte v1, v5, v14

    if-lez v1, :cond_0

    if-ge v1, v12, :cond_0

    move-object/from16 v1, p3

    .line 2898
    invoke-static {v1, v4, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v1, v3, 0x4

    .line 2899
    invoke-static {v2, v4, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v13

    move-object/from16 v1, p5

    .line 2900
    invoke-static {v1, v4, v5, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2901
    aget-byte v1, v5, v4

    sub-int/2addr v1, v15

    invoke-direct {v0, v5, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2902
    invoke-direct {v0, v5}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2903
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    invoke-direct {v0, v1, v2, v9, v8}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_2

    .line 2906
    aput-byte v4, p10, v4

    .line 2907
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v14

    const/16 v6, 0xff

    and-int/2addr v2, v6

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_1

    .line 2909
    aget-byte v2, v1, v7

    aput-byte v2, p10, v4

    .line 2911
    :cond_1
    aget-byte v1, v1, v14

    and-int/2addr v1, v6

    return v1

    :cond_2
    const/16 v1, 0x30

    return v1

    :cond_3
    const/16 v6, 0xff

    if-ne v5, v6, :cond_8

    if-nez v3, :cond_4

    return v6

    :cond_4
    and-int/lit16 v5, v3, 0xff

    .line 2920
    rem-int/lit8 v6, v5, 0x8

    if-nez v6, :cond_5

    .line 2922
    div-int/2addr v5, v13

    goto :goto_0

    .line 2926
    :cond_5
    div-int/2addr v5, v13

    add-int/2addr v5, v15

    :goto_0
    add-int/lit8 v6, v5, 0x12

    .line 2928
    new-array v6, v6, [B

    add-int/lit8 v8, v5, 0x11

    int-to-byte v8, v8

    .line 2929
    aput-byte v8, v6, v4

    .line 2930
    aput-byte p1, v6, v15

    .line 2931
    aput-byte v10, v6, v11

    .line 2932
    aput-byte v1, v6, v14

    .line 2933
    invoke-static {v2, v4, v6, v7, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2934
    invoke-static {v2, v4, v6, v13, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0xc

    .line 2935
    aput-byte p6, v6, v1

    .line 2936
    aget-byte v1, p7, v4

    const/16 v2, 0xd

    aput-byte v1, v6, v2

    .line 2937
    aget-byte v1, p7, v15

    const/16 v2, 0xe

    aput-byte v1, v6, v2

    const/16 v1, 0xf

    .line 2938
    aput-byte v3, v6, v1

    move-object/from16 v1, p9

    .line 2939
    invoke-static {v1, v4, v6, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2940
    aget-byte v1, v6, v4

    sub-int/2addr v1, v15

    invoke-direct {v0, v6, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2941
    invoke-direct {v0, v6}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2942
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0x5dc

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_7

    .line 2945
    aput-byte v4, p10, v4

    .line 2946
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v14

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v5, 0xfc

    if-ne v2, v5, :cond_6

    .line 2948
    aget-byte v2, v1, v7

    aput-byte v2, p10, v4

    .line 2950
    :cond_6
    aget-byte v1, v1, v14

    and-int/2addr v1, v3

    return v1

    :cond_7
    const/16 v1, 0x30

    return v1

    :cond_8
    const/16 v3, 0xff

    return v3
.end method

.method public Fd_WriteMemory(BB[B[BI[B[BB[BB[BB[B[B)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p9

    move/from16 v7, p12

    and-int/lit16 v8, v1, 0xff

    const/16 v13, -0x3c

    const/4 v14, 0x5

    const/4 v15, 0x2

    const/16 v16, 0x3

    const/16 v17, 0x1

    const/4 v10, 0x4

    const/4 v9, 0x0

    if-ltz v8, :cond_3

    const/16 v11, 0x10

    if-ge v8, v11, :cond_3

    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v8, v7, 0x12

    add-int/2addr v8, v3

    .line 2650
    new-array v8, v8, [B

    add-int/lit8 v18, v7, 0x11

    add-int v12, v18, v3

    int-to-byte v12, v12

    .line 2651
    aput-byte v12, v8, v9

    .line 2652
    aput-byte p1, v8, v17

    .line 2653
    aput-byte v13, v8, v15

    int-to-byte v12, v3

    .line 2654
    aput-byte v12, v8, v16

    .line 2655
    aput-byte v1, v8, v10

    if-lez v1, :cond_0

    if-ge v1, v11, :cond_0

    move-object/from16 v1, p3

    .line 2657
    invoke-static {v1, v9, v8, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v1, v7, 0x5

    .line 2658
    invoke-static {v2, v9, v8, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v7, 0x7

    .line 2659
    invoke-static {v4, v9, v8, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v3

    .line 2660
    invoke-static {v5, v9, v8, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v7, 0xb

    .line 2661
    aput-byte p8, v8, v1

    add-int/lit8 v7, v7, 0xc

    .line 2662
    invoke-static {v6, v9, v8, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2663
    aget-byte v1, v8, v9

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v8, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2664
    invoke-direct {v0, v8}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2665
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0x5dc

    const/16 v4, 0xc4

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_2

    .line 2668
    aput-byte v9, p14, v9

    .line 2669
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v16

    const/16 v11, 0xff

    and-int/2addr v2, v11

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_1

    .line 2671
    aget-byte v2, v1, v10

    aput-byte v2, p14, v9

    .line 2673
    :cond_1
    aget-byte v1, v1, v16

    and-int/2addr v1, v11

    return v1

    :cond_2
    const/16 v1, 0x30

    return v1

    :cond_3
    const/16 v11, 0xff

    if-ne v8, v11, :cond_8

    if-nez v7, :cond_4

    return v11

    :cond_4
    and-int/lit16 v8, v7, 0xff

    .line 2682
    rem-int/lit8 v11, v8, 0x8

    if-nez v11, :cond_5

    .line 2684
    div-int/lit8 v8, v8, 0x8

    goto :goto_0

    .line 2688
    :cond_5
    div-int/lit8 v8, v8, 0x8

    add-int/lit8 v8, v8, 0x1

    :goto_0
    add-int/lit8 v11, v8, 0x16

    add-int/2addr v11, v3

    .line 2690
    new-array v11, v11, [B

    add-int/lit8 v12, v8, 0x15

    add-int/2addr v12, v3

    int-to-byte v12, v12

    .line 2691
    aput-byte v12, v11, v9

    .line 2692
    aput-byte p1, v11, v17

    .line 2693
    aput-byte v13, v11, v15

    int-to-byte v12, v3

    .line 2694
    aput-byte v12, v11, v16

    .line 2695
    aput-byte v1, v11, v10

    .line 2696
    invoke-static {v2, v9, v11, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x7

    .line 2697
    invoke-static {v4, v9, v11, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v3, 0x7

    .line 2698
    invoke-static {v5, v9, v11, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v3, 0xb

    .line 2699
    aput-byte p8, v11, v1

    add-int/lit8 v1, v3, 0xc

    .line 2700
    invoke-static {v6, v9, v11, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v3, 0x10

    .line 2701
    aput-byte p10, v11, v1

    add-int/lit8 v1, v3, 0x11

    .line 2702
    aget-byte v2, p11, v9

    aput-byte v2, v11, v1

    add-int/lit8 v1, v3, 0x12

    .line 2703
    aget-byte v2, p11, v17

    aput-byte v2, v11, v1

    add-int/lit8 v1, v3, 0x13

    .line 2704
    aput-byte v7, v11, v1

    add-int/lit8 v1, v3, 0x14

    move-object/from16 v2, p13

    .line 2705
    invoke-static {v2, v9, v11, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2706
    aget-byte v1, v11, v9

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v11, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2707
    invoke-direct {v0, v11}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2708
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0x5dc

    const/16 v4, 0xc4

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_7

    .line 2711
    aput-byte v9, p14, v9

    .line 2712
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v16

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0xfc

    if-ne v2, v4, :cond_6

    .line 2714
    aget-byte v2, v1, v10

    aput-byte v2, p14, v9

    .line 2716
    :cond_6
    aget-byte v1, v1, v16

    and-int/2addr v1, v3

    return v1

    :cond_7
    const/16 v1, 0x30

    return v1

    :cond_8
    const/16 v3, 0xff

    return v3
.end method

.method public Fd_WriteReg(BB[B[B[B[BB[BB[B[B)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p9

    and-int/lit16 v6, v1, 0xff

    const/16 v11, -0x3e

    const/16 v12, 0x10

    const/16 v13, 0x8

    const/4 v14, 0x3

    const/4 v15, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v9, 0x0

    if-ltz v6, :cond_3

    if-ge v6, v12, :cond_3

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v6, v5, 0xe

    .line 2492
    new-array v6, v6, [B

    add-int/lit8 v10, v5, 0xd

    int-to-byte v10, v10

    .line 2493
    aput-byte v10, v6, v9

    .line 2494
    aput-byte p1, v6, v15

    .line 2495
    aput-byte v11, v6, v7

    .line 2496
    aput-byte v1, v6, v14

    if-lez v1, :cond_0

    if-ge v1, v12, :cond_0

    move-object/from16 v1, p3

    .line 2498
    invoke-static {v1, v9, v6, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v1, v5, 0x4

    .line 2499
    invoke-static {v2, v9, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v5, 0x6

    .line 2500
    invoke-static {v3, v9, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v13

    .line 2501
    invoke-static {v4, v9, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2502
    aget-byte v1, v6, v9

    sub-int/2addr v1, v15

    invoke-direct {v0, v6, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2503
    invoke-direct {v0, v6}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2504
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0x5dc

    const/16 v4, 0xc2

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_2

    .line 2507
    aput-byte v9, p11, v9

    .line 2508
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v14

    const/16 v10, 0xff

    and-int/2addr v2, v10

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_1

    .line 2510
    aget-byte v2, v1, v8

    aput-byte v2, p11, v9

    .line 2512
    :cond_1
    aget-byte v1, v1, v14

    and-int/2addr v1, v10

    return v1

    :cond_2
    const/16 v1, 0x30

    return v1

    :cond_3
    const/16 v10, 0xff

    if-ne v6, v10, :cond_8

    if-nez v5, :cond_4

    return v10

    :cond_4
    and-int/lit16 v6, v5, 0xff

    .line 2521
    rem-int/lit8 v10, v6, 0x8

    if-nez v10, :cond_5

    .line 2523
    div-int/2addr v6, v13

    goto :goto_0

    .line 2527
    :cond_5
    div-int/2addr v6, v13

    add-int/2addr v6, v15

    :goto_0
    add-int/lit8 v10, v6, 0x12

    .line 2529
    new-array v10, v10, [B

    add-int/lit8 v12, v6, 0x11

    int-to-byte v12, v12

    .line 2530
    aput-byte v12, v10, v9

    .line 2531
    aput-byte p1, v10, v15

    .line 2532
    aput-byte v11, v10, v7

    .line 2533
    aput-byte v1, v10, v14

    .line 2534
    invoke-static {v2, v9, v10, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x6

    .line 2535
    invoke-static {v3, v9, v10, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2536
    invoke-static {v4, v9, v10, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0xc

    .line 2537
    aput-byte p7, v10, v1

    .line 2538
    aget-byte v1, p8, v9

    const/16 v2, 0xd

    aput-byte v1, v10, v2

    .line 2539
    aget-byte v1, p8, v15

    const/16 v2, 0xe

    aput-byte v1, v10, v2

    const/16 v1, 0xf

    .line 2540
    aput-byte v5, v10, v1

    move-object/from16 v1, p10

    const/16 v2, 0x10

    .line 2541
    invoke-static {v1, v9, v10, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2542
    aget-byte v1, v10, v9

    sub-int/2addr v1, v15

    invoke-direct {v0, v10, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2543
    invoke-direct {v0, v10}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2544
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0x5dc

    const/16 v4, 0xc2

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_7

    .line 2547
    aput-byte v9, p11, v9

    .line 2548
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v14

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0xfc

    if-ne v2, v4, :cond_6

    .line 2550
    aget-byte v2, v1, v8

    aput-byte v2, p11, v9

    .line 2552
    :cond_6
    aget-byte v1, v1, v14

    and-int/2addr v1, v3

    return v1

    :cond_7
    const/16 v1, 0x30

    return v1

    :cond_8
    const/16 v3, 0xff

    return v3
.end method

.method public GetCfgParameter(BB[B[I)I
    .locals 5

    const/4 v0, 0x6

    new-array v1, v0, [B

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v2, 0x1

    aput-byte p1, v1, v2

    const/4 p1, 0x2

    const/16 v4, -0x15

    aput-byte v4, v1, p1

    const/4 p1, 0x3

    aput-byte p2, v1, p1

    .line 3766
    aget-byte p2, v1, v3

    sub-int/2addr p2, v2

    invoke-direct {p0, v1, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3767
    invoke-direct {p0, v1}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3768
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v1, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v2, 0xeb

    const/16 v4, 0x3e8

    invoke-direct {p0, p2, v1, v2, v4}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_1

    .line 3771
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v1, p2, p1

    if-nez v1, :cond_0

    .line 3773
    iget-object v1, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    aget v1, v1, v3

    sub-int/2addr v1, v0

    aput v1, p4, v3

    const/4 v0, 0x4

    .line 3774
    aget p4, p4, v3

    invoke-static {p2, v0, p3, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 3778
    :cond_0
    aput v3, p4, v3

    .line 3780
    :goto_0
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_1
    const/16 p1, 0x30

    return p1
.end method

.method public GetCustomRegion(B[I[I[I[I)I
    .locals 7

    const/4 v0, 0x5

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput-byte v3, v1, v2

    const/4 v4, 0x1

    aput-byte p1, v1, v4

    const/4 p1, 0x2

    const/16 v5, -0x62

    aput-byte v5, v1, p1

    .line 3835
    aget-byte p1, v1, v2

    sub-int/2addr p1, v4

    invoke-direct {p0, v1, p1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3836
    invoke-direct {p0, v1}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3837
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v1, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v4, 0x9e

    const/16 v5, 0x1f4

    invoke-direct {p0, p1, v1, v4, v5}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p1

    if-nez p1, :cond_2

    .line 3840
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v1, p1, v2

    const/16 v4, 0xb

    const/4 v5, 0x6

    const/16 v6, 0x8

    if-ne v1, v4, :cond_0

    .line 3842
    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    aput v1, p2, v2

    .line 3843
    aget-byte p2, p1, v0

    and-int/lit16 p2, p2, 0xff

    aput p2, p3, v2

    .line 3844
    aget-byte p2, p1, v5

    and-int/lit16 p2, p2, 0xff

    aput p2, p4, v2

    const/4 p2, 0x7

    .line 3845
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    aget-byte p3, p1, v6

    and-int/lit16 p3, p3, 0xff

    shl-int/2addr p3, v6

    add-int/2addr p2, p3

    const/16 p3, 0x9

    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    add-int/2addr p2, p3

    aput p2, p5, v2

    goto :goto_0

    .line 3847
    :cond_0
    aget-byte p5, p1, v2

    if-ne p5, v6, :cond_1

    .line 3849
    aget-byte p5, p1, v3

    and-int/lit16 p5, p5, 0xff

    aput p5, p2, v2

    .line 3850
    aget-byte p2, p1, v0

    and-int/lit16 p2, p2, 0xff

    aput p2, p3, v2

    .line 3851
    aget-byte p2, p1, v5

    and-int/lit16 p2, p2, 0xff

    aput p2, p4, v2

    :cond_1
    :goto_0
    const/4 p2, 0x3

    .line 3853
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_2
    const/16 p1, 0x30

    return p1
.end method

.method public GetDeviceID(B[B)I
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/4 v3, 0x1

    aput-byte p1, v0, v3

    const/4 p1, 0x2

    const/16 v4, 0x4c

    aput-byte v4, v0, p1

    .line 1323
    aget-byte p1, v0, v1

    sub-int/2addr p1, v3

    invoke-direct {p0, v0, p1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1324
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1325
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0x3e8

    invoke-direct {p0, p1, v0, v4, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p1

    if-nez p1, :cond_1

    .line 1328
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    const/4 v0, 0x3

    aget-byte v3, p1, v0

    if-nez v3, :cond_0

    .line 1330
    invoke-static {p1, v2, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1332
    :cond_0
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_1
    const/16 p1, 0x30

    return p1
.end method

.method public GetGPIOStatus(B[B)I
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/4 v3, 0x1

    aput-byte p1, v0, v3

    const/4 p1, 0x2

    const/16 v4, 0x47

    aput-byte v4, v0, p1

    .line 1342
    aget-byte p1, v0, v1

    sub-int/2addr p1, v3

    invoke-direct {p0, v0, p1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1343
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1344
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0x3e8

    invoke-direct {p0, p1, v0, v4, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p1

    if-nez p1, :cond_1

    .line 1347
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    const/4 v0, 0x3

    aget-byte v3, p1, v0

    if-nez v3, :cond_0

    .line 1349
    aget-byte v2, p1, v2

    aput-byte v2, p2, v1

    .line 1351
    :cond_0
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_1
    const/16 p1, 0x30

    return p1
.end method

.method GetMemDataFromPort(B[B[II)I
    .locals 17

    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 3045
    aput v0, p3, v0

    const/16 v2, 0x7d0

    new-array v2, v2, [B

    .line 3050
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move/from16 v5, p1

    const/4 v6, 0x0

    .line 3053
    :cond_0
    :try_start_0
    iget-object v7, v1, Lcom/rfid/trans/BaseReader;->msg:Lcom/rfid/trans/MessageTran;

    invoke-virtual {v7}, Lcom/rfid/trans/MessageTran;->Read()[B

    move-result-object v7

    if-eqz v7, :cond_f

    .line 3056
    iget v8, v1, Lcom/rfid/trans/BaseReader;->logswitch:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    const-string v8, "Recv"

    .line 3058
    array-length v10, v7

    invoke-virtual {v1, v7, v0, v10}, Lcom/rfid/trans/BaseReader;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    iget-object v8, v1, Lcom/rfid/trans/BaseReader;->msgCallback:Lcom/rfid/trans/RFIDLogCallBack;

    if-eqz v8, :cond_1

    .line 3060
    invoke-interface {v8, v7}, Lcom/rfid/trans/RFIDLogCallBack;->RecvMessageCallback([B)V

    .line 3062
    :cond_1
    array-length v8, v7

    if-nez v8, :cond_2

    goto/16 :goto_5

    :cond_2
    add-int v10, v8, v6

    .line 3064
    new-array v11, v10, [B

    .line 3065
    invoke-static {v2, v0, v11, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3066
    invoke-static {v7, v0, v11, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x0

    :goto_0
    sub-int v7, v10, v6

    const/4 v8, 0x5

    if-le v7, v8, :cond_d

    and-int/lit16 v12, v5, 0xff

    const/16 v13, 0xff

    if-ne v12, v13, :cond_3

    const/4 v5, 0x0

    .line 3071
    :cond_3
    aget-byte v12, v11, v6

    and-int/2addr v12, v13

    if-lt v12, v8, :cond_b

    add-int/lit8 v12, v6, 0x1

    aget-byte v14, v11, v12

    if-ne v14, v5, :cond_b

    add-int/lit8 v14, v6, 0x2

    aget-byte v14, v11, v14

    and-int/2addr v14, v13

    move/from16 v15, p4

    if-ne v14, v15, :cond_a

    .line 3073
    aget-byte v14, v11, v6

    and-int/2addr v14, v13

    add-int v16, v6, v14

    add-int/lit8 v8, v16, 0x1

    if-ge v10, v8, :cond_4

    move-object/from16 v9, p2

    goto/16 :goto_4

    :cond_4
    add-int/lit8 v14, v14, 0x1

    .line 3075
    new-array v7, v14, [B

    .line 3076
    invoke-static {v11, v6, v7, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3077
    invoke-direct {v1, v7, v14}, Lcom/rfid/trans/BaseReader;->CheckCRC([BI)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3079
    aget-byte v8, v7, v0

    and-int/2addr v8, v13

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    const/4 v8, 0x3

    .line 3081
    aget-byte v12, v7, v8

    and-int/2addr v12, v13

    const/4 v14, 0x4

    .line 3082
    aget-byte v14, v7, v14

    and-int/2addr v14, v13

    mul-int/lit16 v14, v14, 0x100

    const/16 v16, 0x5

    aget-byte v0, v7, v16

    and-int/2addr v0, v13

    add-int/2addr v14, v0

    if-eq v12, v9, :cond_5

    if-ne v12, v8, :cond_8

    .line 3083
    :cond_5
    iget v0, v1, Lcom/rfid/trans/BaseReader;->packIndex:I

    add-int/lit8 v8, v0, 0x1

    if-ne v14, v8, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 3085
    iput v0, v1, Lcom/rfid/trans/BaseReader;->packIndex:I

    const/4 v0, 0x6

    .line 3086
    aget-byte v0, v7, v0

    and-int/2addr v0, v13

    if-lez v0, :cond_6

    const/4 v8, 0x7

    const/4 v13, 0x0

    .line 3089
    aget v14, p3, v13

    move-object/from16 v9, p2

    invoke-static {v7, v8, v9, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3090
    aget v7, p3, v13

    add-int/2addr v7, v0

    aput v7, p3, v13

    goto :goto_1

    :cond_6
    move-object/from16 v9, p2

    :goto_1
    const/4 v0, 0x1

    if-ne v12, v0, :cond_c

    const/4 v7, 0x0

    .line 3095
    aget v2, p3, v7

    if-lez v2, :cond_7

    return v7

    :cond_7
    return v0

    :cond_8
    return v12

    :cond_9
    move-object/from16 v9, p2

    const/4 v0, 0x1

    move v6, v12

    goto :goto_3

    :cond_a
    move-object/from16 v9, p2

    goto :goto_2

    :cond_b
    move-object/from16 v9, p2

    move/from16 v15, p4

    :goto_2
    const/4 v0, 0x1

    add-int/lit8 v6, v6, 0x1

    :cond_c
    :goto_3
    const/4 v0, 0x0

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v9, p2

    move/from16 v15, p4

    :goto_4
    if-le v10, v6, :cond_e

    const/4 v0, 0x0

    .line 3117
    invoke-static {v11, v6, v2, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v6, v7

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_6

    :cond_f
    :goto_5
    move-object/from16 v9, p2

    move/from16 v15, p4

    .line 3124
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v7, v3

    const-wide/16 v10, 0x4e20

    cmp-long v12, v7, v10

    if-ltz v12, :cond_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 3126
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :goto_7
    const/16 v0, 0x30

    return v0
.end method

.method public GetModuleDescribe(B[B)I
    .locals 6

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/4 v3, 0x1

    aput-byte p1, v0, v3

    const/16 p1, -0x1a

    const/4 v4, 0x2

    aput-byte p1, v0, v4

    const/4 p1, 0x3

    aput-byte v4, v0, p1

    .line 3866
    aget-byte v4, v0, v1

    sub-int/2addr v4, v3

    invoke-direct {p0, v0, v4}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3867
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3868
    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v3, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v4, 0xe6

    const/16 v5, 0x1f4

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v0

    if-nez v0, :cond_1

    .line 3871
    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v3, v0, p1

    if-nez v3, :cond_0

    aget-byte v3, v0, v1

    const/16 v4, 0x16

    if-ne v3, v4, :cond_0

    const/16 v3, 0x10

    .line 3873
    invoke-static {v0, v2, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3875
    :cond_0
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_1
    const/16 p1, 0x30

    return p1
.end method

.method public GetReadParameter(B[B)I
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/4 v3, 0x1

    aput-byte p1, v0, v3

    const/4 p1, 0x2

    const/16 v4, 0x77

    aput-byte v4, v0, p1

    .line 2180
    aget-byte p1, v0, v1

    sub-int/2addr p1, v3

    invoke-direct {p0, v0, p1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2181
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2182
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0x12c

    invoke-direct {p0, p1, v0, v4, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p1

    if-nez p1, :cond_0

    .line 2185
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    const/4 v0, 0x6

    invoke-static {p1, v2, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2186
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    const/4 p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/16 p1, 0x30

    return p1
.end method

.method public GetReaderInformation([B[B[B[B[B[B[B[B[B[B[B[B[B)I
    .locals 9

    move-object v0, p0

    const/4 v1, 0x5

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput-byte v4, v2, v3

    .line 221
    aget-byte v5, p1, v3

    const/4 v6, 0x1

    aput-byte v5, v2, v6

    const/4 v5, 0x2

    const/16 v7, 0x21

    aput-byte v7, v2, v5

    .line 223
    aget-byte v5, v2, v3

    sub-int/2addr v5, v6

    invoke-direct {p0, v2, v5}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 224
    invoke-direct {p0, v2}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 225
    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v5, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v8, 0x1f4

    invoke-direct {p0, v2, v5, v7, v8}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v2

    if-nez v2, :cond_0

    .line 228
    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v5, v2, v6

    aput-byte v5, p1, v3

    .line 229
    aget-byte v5, v2, v4

    aput-byte v5, p2, v3

    .line 230
    aget-byte v1, v2, v1

    aput-byte v1, p2, v6

    const/4 v1, 0x6

    .line 231
    aget-byte v5, v2, v1

    aput-byte v5, p3, v3

    const/4 v5, 0x7

    .line 232
    aget-byte v5, v2, v5

    aput-byte v5, p4, v3

    const/16 v5, 0x8

    .line 233
    aget-byte v6, v2, v5

    and-int/lit8 v6, v6, 0x3f

    int-to-byte v6, v6

    aput-byte v6, p6, v3

    const/16 v6, 0x9

    .line 234
    aget-byte v7, v2, v6

    and-int/lit8 v7, v7, 0x3f

    int-to-byte v7, v7

    aput-byte v7, p7, v3

    .line 235
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xc0

    shr-int/lit8 v4, v5, 0x4

    aget-byte v5, v2, v6

    and-int/lit16 v5, v5, 0xc0

    shr-int/lit8 v1, v5, 0x6

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p5, v3

    const/16 v1, 0xa

    .line 236
    aget-byte v1, v2, v1

    aput-byte v1, p8, v3

    const/16 v1, 0xb

    .line 237
    aget-byte v1, v2, v1

    aput-byte v1, p9, v3

    .line 238
    aget-byte v1, p9, v3

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x64

    int-to-long v4, v1

    iput-wide v4, v0, Lcom/rfid/trans/BaseReader;->maxScanTime:J

    const/16 v1, 0xc

    .line 239
    aget-byte v1, v2, v1

    aput-byte v1, p10, v3

    const/16 v1, 0xd

    .line 240
    aget-byte v1, v2, v1

    aput-byte v1, p11, v3

    const/16 v1, 0xe

    .line 241
    aget-byte v1, v2, v1

    aput-byte v1, p12, v3

    const/16 v1, 0xf

    .line 242
    aget-byte v1, v2, v1

    aput-byte v1, p13, v3

    return v3

    :cond_0
    const/16 v1, 0x30

    return v1
.end method

.method public GetWritePower(B[B)I
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/4 v3, 0x1

    aput-byte p1, v0, v3

    const/4 p1, 0x2

    const/16 v4, 0x7a

    aput-byte v4, v0, p1

    .line 1379
    aget-byte p1, v0, v1

    sub-int/2addr p1, v3

    invoke-direct {p0, v0, p1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1380
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1381
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0x3e8

    invoke-direct {p0, p1, v0, v4, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p1

    if-nez p1, :cond_1

    .line 1384
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    const/4 v0, 0x3

    aget-byte v3, p1, v0

    if-nez v3, :cond_0

    .line 1386
    aget-byte v2, p1, v2

    aput-byte v2, p2, v1

    .line 1388
    :cond_0
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_1
    const/16 p1, 0x30

    return p1
.end method

.method public InventoryMutiple_6B(BBBB[B[B[I)I
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/16 v1, 0xf

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, 0x51

    aput-byte v3, v0, p1

    const/4 p1, 0x3

    aput-byte p2, v0, p1

    const/4 p2, 0x4

    aput-byte p3, v0, p2

    const/4 p2, 0x5

    aput-byte p4, v0, p2

    const/4 p3, 0x6

    const/16 p4, 0x8

    .line 3600
    invoke-static {p5, v2, v0, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3601
    aget-byte p4, v0, v2

    sub-int/2addr p4, v1

    invoke-direct {p0, v0, p4}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3602
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3603
    iget-object p4, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object p5, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v0, 0xbb8

    invoke-direct {p0, p4, p5, v3, v0}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p4

    if-nez p4, :cond_2

    .line 3606
    iget-object p4, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p5, p4, p1

    const/16 v0, 0x15

    if-eq p5, v0, :cond_0

    aget-byte p5, p4, p1

    const/16 v0, 0x16

    if-eq p5, v0, :cond_0

    aget-byte p5, p4, p1

    const/16 v0, 0x17

    if-eq p5, v0, :cond_0

    aget-byte p5, p4, p1

    const/16 v0, 0x18

    if-ne p5, v0, :cond_1

    .line 3608
    :cond_0
    aget-byte p2, p4, p2

    and-int/lit16 p2, p2, 0xff

    aput p2, p7, v2

    .line 3609
    aget p2, p7, v2

    mul-int/lit8 p2, p2, 0xa

    invoke-static {p4, p3, p6, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3611
    :cond_1
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_2
    const/16 p1, 0x30

    return p1
.end method

.method public InventorySingle_6B(B[B)I
    .locals 5

    const/4 v0, 0x5

    new-array v1, v0, [B

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v2, 0x1

    aput-byte p1, v1, v2

    const/4 p1, 0x2

    const/16 v4, 0x50

    aput-byte v4, v1, p1

    .line 3577
    aget-byte p1, v1, v3

    sub-int/2addr p1, v2

    invoke-direct {p0, v1, p1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3578
    invoke-direct {p0, v1}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3579
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v1, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v2, 0x3e8

    invoke-direct {p0, p1, v1, v4, v2}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p1

    if-nez p1, :cond_1

    .line 3582
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    const/4 v1, 0x3

    aget-byte v2, p1, v1

    if-nez v2, :cond_0

    const/16 v2, 0xa

    .line 3584
    invoke-static {p1, v0, p2, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3586
    :cond_0
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_1
    const/16 p1, 0x30

    return p1
.end method

.method public InventorySingle_G2(BBBBBLjava/util/List;[I)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BBBBB",
            "Ljava/util/List<",
            "Lcom/rfid/trans/ReadTag;",
            ">;[I)I"
        }
    .end annotation

    move-object v6, p0

    const/16 v0, 0x9

    const/16 v1, -0x80

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez p5, :cond_0

    const/16 v11, 0xa

    new-array v11, v11, [B

    aput-byte v0, v11, v10

    aput-byte p1, v11, v9

    aput-byte v9, v11, v7

    aput-byte p2, v11, v8

    aput-byte p3, v11, v5

    aput-byte v10, v11, v4

    aput-byte v1, v11, v3

    aput-byte v8, v11, v2

    goto :goto_0

    :cond_0
    const/16 v11, 0xc

    new-array v11, v11, [B

    const/16 v12, 0xb

    aput-byte v12, v11, v10

    aput-byte p1, v11, v9

    aput-byte v9, v11, v7

    aput-byte p2, v11, v8

    aput-byte p3, v11, v5

    aput-byte p4, v11, v4

    aput-byte p5, v11, v3

    aput-byte v10, v11, v2

    const/16 v2, 0x8

    aput-byte v1, v11, v2

    aput-byte v8, v11, v0

    .line 754
    :goto_0
    aget-byte v0, v11, v10

    sub-int/2addr v0, v9

    invoke-direct {p0, v11, v0}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 755
    invoke-direct {p0, v11}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    const/4 v2, 0x1

    const/16 v3, 0x1f4

    move-object v0, p0

    move v1, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    .line 756
    invoke-direct/range {v0 .. v5}, Lcom/rfid/trans/BaseReader;->GetInventorySingleData(BIILjava/util/List;[I)I

    move-result v0

    return v0
.end method

.method public Inventory_G2(BBBBBBBBB[BB[BLjava/util/List;[IZ)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BBBBBBBBB[BB[B",
            "Ljava/util/List<",
            "Lcom/rfid/trans/ReadTag;",
            ">;[IZ)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p8

    move/from16 v2, p11

    move-object/from16 v3, p12

    const/16 v4, 0xb

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/16 v10, 0x8

    const/4 v11, 0x7

    const/16 v12, 0x9

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v2, :cond_1

    if-nez p5, :cond_0

    const/16 v2, 0xa

    new-array v2, v2, [B

    aput-byte v12, v2, v13

    aput-byte p1, v2, v14

    aput-byte v14, v2, v9

    aput-byte p2, v2, v8

    aput-byte p3, v2, v7

    aput-byte p6, v2, v6

    aput-byte p7, v2, v5

    aput-byte v1, v2, v11

    goto/16 :goto_1

    :cond_0
    const/16 v2, 0xc

    new-array v2, v2, [B

    aput-byte v4, v2, v13

    aput-byte p1, v2, v14

    aput-byte v14, v2, v9

    aput-byte p2, v2, v8

    aput-byte p3, v2, v7

    aput-byte p4, v2, v6

    aput-byte p5, v2, v5

    aput-byte p6, v2, v11

    aput-byte p7, v2, v10

    aput-byte v1, v2, v12

    goto :goto_1

    :cond_1
    and-int/lit16 v15, v2, 0xff

    add-int/2addr v15, v11

    .line 595
    div-int/2addr v15, v10

    if-nez p5, :cond_2

    add-int/lit8 v4, v15, 0xe

    .line 598
    new-array v4, v4, [B

    add-int/lit8 v12, v15, 0xd

    int-to-byte v12, v12

    .line 599
    aput-byte v12, v4, v13

    .line 600
    aput-byte p1, v4, v14

    .line 601
    aput-byte v14, v4, v9

    .line 602
    aput-byte p2, v4, v8

    .line 603
    aput-byte p3, v4, v7

    .line 604
    aput-byte p9, v4, v6

    .line 605
    aget-byte v6, p10, v13

    aput-byte v6, v4, v5

    .line 606
    aget-byte v5, p10, v14

    aput-byte v5, v4, v11

    .line 607
    aput-byte v2, v4, v10

    const/16 v2, 0x9

    .line 608
    invoke-static {v3, v13, v4, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v15, 0x9

    .line 609
    aput-byte p6, v4, v2

    add-int/lit8 v2, v15, 0xa

    .line 610
    aput-byte p7, v4, v2

    const/16 v2, 0xb

    add-int/2addr v15, v2

    .line 611
    aput-byte v1, v4, v15

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v15, 0x10

    .line 615
    new-array v4, v4, [B

    add-int/lit8 v12, v15, 0xf

    int-to-byte v12, v12

    .line 616
    aput-byte v12, v4, v13

    .line 617
    aput-byte p1, v4, v14

    .line 618
    aput-byte v14, v4, v9

    .line 619
    aput-byte p2, v4, v8

    .line 620
    aput-byte p3, v4, v7

    .line 621
    aput-byte p9, v4, v6

    .line 622
    aget-byte v6, p10, v13

    aput-byte v6, v4, v5

    .line 623
    aget-byte v5, p10, v14

    aput-byte v5, v4, v11

    .line 624
    aput-byte v2, v4, v10

    const/16 v2, 0x9

    .line 625
    invoke-static {v3, v13, v4, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v15, 0x9

    .line 626
    aput-byte p4, v4, v2

    add-int/lit8 v2, v15, 0xa

    .line 627
    aput-byte p5, v4, v2

    add-int/lit8 v2, v15, 0xb

    .line 628
    aput-byte p6, v4, v2

    add-int/lit8 v2, v15, 0xc

    .line 629
    aput-byte p7, v4, v2

    add-int/lit8 v15, v15, 0xd

    .line 630
    aput-byte v1, v4, v15

    :goto_0
    move-object v2, v4

    .line 634
    :goto_1
    aget-byte v3, v2, v13

    sub-int/2addr v3, v14

    invoke-direct {v0, v2, v3}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 635
    invoke-direct {v0, v2}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    const/4 v2, 0x1

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x64

    const/4 v3, 0x1

    move-object/from16 p2, p0

    move/from16 p3, p1

    move/from16 p4, v2

    move/from16 p5, v1

    move-object/from16 p6, p13

    move-object/from16 p7, p14

    move/from16 p8, v3

    move/from16 p9, p15

    .line 636
    invoke-direct/range {p2 .. p9}, Lcom/rfid/trans/BaseReader;->GetInventoryData(BIILjava/util/List;[IZZ)I

    move-result v1

    return v1
.end method

.method public Inventory_GB(BBBLjava/util/List;[I)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BBB",
            "Ljava/util/List<",
            "Lcom/rfid/trans/ReadTag;",
            ">;[I)I"
        }
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [B

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 v3, 0x2

    const/16 v4, 0x56

    aput-byte v4, v0, v3

    const/4 v3, 0x3

    aput-byte p2, v0, v3

    const/4 p2, 0x4

    aput-byte p3, v0, p2

    .line 784
    aget-byte p2, v0, v2

    sub-int/2addr p2, v1

    invoke-direct {p0, v0, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 785
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    and-int/lit16 p2, p3, 0xff

    mul-int/lit8 v3, p2, 0x64

    const/16 v2, 0x56

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p4

    move-object v5, p5

    .line 786
    invoke-direct/range {v0 .. v7}, Lcom/rfid/trans/BaseReader;->GetInventoryData(BIILjava/util/List;[IZZ)I

    move-result p1

    return p1
.end method

.method public Inventory_GJB(BBBBLjava/util/List;[I)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BBBB",
            "Ljava/util/List<",
            "Lcom/rfid/trans/ReadTag;",
            ">;[I)I"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 v3, 0x2

    const/16 v4, 0x56

    aput-byte v4, v0, v3

    const/4 v3, 0x3

    aput-byte p2, v0, v3

    const/4 p2, 0x4

    aput-byte p3, v0, p2

    const/4 p2, 0x5

    aput-byte p4, v0, p2

    .line 769
    aget-byte p2, v0, v2

    sub-int/2addr p2, v1

    invoke-direct {p0, v0, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 770
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    and-int/lit16 p2, p4, 0xff

    mul-int/lit8 v3, p2, 0x64

    const/16 v2, 0x56

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p5

    move-object v5, p6

    .line 771
    invoke-direct/range {v0 .. v7}, Lcom/rfid/trans/BaseReader;->GetInventoryData(BIILjava/util/List;[IZZ)I

    move-result p1

    return p1
.end method

.method public Inventory_Led(BBBB[BB[BB[BB[BBBBLjava/util/List;[I)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BBBB[BB[BB[BB[BBBB",
            "Ljava/util/List<",
            "Lcom/rfid/trans/ReadTag;",
            ">;[I)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v2, p14

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/16 v6, 0x19

    const/16 v7, 0x9

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v1, :cond_0

    const/16 v1, 0x12

    new-array v1, v1, [B

    const/16 v14, 0x11

    aput-byte v14, v1, v13

    aput-byte p1, v1, v12

    aput-byte v6, v1, v11

    aput-byte p2, v1, v10

    aput-byte p3, v1, v5

    aput-byte p8, v1, v4

    .line 1131
    aget-byte v4, p9, v13

    aput-byte v4, v1, v3

    .line 1132
    aget-byte v3, p9, v12

    aput-byte v3, v1, v9

    aput-byte p10, v1, v8

    .line 1134
    aget-byte v3, p11, v13

    aput-byte v3, v1, v7

    .line 1135
    aget-byte v3, p11, v12

    const/16 v4, 0xa

    aput-byte v3, v1, v4

    .line 1136
    aget-byte v3, p11, v11

    const/16 v4, 0xb

    aput-byte v3, v1, v4

    .line 1137
    aget-byte v3, p11, v10

    const/16 v4, 0xc

    aput-byte v3, v1, v4

    const/16 v3, 0xd

    aput-byte p12, v1, v3

    const/16 v3, 0xe

    aput-byte p13, v1, v3

    const/16 v3, 0xf

    aput-byte v2, v1, v3

    goto :goto_0

    :cond_0
    and-int/lit16 v14, v1, 0xff

    add-int/2addr v14, v9

    .line 1144
    div-int/2addr v14, v8

    add-int/lit8 v15, v14, 0x16

    .line 1145
    new-array v15, v15, [B

    add-int/lit8 v7, v14, 0x15

    int-to-byte v7, v7

    .line 1146
    aput-byte v7, v15, v13

    .line 1147
    aput-byte p1, v15, v12

    .line 1148
    aput-byte v6, v15, v11

    .line 1149
    aput-byte p2, v15, v10

    .line 1150
    aput-byte p3, v15, v5

    .line 1152
    aput-byte p4, v15, v4

    .line 1153
    aget-byte v4, p5, v13

    aput-byte v4, v15, v3

    .line 1154
    aget-byte v3, p5, v12

    aput-byte v3, v15, v9

    .line 1155
    aput-byte v1, v15, v8

    if-lez v14, :cond_1

    move-object/from16 v1, p7

    const/16 v3, 0x9

    .line 1156
    invoke-static {v1, v13, v15, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    add-int/lit8 v1, v14, 0x9

    .line 1158
    aput-byte p8, v15, v1

    add-int/lit8 v1, v14, 0xa

    .line 1159
    aget-byte v3, p9, v13

    aput-byte v3, v15, v1

    add-int/lit8 v1, v14, 0xb

    .line 1160
    aget-byte v3, p9, v12

    aput-byte v3, v15, v1

    add-int/lit8 v1, v14, 0xc

    .line 1161
    aput-byte p10, v15, v1

    add-int/lit8 v1, v14, 0xd

    .line 1162
    aget-byte v3, p11, v13

    aput-byte v3, v15, v1

    add-int/lit8 v1, v14, 0xe

    .line 1163
    aget-byte v3, p11, v12

    aput-byte v3, v15, v1

    add-int/lit8 v1, v14, 0xf

    .line 1164
    aget-byte v3, p11, v11

    aput-byte v3, v15, v1

    add-int/lit8 v1, v14, 0x10

    .line 1165
    aget-byte v3, p11, v10

    aput-byte v3, v15, v1

    add-int/lit8 v1, v14, 0x11

    .line 1166
    aput-byte p12, v15, v1

    add-int/lit8 v1, v14, 0x12

    .line 1167
    aput-byte p13, v15, v1

    add-int/lit8 v14, v14, 0x13

    .line 1168
    aput-byte v2, v15, v14

    move-object v1, v15

    .line 1171
    :goto_0
    aget-byte v3, v1, v13

    sub-int/2addr v3, v12

    invoke-direct {v0, v1, v3}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1172
    invoke-direct {v0, v1}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    const/16 v1, 0x19

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x64

    move-object/from16 p2, p0

    move/from16 p3, p1

    move/from16 p4, v1

    move/from16 p5, v2

    move-object/from16 p6, p15

    move-object/from16 p7, p16

    .line 1173
    invoke-direct/range {p2 .. p7}, Lcom/rfid/trans/BaseReader;->GetInventoryMixData_led(BIILjava/util/List;[I)I

    move-result v1

    return v1
.end method

.method public Inventory_Mix(BBBB[BB[BB[BB[BBBBLjava/util/List;[I)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BBBB[BB[BB[BB[BBBB",
            "Ljava/util/List<",
            "Lcom/rfid/trans/ReadTag;",
            ">;[I)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v2, p14

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/16 v6, 0x19

    const/16 v7, 0x9

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v1, :cond_0

    const/16 v1, 0x12

    new-array v1, v1, [B

    const/16 v14, 0x11

    aput-byte v14, v1, v13

    aput-byte p1, v1, v12

    aput-byte v6, v1, v11

    aput-byte p2, v1, v10

    aput-byte p3, v1, v5

    aput-byte p8, v1, v4

    .line 941
    aget-byte v4, p9, v13

    aput-byte v4, v1, v3

    .line 942
    aget-byte v3, p9, v12

    aput-byte v3, v1, v9

    aput-byte p10, v1, v8

    .line 944
    aget-byte v3, p11, v13

    aput-byte v3, v1, v7

    .line 945
    aget-byte v3, p11, v12

    const/16 v4, 0xa

    aput-byte v3, v1, v4

    .line 946
    aget-byte v3, p11, v11

    const/16 v4, 0xb

    aput-byte v3, v1, v4

    .line 947
    aget-byte v3, p11, v10

    const/16 v4, 0xc

    aput-byte v3, v1, v4

    const/16 v3, 0xd

    aput-byte p12, v1, v3

    const/16 v3, 0xe

    aput-byte p13, v1, v3

    const/16 v3, 0xf

    aput-byte v2, v1, v3

    goto :goto_0

    :cond_0
    and-int/lit16 v14, v1, 0xff

    add-int/2addr v14, v9

    .line 954
    div-int/2addr v14, v8

    add-int/lit8 v15, v14, 0x16

    .line 955
    new-array v15, v15, [B

    add-int/lit8 v7, v14, 0x15

    int-to-byte v7, v7

    .line 956
    aput-byte v7, v15, v13

    .line 957
    aput-byte p1, v15, v12

    .line 958
    aput-byte v6, v15, v11

    .line 959
    aput-byte p2, v15, v10

    .line 960
    aput-byte p3, v15, v5

    .line 962
    aput-byte p4, v15, v4

    .line 963
    aget-byte v4, p5, v13

    aput-byte v4, v15, v3

    .line 964
    aget-byte v3, p5, v12

    aput-byte v3, v15, v9

    .line 965
    aput-byte v1, v15, v8

    if-lez v14, :cond_1

    move-object/from16 v1, p7

    const/16 v3, 0x9

    .line 966
    invoke-static {v1, v13, v15, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    add-int/lit8 v1, v14, 0x9

    .line 968
    aput-byte p8, v15, v1

    add-int/lit8 v1, v14, 0xa

    .line 969
    aget-byte v3, p9, v13

    aput-byte v3, v15, v1

    add-int/lit8 v1, v14, 0xb

    .line 970
    aget-byte v3, p9, v12

    aput-byte v3, v15, v1

    add-int/lit8 v1, v14, 0xc

    .line 971
    aput-byte p10, v15, v1

    add-int/lit8 v1, v14, 0xd

    .line 972
    aget-byte v3, p11, v13

    aput-byte v3, v15, v1

    add-int/lit8 v1, v14, 0xe

    .line 973
    aget-byte v3, p11, v12

    aput-byte v3, v15, v1

    add-int/lit8 v1, v14, 0xf

    .line 974
    aget-byte v3, p11, v11

    aput-byte v3, v15, v1

    add-int/lit8 v1, v14, 0x10

    .line 975
    aget-byte v3, p11, v10

    aput-byte v3, v15, v1

    add-int/lit8 v1, v14, 0x11

    .line 976
    aput-byte p12, v15, v1

    add-int/lit8 v1, v14, 0x12

    .line 977
    aput-byte p13, v15, v1

    add-int/lit8 v14, v14, 0x13

    .line 978
    aput-byte v2, v15, v14

    move-object v1, v15

    .line 981
    :goto_0
    aget-byte v3, v1, v13

    sub-int/2addr v3, v12

    invoke-direct {v0, v1, v3}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 982
    invoke-direct {v0, v1}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    const-string v1, ""

    .line 983
    iput-object v1, v0, Lcom/rfid/trans/BaseReader;->strEPC:Ljava/lang/String;

    const/16 v1, 0x19

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x64

    move-object/from16 p2, p0

    move/from16 p3, p1

    move/from16 p4, v1

    move/from16 p5, v2

    move-object/from16 p6, p15

    move-object/from16 p7, p16

    .line 984
    invoke-direct/range {p2 .. p7}, Lcom/rfid/trans/BaseReader;->GetInventoryMixData(BIILjava/util/List;[I)I

    move-result v1

    return v1
.end method

.method public Inventory_NoCallback(BBBBBBBBB[BB[BLjava/util/List;[IZ)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BBBBBBBBB[BB[B",
            "Ljava/util/List<",
            "Lcom/rfid/trans/ReadTag;",
            ">;[IZ)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p8

    move/from16 v2, p11

    move-object/from16 v3, p12

    const/16 v4, 0xb

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/16 v10, 0x8

    const/4 v11, 0x7

    const/16 v12, 0x9

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v2, :cond_1

    if-nez p5, :cond_0

    const/16 v2, 0xa

    new-array v2, v2, [B

    aput-byte v12, v2, v13

    aput-byte p1, v2, v14

    aput-byte v14, v2, v9

    aput-byte p2, v2, v8

    aput-byte p3, v2, v7

    aput-byte p6, v2, v6

    aput-byte p7, v2, v5

    aput-byte v1, v2, v11

    goto/16 :goto_1

    :cond_0
    const/16 v2, 0xc

    new-array v2, v2, [B

    aput-byte v4, v2, v13

    aput-byte p1, v2, v14

    aput-byte v14, v2, v9

    aput-byte p2, v2, v8

    aput-byte p3, v2, v7

    aput-byte p4, v2, v6

    aput-byte p5, v2, v5

    aput-byte p6, v2, v11

    aput-byte p7, v2, v10

    aput-byte v1, v2, v12

    goto :goto_1

    :cond_1
    and-int/lit16 v15, v2, 0xff

    add-int/2addr v15, v11

    .line 679
    div-int/2addr v15, v10

    if-nez p5, :cond_2

    add-int/lit8 v4, v15, 0xe

    .line 682
    new-array v4, v4, [B

    add-int/lit8 v12, v15, 0xd

    int-to-byte v12, v12

    .line 683
    aput-byte v12, v4, v13

    .line 684
    aput-byte p1, v4, v14

    .line 685
    aput-byte v14, v4, v9

    .line 686
    aput-byte p2, v4, v8

    .line 687
    aput-byte p3, v4, v7

    .line 688
    aput-byte p9, v4, v6

    .line 689
    aget-byte v6, p10, v13

    aput-byte v6, v4, v5

    .line 690
    aget-byte v5, p10, v14

    aput-byte v5, v4, v11

    .line 691
    aput-byte v2, v4, v10

    const/16 v2, 0x9

    .line 692
    invoke-static {v3, v13, v4, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v15, 0x9

    .line 693
    aput-byte p6, v4, v2

    add-int/lit8 v2, v15, 0xa

    .line 694
    aput-byte p7, v4, v2

    const/16 v2, 0xb

    add-int/2addr v15, v2

    .line 695
    aput-byte v1, v4, v15

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v15, 0x10

    .line 699
    new-array v4, v4, [B

    add-int/lit8 v12, v15, 0xf

    int-to-byte v12, v12

    .line 700
    aput-byte v12, v4, v13

    .line 701
    aput-byte p1, v4, v14

    .line 702
    aput-byte v14, v4, v9

    .line 703
    aput-byte p2, v4, v8

    .line 704
    aput-byte p3, v4, v7

    .line 705
    aput-byte p9, v4, v6

    .line 706
    aget-byte v6, p10, v13

    aput-byte v6, v4, v5

    .line 707
    aget-byte v5, p10, v14

    aput-byte v5, v4, v11

    .line 708
    aput-byte v2, v4, v10

    const/16 v2, 0x9

    .line 709
    invoke-static {v3, v13, v4, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v15, 0x9

    .line 710
    aput-byte p4, v4, v2

    add-int/lit8 v2, v15, 0xa

    .line 711
    aput-byte p5, v4, v2

    add-int/lit8 v2, v15, 0xb

    .line 712
    aput-byte p6, v4, v2

    add-int/lit8 v2, v15, 0xc

    .line 713
    aput-byte p7, v4, v2

    add-int/lit8 v15, v15, 0xd

    .line 714
    aput-byte v1, v4, v15

    :goto_0
    move-object v2, v4

    .line 718
    :goto_1
    aget-byte v3, v2, v13

    sub-int/2addr v3, v14

    invoke-direct {v0, v2, v3}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 719
    invoke-direct {v0, v2}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    const/4 v2, 0x1

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x64

    const/4 v3, 0x0

    move-object/from16 p2, p0

    move/from16 p3, p1

    move/from16 p4, v2

    move/from16 p5, v1

    move-object/from16 p6, p13

    move-object/from16 p7, p14

    move/from16 p8, v3

    move/from16 p9, p15

    .line 720
    invoke-direct/range {p2 .. p9}, Lcom/rfid/trans/BaseReader;->GetInventoryData(BIILjava/util/List;[IZZ)I

    move-result v1

    return v1
.end method

.method public Kill_G2(BB[B[BB[BB[B[B)I
    .locals 15

    move-object v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p7

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/16 v9, 0xff

    const/4 v10, 0x0

    if-ltz v1, :cond_1

    const/16 v11, 0x10

    if-ge v1, v11, :cond_1

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v11, v3, 0xa

    .line 1971
    new-array v11, v11, [B

    add-int/lit8 v12, v3, 0x9

    int-to-byte v12, v12

    .line 1972
    aput-byte v12, v11, v10

    .line 1973
    aput-byte p1, v11, v6

    .line 1974
    aput-byte v4, v11, v5

    .line 1975
    aput-byte v1, v11, v7

    if-lez v1, :cond_0

    move-object/from16 v1, p3

    .line 1977
    invoke-static {v1, v10, v11, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/2addr v3, v8

    .line 1978
    invoke-static {v2, v10, v11, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    and-int/lit16 v11, v1, 0xff

    if-ne v11, v9, :cond_6

    and-int/lit16 v11, v3, 0xff

    add-int/lit8 v11, v11, 0x7

    const/16 v12, 0x8

    .line 1984
    div-int/2addr v11, v12

    add-int/lit8 v13, v11, 0xe

    .line 1985
    new-array v13, v13, [B

    add-int/lit8 v14, v11, 0xd

    int-to-byte v14, v14

    .line 1986
    aput-byte v14, v13, v10

    .line 1987
    aput-byte p1, v13, v6

    .line 1988
    aput-byte v4, v13, v5

    .line 1989
    aput-byte v1, v13, v7

    .line 1990
    invoke-static {v2, v10, v13, v8, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1991
    aput-byte p5, v13, v12

    .line 1992
    aget-byte v1, p6, v10

    const/16 v2, 0x9

    aput-byte v1, v13, v2

    .line 1993
    aget-byte v1, p6, v6

    const/16 v2, 0xa

    aput-byte v1, v13, v2

    const/16 v1, 0xb

    .line 1994
    aput-byte v3, v13, v1

    if-lez v11, :cond_2

    const/16 v1, 0xc

    move-object/from16 v2, p8

    .line 1996
    invoke-static {v2, v10, v13, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move-object v11, v13

    .line 2003
    :goto_0
    aget-byte v1, v11, v10

    sub-int/2addr v1, v6

    invoke-direct {p0, v11, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2004
    invoke-direct {p0, v11}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2005
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0x3e8

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_5

    .line 2008
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v7

    if-nez v2, :cond_3

    .line 2010
    aput-byte v10, p9, v10

    goto :goto_1

    .line 2012
    :cond_3
    aget-byte v2, v1, v7

    and-int/2addr v2, v9

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_4

    .line 2014
    aget-byte v2, v1, v8

    aput-byte v2, p9, v10

    .line 2016
    :cond_4
    :goto_1
    aget-byte v1, v1, v7

    and-int/2addr v1, v9

    return v1

    :cond_5
    const/16 v1, 0x30

    return v1

    :cond_6
    return v9
.end method

.method public Kill_G2(BB[B[B[B)I
    .locals 6

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, v0, 0xa

    .line 1939
    new-array v1, v1, [B

    add-int/lit8 v2, v0, 0x9

    int-to-byte v2, v2

    const/4 v3, 0x0

    .line 1940
    aput-byte v2, v1, v3

    const/4 v2, 0x1

    .line 1941
    aput-byte p1, v1, v2

    const/4 p1, 0x2

    const/4 v4, 0x5

    .line 1942
    aput-byte v4, v1, p1

    const/4 p1, 0x3

    .line 1943
    aput-byte p2, v1, p1

    const/4 v5, 0x4

    if-lez p2, :cond_0

    .line 1945
    invoke-static {p3, v3, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/2addr v0, v5

    .line 1946
    invoke-static {p4, v3, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1947
    aget-byte p2, v1, v3

    sub-int/2addr p2, v2

    invoke-direct {p0, v1, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1948
    invoke-direct {p0, v1}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1949
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object p3, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 p4, 0x3e8

    invoke-direct {p0, p2, p3, v4, p4}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_3

    .line 1952
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p3, p2, p1

    if-nez p3, :cond_1

    .line 1954
    aput-byte v3, p5, v3

    goto :goto_0

    .line 1956
    :cond_1
    aget-byte p3, p2, p1

    and-int/lit16 p3, p3, 0xff

    const/16 p4, 0xfc

    if-ne p3, p4, :cond_2

    .line 1958
    aget-byte p3, p2, v5

    aput-byte p3, p5, v3

    .line 1960
    :cond_2
    :goto_0
    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_3
    const/16 p1, 0x30

    return p1
.end method

.method public Kill_GB(BB[B[B[B)I
    .locals 8

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, v0, 0xa

    .line 3499
    new-array v1, v1, [B

    add-int/lit8 v0, v0, 0x9

    int-to-byte v0, v0

    const/4 v2, 0x0

    .line 3500
    aput-byte v0, v1, v2

    const/4 v0, 0x1

    .line 3501
    aput-byte p1, v1, v0

    const/4 p1, 0x2

    const/16 v3, 0x5c

    .line 3502
    aput-byte v3, v1, p1

    const/4 v4, 0x3

    .line 3503
    aput-byte p2, v1, v4

    and-int/lit16 v5, p2, 0xff

    const/16 v6, 0xff

    if-ne v5, v6, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 v5, 0x4

    if-lez p2, :cond_1

    mul-int/lit8 v7, p2, 0x2

    .line 3509
    invoke-static {p3, v2, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v5

    .line 3510
    invoke-static {p4, v2, v1, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3511
    aget-byte p1, v1, v2

    sub-int/2addr p1, v0

    invoke-direct {p0, v1, p1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3512
    invoke-direct {p0, v1}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3513
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 p3, 0x3e8

    invoke-direct {p0, p1, p2, v3, p3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p1

    if-nez p1, :cond_4

    .line 3516
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p2, p1, v4

    if-nez p2, :cond_2

    .line 3518
    aput-byte v2, p5, v2

    goto :goto_0

    .line 3520
    :cond_2
    aget-byte p2, p1, v4

    and-int/2addr p2, v6

    const/16 p3, 0xfc

    if-ne p2, p3, :cond_3

    .line 3522
    aget-byte p2, p1, v5

    aput-byte p2, p5, v2

    .line 3524
    :cond_3
    :goto_0
    aget-byte p1, p1, v4

    and-int/2addr p1, v6

    return p1

    :cond_4
    const/16 p1, 0x30

    return p1
.end method

.method public Kill_GJB(BB[B[B[B)I
    .locals 8

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, v0, 0xa

    .line 3308
    new-array v1, v1, [B

    add-int/lit8 v0, v0, 0x9

    int-to-byte v0, v0

    const/4 v2, 0x0

    .line 3309
    aput-byte v0, v1, v2

    const/4 v0, 0x1

    .line 3310
    aput-byte p1, v1, v0

    const/4 p1, 0x2

    const/16 v3, 0x5c

    .line 3311
    aput-byte v3, v1, p1

    const/4 v4, 0x3

    .line 3312
    aput-byte p2, v1, v4

    and-int/lit16 v5, p2, 0xff

    const/16 v6, 0xff

    if-ne v5, v6, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 v5, 0x4

    if-lez p2, :cond_1

    mul-int/lit8 v7, p2, 0x2

    .line 3318
    invoke-static {p3, v2, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v5

    .line 3319
    invoke-static {p4, v2, v1, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3320
    aget-byte p1, v1, v2

    sub-int/2addr p1, v0

    invoke-direct {p0, v1, p1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3321
    invoke-direct {p0, v1}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3322
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 p3, 0x3e8

    invoke-direct {p0, p1, p2, v3, p3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p1

    if-nez p1, :cond_4

    .line 3325
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p2, p1, v4

    if-nez p2, :cond_2

    .line 3327
    aput-byte v2, p5, v2

    goto :goto_0

    .line 3329
    :cond_2
    aget-byte p2, p1, v4

    and-int/2addr p2, v6

    const/16 p3, 0xfc

    if-ne p2, p3, :cond_3

    .line 3331
    aget-byte p2, p1, v5

    aput-byte p2, p5, v2

    .line 3333
    :cond_3
    :goto_0
    aget-byte p1, p1, v4

    and-int/2addr p1, v6

    return p1

    :cond_4
    const/16 p1, 0x30

    return p1
.end method

.method public LedOn_kx2005x(BB[BB[BB[BB[B)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p5

    move/from16 v3, p8

    and-int/lit16 v4, v1, 0xff

    const/16 v6, 0xbb8

    const/16 v7, 0xcc

    const/4 v8, 0x5

    const/16 v9, -0x34

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x1

    const/16 v14, 0xff

    const/4 v15, 0x0

    const/16 v5, 0x10

    if-ge v4, v5, :cond_2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v3, 0xb

    .line 2295
    new-array v4, v4, [B

    add-int/lit8 v5, v3, 0xa

    int-to-byte v5, v5

    .line 2296
    aput-byte v5, v4, v15

    .line 2297
    aput-byte p1, v4, v13

    .line 2298
    aput-byte v9, v4, v10

    .line 2299
    aput-byte v1, v4, v11

    if-lez v1, :cond_0

    const/16 v5, 0x20

    if-ge v1, v5, :cond_0

    move-object/from16 v1, p3

    .line 2300
    invoke-static {v1, v15, v4, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v1, v3, 0x4

    .line 2301
    aput-byte p4, v4, v1

    add-int/2addr v3, v8

    .line 2302
    invoke-static {v2, v15, v4, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2303
    aget-byte v1, v4, v15

    sub-int/2addr v1, v13

    invoke-direct {v0, v4, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2304
    invoke-direct {v0, v4}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2305
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    invoke-direct {v0, v1, v2, v7, v6}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_1

    .line 2307
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v1, v1, v11

    and-int/2addr v1, v14

    return v1

    :cond_1
    const/16 v1, 0x30

    return v1

    :cond_2
    if-ne v4, v14, :cond_6

    if-nez v3, :cond_3

    return v14

    :cond_3
    and-int/lit16 v4, v3, 0xff

    .line 2314
    rem-int/lit8 v5, v4, 0x8

    if-nez v5, :cond_4

    .line 2315
    div-int/lit8 v4, v4, 0x8

    goto :goto_0

    .line 2317
    :cond_4
    div-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v13

    :goto_0
    add-int/lit8 v5, v4, 0xf

    .line 2319
    new-array v5, v5, [B

    add-int/lit8 v14, v4, 0xe

    int-to-byte v14, v14

    .line 2320
    aput-byte v14, v5, v15

    .line 2321
    aput-byte p1, v5, v13

    .line 2322
    aput-byte v9, v5, v10

    .line 2323
    aput-byte v1, v5, v11

    .line 2324
    aput-byte p4, v5, v12

    .line 2325
    invoke-static {v2, v15, v5, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x9

    .line 2326
    aput-byte p6, v5, v1

    .line 2327
    aget-byte v1, p7, v15

    const/16 v2, 0xa

    aput-byte v1, v5, v2

    .line 2328
    aget-byte v1, p7, v13

    const/16 v2, 0xb

    aput-byte v1, v5, v2

    const/16 v1, 0xc

    .line 2329
    aput-byte v3, v5, v1

    const/16 v1, 0xd

    move-object/from16 v2, p9

    .line 2330
    invoke-static {v2, v15, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2331
    aget-byte v1, v5, v15

    sub-int/2addr v1, v13

    invoke-direct {v0, v5, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2332
    invoke-direct {v0, v5}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2333
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    invoke-direct {v0, v1, v2, v7, v6}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_5

    .line 2335
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v1, v1, v11

    const/16 v2, 0xff

    and-int/2addr v1, v2

    return v1

    :cond_5
    const/16 v1, 0x30

    return v1

    :cond_6
    const/16 v2, 0xff

    return v2
.end method

.method public Lock_6B(BB[B)I
    .locals 5

    const/16 v0, 0xe

    new-array v0, v0, [B

    const/16 v1, 0xd

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, 0x55

    aput-byte v3, v0, p1

    const/4 p1, 0x3

    aput-byte p2, v0, p1

    const/4 p2, 0x4

    const/16 v4, 0x8

    .line 3665
    invoke-static {p3, v2, v0, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3666
    aget-byte p2, v0, v2

    sub-int/2addr p2, v1

    invoke-direct {p0, v0, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3667
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3668
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object p3, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v3, v0}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_0

    .line 3671
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/16 p1, 0x30

    return p1
.end method

.method public Lock_G2(BB[BBB[BB[BB[B[B)I
    .locals 14

    move-object v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p6

    move/from16 v3, p9

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x6

    const/4 v8, 0x4

    const/16 v9, 0xff

    const/4 v10, 0x0

    if-ltz v1, :cond_1

    const/16 v11, 0x10

    if-ge v1, v11, :cond_1

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v11, v3, 0xc

    .line 2028
    new-array v11, v11, [B

    add-int/lit8 v12, v3, 0xb

    int-to-byte v12, v12

    .line 2029
    aput-byte v12, v11, v10

    .line 2030
    aput-byte p1, v11, v5

    .line 2031
    aput-byte v7, v11, v4

    .line 2032
    aput-byte v1, v11, v6

    if-lez v1, :cond_0

    move-object/from16 v1, p3

    .line 2034
    invoke-static {v1, v10, v11, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v1, v3, 0x4

    .line 2035
    aput-byte p4, v11, v1

    add-int/lit8 v1, v3, 0x5

    .line 2036
    aput-byte p5, v11, v1

    add-int/2addr v3, v7

    .line 2037
    invoke-static {v2, v10, v11, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    and-int/lit16 v11, v1, 0xff

    if-ne v11, v9, :cond_6

    and-int/lit16 v11, v3, 0xff

    add-int/lit8 v11, v11, 0x7

    .line 2043
    div-int/lit8 v11, v11, 0x8

    add-int/lit8 v12, v11, 0x10

    .line 2044
    new-array v12, v12, [B

    add-int/lit8 v13, v11, 0xf

    int-to-byte v13, v13

    .line 2045
    aput-byte v13, v12, v10

    .line 2046
    aput-byte p1, v12, v5

    .line 2047
    aput-byte v7, v12, v4

    .line 2048
    aput-byte v1, v12, v6

    .line 2049
    aput-byte p4, v12, v8

    const/4 v1, 0x5

    .line 2050
    aput-byte p5, v12, v1

    .line 2051
    invoke-static {v2, v10, v12, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0xa

    .line 2052
    aput-byte p7, v12, v1

    .line 2053
    aget-byte v1, p8, v10

    const/16 v2, 0xb

    aput-byte v1, v12, v2

    .line 2054
    aget-byte v1, p8, v5

    const/16 v2, 0xc

    aput-byte v1, v12, v2

    const/16 v1, 0xd

    .line 2055
    aput-byte v3, v12, v1

    if-lez v11, :cond_2

    const/16 v1, 0xe

    move-object/from16 v2, p10

    .line 2057
    invoke-static {v2, v10, v12, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move-object v11, v12

    .line 2064
    :goto_0
    aget-byte v1, v11, v10

    sub-int/2addr v1, v5

    invoke-direct {p0, v11, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2065
    invoke-direct {p0, v11}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2066
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0x3e8

    invoke-direct {p0, v1, v2, v7, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_5

    .line 2069
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v6

    if-nez v2, :cond_3

    .line 2071
    aput-byte v10, p11, v10

    goto :goto_1

    .line 2073
    :cond_3
    aget-byte v2, v1, v6

    and-int/2addr v2, v9

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_4

    .line 2075
    aget-byte v2, v1, v8

    aput-byte v2, p11, v10

    .line 2077
    :cond_4
    :goto_1
    aget-byte v1, v1, v6

    and-int/2addr v1, v9

    return v1

    :cond_5
    const/16 v1, 0x30

    return v1

    :cond_6
    return v9
.end method

.method public Lock_G2(BB[BBB[B[B)I
    .locals 6

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, v0, 0xc

    .line 1908
    new-array v1, v1, [B

    add-int/lit8 v2, v0, 0xb

    int-to-byte v2, v2

    const/4 v3, 0x0

    .line 1909
    aput-byte v2, v1, v3

    const/4 v2, 0x1

    .line 1910
    aput-byte p1, v1, v2

    const/4 p1, 0x2

    const/4 v4, 0x6

    .line 1911
    aput-byte v4, v1, p1

    const/4 p1, 0x3

    .line 1912
    aput-byte p2, v1, p1

    const/4 v5, 0x4

    if-lez p2, :cond_0

    .line 1914
    invoke-static {p3, v3, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 p2, v0, 0x4

    .line 1915
    aput-byte p4, v1, p2

    add-int/lit8 p2, v0, 0x5

    .line 1916
    aput-byte p5, v1, p2

    add-int/2addr v0, v4

    .line 1917
    invoke-static {p6, v3, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1918
    aget-byte p2, v1, v3

    sub-int/2addr p2, v2

    invoke-direct {p0, v1, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1919
    invoke-direct {p0, v1}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1920
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object p3, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 p4, 0x3e8

    invoke-direct {p0, p2, p3, v4, p4}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_3

    .line 1923
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p3, p2, p1

    if-nez p3, :cond_1

    .line 1925
    aput-byte v3, p7, v3

    goto :goto_0

    .line 1927
    :cond_1
    aget-byte p3, p2, p1

    and-int/lit16 p3, p3, 0xff

    const/16 p4, 0xfc

    if-ne p3, p4, :cond_2

    .line 1929
    aget-byte p3, p2, v5

    aput-byte p3, p7, v3

    .line 1931
    :cond_2
    :goto_0
    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_3
    const/16 p1, 0x30

    return p1
.end method

.method public Lock_GB(BB[BBBB[B[B)I
    .locals 12

    move-object v0, p0

    move v1, p2

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0xd

    .line 3462
    new-array v3, v3, [B

    add-int/lit8 v2, v2, 0xc

    int-to-byte v2, v2

    const/4 v4, 0x0

    .line 3463
    aput-byte v2, v3, v4

    const/4 v2, 0x1

    .line 3464
    aput-byte p1, v3, v2

    const/4 v5, 0x2

    const/16 v6, 0x5b

    .line 3465
    aput-byte v6, v3, v5

    const/4 v7, 0x3

    .line 3466
    aput-byte v1, v3, v7

    and-int/lit16 v8, v1, 0xff

    const/16 v9, 0xff

    if-ne v8, v9, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 v8, 0x4

    if-lez v1, :cond_1

    mul-int/lit8 v10, v1, 0x2

    move-object v11, p3

    .line 3472
    invoke-static {p3, v4, v3, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v5, v1, 0x4

    .line 3473
    aput-byte p4, v3, v5

    add-int/lit8 v5, v1, 0x5

    .line 3474
    aput-byte p5, v3, v5

    add-int/lit8 v5, v1, 0x6

    .line 3475
    aput-byte p6, v3, v5

    add-int/lit8 v1, v1, 0x7

    move-object/from16 v5, p7

    .line 3476
    invoke-static {v5, v4, v3, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3477
    aget-byte v1, v3, v4

    sub-int/2addr v1, v2

    invoke-direct {p0, v3, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3478
    invoke-direct {p0, v3}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3479
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0x3e8

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_4

    .line 3482
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v7

    if-nez v2, :cond_2

    .line 3484
    aput-byte v4, p8, v4

    goto :goto_0

    .line 3486
    :cond_2
    aget-byte v2, v1, v7

    and-int/2addr v2, v9

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_3

    .line 3488
    aget-byte v2, v1, v8

    aput-byte v2, p8, v4

    .line 3490
    :cond_3
    :goto_0
    aget-byte v1, v1, v7

    and-int/2addr v1, v9

    return v1

    :cond_4
    const/16 v1, 0x30

    return v1
.end method

.method public Lock_GJB(BB[BBBB[B[B)I
    .locals 12

    move-object v0, p0

    move v1, p2

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0xd

    .line 3271
    new-array v3, v3, [B

    add-int/lit8 v2, v2, 0xc

    int-to-byte v2, v2

    const/4 v4, 0x0

    .line 3272
    aput-byte v2, v3, v4

    const/4 v2, 0x1

    .line 3273
    aput-byte p1, v3, v2

    const/4 v5, 0x2

    const/16 v6, 0x5b

    .line 3274
    aput-byte v6, v3, v5

    const/4 v7, 0x3

    .line 3275
    aput-byte v1, v3, v7

    and-int/lit16 v8, v1, 0xff

    const/16 v9, 0xff

    if-ne v8, v9, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 v8, 0x4

    if-lez v1, :cond_1

    mul-int/lit8 v10, v1, 0x2

    move-object v11, p3

    .line 3281
    invoke-static {p3, v4, v3, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v5, v1, 0x4

    .line 3282
    aput-byte p4, v3, v5

    add-int/lit8 v5, v1, 0x5

    .line 3283
    aput-byte p5, v3, v5

    add-int/lit8 v5, v1, 0x6

    .line 3284
    aput-byte p6, v3, v5

    add-int/lit8 v1, v1, 0x7

    move-object/from16 v5, p7

    .line 3285
    invoke-static {v5, v4, v3, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3286
    aget-byte v1, v3, v4

    sub-int/2addr v1, v2

    invoke-direct {p0, v3, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3287
    invoke-direct {p0, v3}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3288
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0x3e8

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_4

    .line 3291
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v7

    if-nez v2, :cond_2

    .line 3293
    aput-byte v4, p8, v4

    goto :goto_0

    .line 3295
    :cond_2
    aget-byte v2, v1, v7

    and-int/2addr v2, v9

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_3

    .line 3297
    aget-byte v2, v1, v8

    aput-byte v2, p8, v4

    .line 3299
    :cond_3
    :goto_0
    aget-byte v1, v1, v7

    and-int/2addr v1, v9

    return v1

    :cond_4
    const/16 v1, 0x30

    return v1
.end method

.method public MeasureReturnLoss(B[BB[B)I
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [B

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, -0x6f

    aput-byte v3, v0, p1

    const/4 p1, 0x3

    const/4 v3, 0x4

    .line 2120
    invoke-static {p2, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p2, 0x7

    aput-byte p3, v0, p2

    .line 2122
    aget-byte p2, v0, v2

    sub-int/2addr p2, v1

    invoke-direct {p0, v0, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2123
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2124
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object p3, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v0, 0x91

    const/16 v1, 0x258

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_1

    .line 2127
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p3, p2, p1

    if-nez p3, :cond_0

    .line 2129
    aget-byte p3, p2, v3

    aput-byte p3, p4, v2

    .line 2131
    :cond_0
    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_1
    const/16 p1, 0x30

    return p1
.end method

.method public MeasureTemperature(B[B)I
    .locals 7

    const/4 v0, 0x5

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput-byte v3, v1, v2

    const/4 v4, 0x1

    aput-byte p1, v1, v4

    const/4 p1, 0x2

    const/16 v5, -0x6e

    aput-byte v5, v1, p1

    .line 2214
    aget-byte p1, v1, v2

    sub-int/2addr p1, v4

    invoke-direct {p0, v1, p1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2215
    invoke-direct {p0, v1}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2216
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v1, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v5, 0x92

    const/16 v6, 0x258

    invoke-direct {p0, p1, v1, v5, v6}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p1

    if-nez p1, :cond_1

    .line 2219
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    const/4 v1, 0x3

    aget-byte v5, p1, v1

    if-nez v5, :cond_0

    .line 2221
    aget-byte v3, p1, v3

    aput-byte v3, p2, v2

    .line 2222
    aget-byte v0, p1, v0

    aput-byte v0, p2, v4

    .line 2224
    :cond_0
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_1
    const/16 p1, 0x30

    return p1
.end method

.method public OperateControl(B[B)I
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, 0x7f

    aput-byte v3, v0, p1

    .line 3791
    aget-byte p1, p2, v2

    const/4 v4, 0x3

    aput-byte p1, v0, v4

    .line 3792
    aget-byte p1, v0, v2

    sub-int/2addr p1, v1

    invoke-direct {p0, v0, p1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3793
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3794
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v1, 0x190

    invoke-direct {p0, p1, v0, v3, v1}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p1

    if-nez p1, :cond_1

    .line 3797
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v0, p1, v4

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 3799
    aget-byte v0, p1, v0

    aput-byte v0, p2, v2

    .line 3801
    :cond_0
    aget-byte p1, p1, v4

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_1
    const/16 p1, 0x30

    return p1
.end method

.method public PowerControll(I)V
    .locals 0

    return-void
.end method

.method public ReadData_6B(BB[BB[B)I
    .locals 5

    const/16 v0, 0xf

    new-array v0, v0, [B

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, 0x52

    aput-byte v3, v0, p1

    const/4 p1, 0x3

    aput-byte p2, v0, p1

    const/4 p2, 0x4

    const/16 v4, 0x8

    .line 3623
    invoke-static {p3, v2, v0, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p3, 0xc

    aput-byte p4, v0, p3

    .line 3625
    aget-byte p3, v0, v2

    sub-int/2addr p3, v1

    invoke-direct {p0, v0, p3}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3626
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3627
    iget-object p3, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v1, 0x7d0

    invoke-direct {p0, p3, v0, v3, v1}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p3

    if-nez p3, :cond_1

    .line 3630
    iget-object p3, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v0, p3, p1

    if-nez v0, :cond_0

    and-int/lit16 p4, p4, 0xff

    .line 3632
    invoke-static {p3, p2, p5, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3634
    :cond_0
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_1
    const/16 p1, 0x30

    return p1
.end method

.method public ReadData_G2(BB[BBBB[BB[BB[B[B[B)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p7

    move/from16 v3, p10

    move-object/from16 v4, p12

    and-int/lit16 v5, v1, 0xff

    const/16 v8, 0xbb8

    const/4 v9, 0x7

    const/16 v10, 0x10

    const/4 v11, 0x1

    const/4 v12, 0x3

    const/4 v13, 0x4

    const/4 v14, 0x2

    const/16 v15, 0xff

    const/4 v7, 0x0

    if-ge v5, v10, :cond_4

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v10, v3, 0xd

    .line 1436
    new-array v10, v10, [B

    add-int/lit8 v6, v3, 0xc

    int-to-byte v6, v6

    .line 1437
    aput-byte v6, v10, v7

    .line 1438
    aput-byte p1, v10, v11

    .line 1439
    aput-byte v14, v10, v14

    .line 1440
    aput-byte v1, v10, v12

    if-lez v5, :cond_0

    move-object/from16 v1, p3

    .line 1442
    invoke-static {v1, v7, v10, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v1, v3, 0x4

    .line 1443
    aput-byte p4, v10, v1

    add-int/lit8 v1, v3, 0x5

    .line 1444
    aput-byte p5, v10, v1

    add-int/lit8 v1, v3, 0x6

    .line 1445
    aput-byte p6, v10, v1

    add-int/2addr v3, v9

    .line 1446
    invoke-static {v2, v7, v10, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1447
    aget-byte v1, v10, v7

    sub-int/2addr v1, v11

    invoke-direct {v0, v10, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1448
    invoke-direct {v0, v10}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1449
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    invoke-direct {v0, v1, v2, v14, v8}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_3

    .line 1452
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v12

    if-nez v2, :cond_1

    .line 1454
    aput-byte v7, p13, v7

    mul-int/lit8 v2, p6, 0x2

    .line 1455
    invoke-static {v1, v13, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1457
    :cond_1
    aget-byte v2, v1, v12

    and-int/2addr v2, v15

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_2

    .line 1459
    aget-byte v1, v1, v13

    aput-byte v1, p13, v7

    .line 1461
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v1, v1, v12

    :goto_1
    and-int/2addr v1, v15

    return v1

    :cond_3
    const/16 v1, 0x30

    return v1

    :cond_4
    if-ne v5, v15, :cond_a

    if-nez v3, :cond_5

    return v15

    :cond_5
    and-int/lit16 v5, v3, 0xff

    .line 1470
    rem-int/lit8 v6, v5, 0x8

    if-nez v6, :cond_6

    .line 1472
    div-int/lit8 v5, v5, 0x8

    goto :goto_2

    .line 1476
    :cond_6
    div-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v11

    :goto_2
    add-int/lit8 v6, v5, 0x11

    .line 1478
    new-array v6, v6, [B

    add-int/lit8 v10, v5, 0x10

    int-to-byte v10, v10

    .line 1479
    aput-byte v10, v6, v7

    .line 1480
    aput-byte p1, v6, v11

    .line 1481
    aput-byte v14, v6, v14

    .line 1482
    aput-byte v1, v6, v12

    .line 1483
    aput-byte p4, v6, v13

    const/4 v1, 0x5

    .line 1484
    aput-byte p5, v6, v1

    const/4 v1, 0x6

    .line 1485
    aput-byte p6, v6, v1

    .line 1486
    invoke-static {v2, v7, v6, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0xb

    .line 1487
    aput-byte p8, v6, v1

    .line 1488
    aget-byte v1, p9, v7

    const/16 v2, 0xc

    aput-byte v1, v6, v2

    .line 1489
    aget-byte v1, p9, v11

    const/16 v2, 0xd

    aput-byte v1, v6, v2

    const/16 v1, 0xe

    .line 1490
    aput-byte v3, v6, v1

    const/16 v1, 0xf

    move-object/from16 v2, p11

    .line 1491
    invoke-static {v2, v7, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1492
    aget-byte v1, v6, v7

    sub-int/2addr v1, v11

    invoke-direct {v0, v6, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1493
    invoke-direct {v0, v6}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1494
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    invoke-direct {v0, v1, v2, v14, v8}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_9

    .line 1497
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v12

    if-nez v2, :cond_7

    .line 1499
    aput-byte v7, p13, v7

    mul-int/lit8 v2, p6, 0x2

    .line 1500
    invoke-static {v1, v13, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 1502
    :cond_7
    aget-byte v2, v1, v12

    and-int/2addr v2, v15

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_8

    .line 1504
    aget-byte v1, v1, v13

    aput-byte v1, p13, v7

    .line 1506
    :cond_8
    :goto_3
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v1, v1, v12

    goto :goto_1

    :cond_9
    const/16 v1, 0x30

    return v1

    :cond_a
    return v15
.end method

.method public ReadData_GB(BB[BB[BB[B[B[B)I
    .locals 12

    move-object v0, p0

    move v1, p2

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0xe

    .line 3383
    new-array v3, v3, [B

    add-int/lit8 v2, v2, 0xd

    int-to-byte v2, v2

    const/4 v4, 0x0

    .line 3384
    aput-byte v2, v3, v4

    const/4 v2, 0x1

    .line 3385
    aput-byte p1, v3, v2

    const/4 v5, 0x2

    const/16 v6, 0x58

    .line 3386
    aput-byte v6, v3, v5

    const/4 v7, 0x3

    .line 3387
    aput-byte v1, v3, v7

    and-int/lit16 v8, v1, 0xff

    const/16 v9, 0xff

    if-ne v8, v9, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 v8, 0x4

    if-lez v1, :cond_1

    mul-int/lit8 v10, v1, 0x2

    move-object v11, p3

    .line 3393
    invoke-static {p3, v4, v3, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v10, v1, 0x4

    .line 3394
    aput-byte p4, v3, v10

    add-int/lit8 v10, v1, 0x5

    .line 3395
    aget-byte v11, p5, v4

    aput-byte v11, v3, v10

    add-int/lit8 v10, v1, 0x6

    .line 3396
    aget-byte v11, p5, v2

    aput-byte v11, v3, v10

    add-int/lit8 v10, v1, 0x7

    .line 3397
    aput-byte p6, v3, v10

    add-int/lit8 v1, v1, 0x8

    move-object/from16 v10, p7

    .line 3398
    invoke-static {v10, v4, v3, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3399
    aget-byte v1, v3, v4

    sub-int/2addr v1, v2

    invoke-direct {p0, v3, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3400
    invoke-direct {p0, v3}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3401
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0x7d0

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_4

    .line 3404
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v7

    if-nez v2, :cond_2

    .line 3406
    aput-byte v4, p9, v4

    mul-int/lit8 v2, p6, 0x2

    move-object/from16 v3, p8

    .line 3407
    invoke-static {v1, v8, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 3409
    :cond_2
    aget-byte v2, v1, v7

    and-int/2addr v2, v9

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_3

    .line 3411
    aget-byte v1, v1, v8

    aput-byte v1, p9, v4

    .line 3413
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v1, v1, v7

    and-int/2addr v1, v9

    return v1

    :cond_4
    const/16 v1, 0x30

    return v1
.end method

.method public ReadData_GJB(BB[BB[BB[B[B[B)I
    .locals 12

    move-object v0, p0

    move v1, p2

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0xe

    .line 3192
    new-array v3, v3, [B

    add-int/lit8 v2, v2, 0xd

    int-to-byte v2, v2

    const/4 v4, 0x0

    .line 3193
    aput-byte v2, v3, v4

    const/4 v2, 0x1

    .line 3194
    aput-byte p1, v3, v2

    const/4 v5, 0x2

    const/16 v6, 0x58

    .line 3195
    aput-byte v6, v3, v5

    const/4 v7, 0x3

    .line 3196
    aput-byte v1, v3, v7

    and-int/lit16 v8, v1, 0xff

    const/16 v9, 0xff

    if-ne v8, v9, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 v8, 0x4

    if-lez v1, :cond_1

    mul-int/lit8 v10, v1, 0x2

    move-object v11, p3

    .line 3202
    invoke-static {p3, v4, v3, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v10, v1, 0x4

    .line 3203
    aput-byte p4, v3, v10

    add-int/lit8 v10, v1, 0x5

    .line 3204
    aget-byte v11, p5, v4

    aput-byte v11, v3, v10

    add-int/lit8 v10, v1, 0x6

    .line 3205
    aget-byte v11, p5, v2

    aput-byte v11, v3, v10

    add-int/lit8 v10, v1, 0x7

    .line 3206
    aput-byte p6, v3, v10

    add-int/lit8 v1, v1, 0x8

    move-object/from16 v10, p7

    .line 3207
    invoke-static {v10, v4, v3, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3208
    aget-byte v1, v3, v4

    sub-int/2addr v1, v2

    invoke-direct {p0, v3, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3209
    invoke-direct {p0, v3}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3210
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0xbb8

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_4

    .line 3213
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v7

    if-nez v2, :cond_2

    .line 3215
    aput-byte v4, p9, v4

    mul-int/lit8 v2, p6, 0x2

    move-object/from16 v3, p8

    .line 3216
    invoke-static {v1, v8, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 3218
    :cond_2
    aget-byte v2, v1, v7

    and-int/2addr v2, v9

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_3

    .line 3220
    aget-byte v1, v1, v8

    aput-byte v1, p9, v4

    .line 3222
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v1, v1, v7

    and-int/2addr v1, v9

    return v1

    :cond_4
    const/16 v1, 0x30

    return v1
.end method

.method public RetryTimes(B[B)I
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, 0x7b

    aput-byte v3, v0, p1

    .line 1399
    aget-byte p1, p2, v2

    const/4 v4, 0x3

    aput-byte p1, v0, v4

    .line 1400
    aget-byte p1, v0, v2

    sub-int/2addr p1, v1

    invoke-direct {p0, v0, p1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1401
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1402
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v1, 0x3e8

    invoke-direct {p0, p1, v0, v3, v1}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p1

    if-nez p1, :cond_1

    .line 1405
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v0, p1, v4

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 1407
    aget-byte v0, p1, v0

    aput-byte v0, p2, v2

    .line 1409
    :cond_0
    aget-byte p1, p1, v4

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_1
    const/16 p1, 0x30

    return p1
.end method

.method public RfOutput(BB)I
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, 0x30

    aput-byte v3, v0, p1

    const/4 p1, 0x3

    aput-byte p2, v0, p1

    .line 3705
    aget-byte p2, v0, v2

    sub-int/2addr p2, v1

    invoke-direct {p0, v0, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3706
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3707
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v1, 0x3e8

    invoke-direct {p0, p2, v0, v3, v1}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_0

    .line 3710
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    return v3
.end method

.method public SelectCMD(BBBBB)I
    .locals 5

    const/16 v0, 0xd

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/4 v3, 0x1

    aput-byte p1, v0, v3

    const/4 p1, 0x2

    const/16 v4, -0x66

    aput-byte v4, v0, p1

    const/4 p1, 0x3

    aput-byte p2, v0, p1

    const/4 p2, 0x4

    aput-byte p3, v0, p2

    const/4 p2, 0x5

    aput-byte p4, v0, p2

    const/4 p2, 0x6

    aput-byte v3, v0, p2

    const/4 p2, 0x7

    aput-byte v1, v0, p2

    const/16 p2, 0x8

    aput-byte v1, v0, p2

    const/16 p2, 0x9

    aput-byte v1, v0, p2

    const/16 p2, 0xa

    aput-byte p5, v0, p2

    const/16 p2, 0xb

    aput-byte v1, v0, p2

    aput-byte v1, v0, v2

    .line 3717
    aget-byte p2, v0, v1

    sub-int/2addr p2, v3

    invoke-direct {p0, v0, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3718
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3719
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object p3, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 p4, 0x9a

    const/16 p5, 0x1f4

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_0

    .line 3720
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    :cond_0
    const/16 p1, 0x30

    :goto_0
    return p1
.end method

.method public SelectCMDByTime(BBBBBB)I
    .locals 4

    const/16 p6, 0xe

    new-array p6, p6, [B

    const/4 v0, 0x0

    const/16 v1, 0xd

    aput-byte v1, p6, v0

    const/4 v2, 0x1

    aput-byte p1, p6, v2

    const/4 p1, 0x2

    const/16 v3, -0x68

    aput-byte v3, p6, p1

    const/4 p1, 0x3

    aput-byte p2, p6, p1

    const/4 p2, 0x4

    aput-byte p3, p6, p2

    const/4 p2, 0x5

    aput-byte p4, p6, p2

    const/4 p2, 0x6

    aput-byte v2, p6, p2

    const/4 p2, 0x7

    aput-byte v0, p6, p2

    const/16 p2, 0x8

    aput-byte v0, p6, p2

    const/16 p2, 0x9

    aput-byte v0, p6, p2

    const/16 p2, 0xa

    aput-byte p5, p6, p2

    const/16 p2, 0xb

    aput-byte v0, p6, p2

    const/16 p2, 0xc

    aput-byte v0, p6, p2

    aput-byte v0, p6, v1

    .line 3725
    aget-byte p2, p6, v0

    sub-int/2addr p2, v2

    invoke-direct {p0, p6, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3726
    invoke-direct {p0, p6}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3727
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object p3, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 p4, 0x98

    const/16 p5, 0x1f4

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_0

    .line 3728
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    :cond_0
    const/16 p1, 0x30

    :goto_0
    return p1
.end method

.method public SelectCMDByTimeNoACk(BBBBBB)I
    .locals 4

    const/16 p6, 0xe

    new-array p6, p6, [B

    const/4 v0, 0x0

    const/16 v1, 0xd

    aput-byte v1, p6, v0

    const/4 v2, 0x1

    aput-byte p1, p6, v2

    const/4 p1, 0x2

    const/16 v3, -0x68

    aput-byte v3, p6, p1

    const/4 p1, 0x3

    aput-byte p2, p6, p1

    const/4 p1, 0x4

    aput-byte p3, p6, p1

    const/4 p1, 0x5

    aput-byte p4, p6, p1

    const/4 p1, 0x6

    aput-byte v2, p6, p1

    const/4 p1, 0x7

    aput-byte v0, p6, p1

    const/16 p1, 0x8

    aput-byte v0, p6, p1

    const/16 p1, 0x9

    aput-byte v0, p6, p1

    const/16 p1, 0xa

    aput-byte p5, p6, p1

    const/16 p1, 0xb

    aput-byte v0, p6, p1

    const/16 p1, 0xc

    aput-byte v0, p6, p1

    aput-byte v0, p6, v1

    .line 3733
    aget-byte p1, p6, v0

    sub-int/2addr p1, v2

    invoke-direct {p0, p6, p1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3734
    invoke-direct {p0, p6}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    return v0
.end method

.method public SetAddress(BB)I
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, 0x24

    aput-byte v3, v0, p1

    const/4 p1, 0x3

    aput-byte p2, v0, p1

    .line 1200
    aget-byte p2, v0, v2

    sub-int/2addr p2, v1

    invoke-direct {p0, v0, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1201
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1202
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v1, 0x1f4

    invoke-direct {p0, p2, v0, v3, v1}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_0

    .line 1205
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/16 p1, 0x30

    return p1
.end method

.method public SetAntennaMultiplexing(BBBB)I
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, 0x3f

    aput-byte v3, v0, p1

    const/4 p1, 0x3

    aput-byte p2, v0, p1

    const/4 p2, 0x4

    aput-byte p3, v0, p2

    const/4 p2, 0x5

    aput-byte p4, v0, p2

    .line 1255
    aget-byte p2, v0, v2

    sub-int/2addr p2, v1

    invoke-direct {p0, v0, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1256
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1257
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object p3, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 p4, 0x1f4

    invoke-direct {p0, p2, p3, v3, p4}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_0

    .line 1260
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/16 p1, 0x30

    return p1
.end method

.method public SetBaudRate(BB)I
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, 0x28

    aput-byte v3, v0, p1

    const/4 p1, 0x3

    aput-byte p2, v0, p1

    .line 1271
    aget-byte p2, v0, v2

    sub-int/2addr p2, v1

    invoke-direct {p0, v0, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1272
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1273
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v1, 0x3e8

    invoke-direct {p0, p2, v0, v3, v1}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_0

    .line 1276
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/16 p1, 0x30

    return p1
.end method

.method public SetBeepNotification(BB)I
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, 0x40

    aput-byte v3, v0, p1

    const/4 p1, 0x3

    aput-byte p2, v0, p1

    .line 1420
    aget-byte p2, v0, v2

    sub-int/2addr p2, v1

    invoke-direct {p0, v0, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1421
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1422
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v1, 0x190

    invoke-direct {p0, p2, v0, v3, v1}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_0

    .line 1425
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/16 p1, 0x30

    return p1
.end method

.method public SetCallBack(Lcom/rfid/trans/TagCallback;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/rfid/trans/BaseReader;->callback:Lcom/rfid/trans/TagCallback;

    return-void
.end method

.method public SetCfgParameter(BBB[BI)I
    .locals 4

    add-int/lit8 v0, p5, 0x7

    .line 3739
    new-array v0, v0, [B

    add-int/lit8 v1, p5, 0x6

    int-to-byte v1, v1

    const/4 v2, 0x0

    .line 3740
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    .line 3741
    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, -0x16

    .line 3742
    aput-byte v3, v0, p1

    const/4 p1, 0x3

    .line 3743
    aput-byte p2, v0, p1

    const/4 p2, 0x4

    .line 3744
    aput-byte p3, v0, p2

    if-lez p5, :cond_0

    const/4 p2, 0x5

    .line 3747
    invoke-static {p4, v2, v0, p2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3749
    :cond_0
    aget-byte p2, v0, v2

    sub-int/2addr p2, v1

    invoke-direct {p0, v0, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3750
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3751
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object p3, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 p4, 0xea

    const/16 p5, 0x3e8

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_1

    .line 3754
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_1
    const/16 p1, 0x30

    return p1
.end method

.method public SetCheckAnt(BB)I
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, 0x66

    aput-byte v3, v0, p1

    const/4 p1, 0x3

    aput-byte p2, v0, p1

    .line 2143
    aget-byte p2, v0, v2

    sub-int/2addr p2, v1

    invoke-direct {p0, v0, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2144
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2145
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v1, 0x1f4

    invoke-direct {p0, p2, v0, v3, v1}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_0

    .line 2148
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/16 p1, 0x30

    return p1
.end method

.method public SetCustomRegion(BBIIII)I
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [B

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, 0x22

    aput-byte v3, v0, p1

    const/4 p1, 0x3

    aput-byte p2, v0, p1

    int-to-byte p2, p3

    const/4 p3, 0x4

    aput-byte p2, v0, p3

    int-to-byte p2, p4

    const/4 p3, 0x5

    aput-byte p2, v0, p3

    int-to-byte p2, p5

    const/4 p3, 0x6

    aput-byte p2, v0, p3

    shr-int/lit8 p2, p6, 0x10

    int-to-byte p2, p2

    const/4 p3, 0x7

    aput-byte p2, v0, p3

    shr-int/lit8 p2, p6, 0x8

    int-to-byte p2, p2

    const/16 p3, 0x8

    aput-byte p2, v0, p3

    int-to-byte p2, p6

    const/16 p3, 0x9

    aput-byte p2, v0, p3

    .line 3819
    aget-byte p2, v0, v2

    sub-int/2addr p2, v1

    invoke-direct {p0, v0, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3820
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3821
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object p3, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 p4, 0x1f4

    invoke-direct {p0, p2, p3, v3, p4}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_0

    .line 3824
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/16 p1, 0x30

    return p1
.end method

.method public SetGPIO(BB)I
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, 0x46

    aput-byte v3, v0, p1

    const/4 p1, 0x3

    aput-byte p2, v0, p1

    .line 1308
    aget-byte p2, v0, v2

    sub-int/2addr p2, v1

    invoke-direct {p0, v0, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1309
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1310
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v1, 0x3e8

    invoke-direct {p0, p2, v0, v3, v1}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_0

    .line 1313
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/16 p1, 0x30

    return p1
.end method

.method public SetInventoryScanTime(BB)I
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, 0x25

    aput-byte v3, v0, p1

    const/4 p1, 0x3

    aput-byte p2, v0, p1

    .line 255
    aget-byte p2, v0, v2

    sub-int/2addr p2, v1

    invoke-direct {p0, v0, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 256
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 257
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v1, 0x1f4

    invoke-direct {p0, p2, v0, v3, v1}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_0

    .line 260
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/16 p1, 0x30

    return p1
.end method

.method public SetLogSwitch(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/rfid/trans/BaseReader;->logswitch:I

    return-void
.end method

.method public SetMsgCallBack(Lcom/rfid/trans/RFIDLogCallBack;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/rfid/trans/BaseReader;->msgCallback:Lcom/rfid/trans/RFIDLogCallBack;

    return-void
.end method

.method public SetProfile(B[B)I
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, 0x7f

    aput-byte v3, v0, p1

    .line 2235
    aget-byte p1, p2, v2

    const/4 v4, 0x3

    aput-byte p1, v0, v4

    .line 2236
    aget-byte p1, v0, v2

    sub-int/2addr p1, v1

    invoke-direct {p0, v0, p1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2237
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2238
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v1, 0x190

    invoke-direct {p0, p1, v0, v3, v1}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p1

    if-nez p1, :cond_1

    .line 2241
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v0, p1, v4

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 2243
    aget-byte v0, p1, v0

    aput-byte v0, p2, v2

    .line 2245
    :cond_0
    aget-byte p1, p1, v4

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_1
    const/16 p1, 0x30

    return p1
.end method

.method public SetProtocol(B[B)I
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, -0x32

    aput-byte v3, v0, p1

    .line 3887
    aget-byte p1, p2, v2

    const/4 v3, 0x3

    aput-byte p1, v0, v3

    .line 3888
    aget-byte p1, v0, v2

    sub-int/2addr p1, v1

    invoke-direct {p0, v0, p1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3889
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3890
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v1, 0xce

    const/16 v4, 0x190

    invoke-direct {p0, p1, v0, v1, v4}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p1

    if-nez p1, :cond_1

    .line 3893
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v0, p1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 3895
    aget-byte v0, p1, v0

    aput-byte v0, p2, v2

    .line 3897
    :cond_0
    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_1
    const/16 p1, 0x30

    return p1
.end method

.method public SetReadParameter(B[B)I
    .locals 7

    const/16 v0, 0xa

    new-array v0, v0, [B

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, 0x75

    aput-byte v3, v0, p1

    .line 2159
    aget-byte v4, p2, v2

    const/4 v5, 0x3

    aput-byte v4, v0, v5

    .line 2160
    aget-byte v4, p2, v1

    const/4 v6, 0x4

    aput-byte v4, v0, v6

    .line 2161
    aget-byte p1, p2, p1

    const/4 v4, 0x5

    aput-byte p1, v0, v4

    .line 2162
    aget-byte p1, p2, v5

    const/4 v4, 0x6

    aput-byte p1, v0, v4

    .line 2163
    aget-byte p1, p2, v6

    const/4 p2, 0x7

    aput-byte p1, v0, p2

    .line 2164
    aget-byte p1, v0, v2

    sub-int/2addr p1, v1

    invoke-direct {p0, v0, p1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2165
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2166
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v0, 0x1f4

    invoke-direct {p0, p1, p2, v3, v0}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p1

    if-nez p1, :cond_0

    .line 2169
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p1, v5

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/16 p1, 0x30

    return p1
.end method

.method public SetRegion(BIII)I
    .locals 6

    const/4 v0, 0x7

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/4 v3, 0x1

    aput-byte p1, v0, v3

    const/4 p1, 0x2

    const/16 v4, 0x22

    aput-byte v4, v0, p1

    and-int/lit8 p1, p2, 0xc

    const/4 v5, 0x4

    shl-int/2addr p1, v5

    and-int/lit8 p3, p3, 0x3f

    or-int/2addr p1, p3

    int-to-byte p1, p1

    const/4 p3, 0x3

    aput-byte p1, v0, p3

    and-int/lit8 p1, p2, 0x3

    shl-int/2addr p1, v2

    and-int/lit8 p2, p4, 0x3f

    or-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, v0, v5

    .line 1217
    aget-byte p1, v0, v1

    sub-int/2addr p1, v3

    invoke-direct {p0, v0, p1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1218
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1219
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 p4, 0x1f4

    invoke-direct {p0, p1, p2, v4, p4}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p1

    if-nez p1, :cond_0

    .line 1222
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p1, p3

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/16 p1, 0x30

    return p1
.end method

.method public SetRegion(BIIII)I
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [B

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, 0x22

    aput-byte v3, v0, p1

    int-to-byte p1, p2

    const/4 p2, 0x3

    aput-byte p1, v0, p2

    int-to-byte p1, p3

    const/4 p3, 0x4

    aput-byte p1, v0, p3

    int-to-byte p1, p4

    const/4 p3, 0x5

    aput-byte p1, v0, p3

    int-to-byte p1, p5

    const/4 p3, 0x6

    aput-byte p1, v0, p3

    .line 1237
    aget-byte p1, v0, v2

    sub-int/2addr p1, v1

    invoke-direct {p0, v0, p1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1238
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1239
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object p3, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 p4, 0x1f4

    invoke-direct {p0, p1, p3, v3, p4}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p1

    if-nez p1, :cond_0

    .line 1242
    iget-object p1, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/16 p1, 0x30

    return p1
.end method

.method public SetRegionTable(BB)I
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [B

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, -0x1a

    aput-byte v3, v0, p1

    const/4 p1, 0x3

    const/4 v3, 0x4

    aput-byte v3, v0, p1

    aput-byte p2, v0, v3

    .line 3910
    aget-byte p2, v0, v2

    sub-int/2addr p2, v1

    invoke-direct {p0, v0, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3911
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3912
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v1, 0xe6

    const/16 v2, 0x190

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_0

    .line 3915
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/16 p1, 0x30

    return p1
.end method

.method public SetRfPower(BB)I
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, 0x2f

    aput-byte v3, v0, p1

    const/4 p1, 0x3

    aput-byte p2, v0, p1

    .line 1183
    aget-byte p2, v0, v2

    sub-int/2addr p2, v1

    invoke-direct {p0, v0, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1184
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1185
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v1, 0x1f4

    invoke-direct {p0, p2, v0, v3, v1}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_0

    .line 1188
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/16 p1, 0x30

    return p1
.end method

.method public SetWorkMode(BB)I
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, 0x76

    aput-byte v3, v0, p1

    const/4 p1, 0x3

    aput-byte p2, v0, p1

    .line 2198
    aget-byte p2, v0, v2

    sub-int/2addr p2, v1

    invoke-direct {p0, v0, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 2199
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 2200
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v1, 0x77

    const/16 v2, 0x12c

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_0

    .line 2203
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/16 p1, 0x30

    return p1
.end method

.method public SetWritePower(BB)I
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, 0x79

    aput-byte v3, v0, p1

    const/4 p1, 0x3

    aput-byte p2, v0, p1

    .line 1363
    aget-byte p2, v0, v2

    sub-int/2addr p2, v1

    invoke-direct {p0, v0, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1364
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1365
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v0, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v1, 0x3e8

    invoke-direct {p0, p2, v0, v3, v1}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_0

    .line 1368
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/16 p1, 0x30

    return p1
.end method

.method public StopInventory(B)V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    const/16 v3, -0x6d

    aput-byte v3, v0, p1

    .line 421
    aget-byte p1, v0, v2

    sub-int/2addr p1, v1

    invoke-direct {p0, v0, p1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 422
    invoke-direct {p0, v0}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    return-void
.end method

.method public WriteData_6B(BB[BB[B)I
    .locals 5

    and-int/lit16 v0, p4, 0xff

    add-int/lit8 v1, v0, 0xe

    .line 3641
    new-array v1, v1, [B

    add-int/lit8 v0, v0, 0xd

    int-to-byte v0, v0

    const/4 v2, 0x0

    .line 3642
    aput-byte v0, v1, v2

    const/4 v0, 0x1

    .line 3643
    aput-byte p1, v1, v0

    const/4 p1, 0x2

    const/16 v3, 0x53

    .line 3644
    aput-byte v3, v1, p1

    const/4 p1, 0x3

    .line 3645
    aput-byte p2, v1, p1

    const/4 p2, 0x4

    const/16 v4, 0x8

    .line 3646
    invoke-static {p3, v2, v1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p2, 0xc

    .line 3647
    invoke-static {p5, v2, v1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3648
    aget-byte p2, v1, v2

    sub-int/2addr p2, v0

    invoke-direct {p0, v1, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3649
    invoke-direct {p0, v1}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3650
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object p3, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 p4, 0x7d0

    invoke-direct {p0, p2, p3, v3, p4}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_0

    .line 3653
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/16 p1, 0x30

    return p1
.end method

.method public WriteData_G2(BBB[BBB[B[BB[BB[B[B)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v4, p11

    and-int/lit16 v5, v1, 0xff

    const/16 v8, 0xbb8

    const/16 v9, 0x10

    const/4 v10, 0x5

    const/4 v11, 0x7

    const/4 v12, 0x4

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/16 v15, 0xff

    const/4 v7, 0x3

    const/4 v6, 0x0

    if-ge v5, v9, :cond_4

    add-int v4, v1, p2

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v9, v4, 0xd

    .line 1612
    new-array v9, v9, [B

    add-int/lit8 v4, v4, 0xc

    int-to-byte v4, v4

    .line 1613
    aput-byte v4, v9, v6

    .line 1614
    aput-byte p1, v9, v13

    .line 1615
    aput-byte v7, v9, v14

    .line 1616
    aput-byte p2, v9, v7

    .line 1617
    aput-byte v1, v9, v12

    if-lez v5, :cond_0

    mul-int/lit8 v4, v1, 0x2

    move-object/from16 v5, p4

    .line 1619
    invoke-static {v5, v6, v9, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, v1, 0x5

    .line 1620
    aput-byte p5, v9, v4

    add-int/lit8 v4, v1, 0x6

    .line 1621
    aput-byte p6, v9, v4

    add-int/lit8 v4, v1, 0x7

    mul-int/lit8 v5, p2, 0x2

    .line 1622
    invoke-static {v2, v6, v9, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v5

    add-int/2addr v1, v11

    .line 1623
    invoke-static {v3, v6, v9, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1624
    aget-byte v1, v9, v6

    sub-int/2addr v1, v13

    invoke-direct {v0, v9, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1625
    invoke-direct {v0, v9}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1626
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    invoke-direct {v0, v1, v2, v7, v8}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_3

    .line 1629
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v7

    if-nez v2, :cond_1

    .line 1631
    aput-byte v6, p13, v6

    goto :goto_0

    .line 1633
    :cond_1
    aget-byte v2, v1, v7

    and-int/2addr v2, v15

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_2

    .line 1635
    aget-byte v2, v1, v12

    aput-byte v2, p13, v6

    .line 1637
    :cond_2
    :goto_0
    aget-byte v1, v1, v7

    and-int/2addr v1, v15

    return v1

    :cond_3
    const/16 v1, 0x30

    return v1

    :cond_4
    if-ne v5, v15, :cond_a

    if-nez v4, :cond_5

    return v15

    :cond_5
    and-int/lit16 v5, v4, 0xff

    .line 1646
    rem-int/lit8 v9, v5, 0x8

    if-nez v9, :cond_6

    .line 1648
    div-int/lit8 v5, v5, 0x8

    goto :goto_1

    .line 1652
    :cond_6
    div-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v13

    :goto_1
    mul-int/lit8 v9, p2, 0x2

    add-int/lit8 v16, v9, 0x11

    add-int v15, v16, v5

    .line 1654
    new-array v15, v15, [B

    add-int/lit8 v16, v9, 0x10

    add-int v8, v16, v5

    int-to-byte v8, v8

    .line 1655
    aput-byte v8, v15, v6

    .line 1656
    aput-byte p1, v15, v13

    .line 1657
    aput-byte v7, v15, v14

    .line 1658
    aput-byte p2, v15, v7

    .line 1659
    aput-byte v1, v15, v12

    .line 1660
    aput-byte p5, v15, v10

    const/4 v1, 0x6

    .line 1661
    aput-byte p6, v15, v1

    .line 1662
    invoke-static {v2, v6, v15, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v9, 0x7

    .line 1663
    invoke-static {v3, v6, v15, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v9, 0xb

    .line 1664
    aput-byte p9, v15, v1

    add-int/lit8 v1, v9, 0xc

    .line 1665
    aget-byte v2, p10, v6

    aput-byte v2, v15, v1

    add-int/lit8 v1, v9, 0xd

    .line 1666
    aget-byte v2, p10, v13

    aput-byte v2, v15, v1

    add-int/lit8 v1, v9, 0xe

    .line 1667
    aput-byte v4, v15, v1

    add-int/lit8 v9, v9, 0xf

    move-object/from16 v1, p12

    .line 1668
    invoke-static {v1, v6, v15, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1669
    aget-byte v1, v15, v6

    sub-int/2addr v1, v13

    invoke-direct {v0, v15, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1670
    invoke-direct {v0, v15}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1671
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0xbb8

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_9

    .line 1674
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v7

    if-nez v2, :cond_7

    .line 1676
    aput-byte v6, p13, v6

    const/16 v3, 0xff

    goto :goto_2

    .line 1678
    :cond_7
    aget-byte v2, v1, v7

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0xfc

    if-ne v2, v4, :cond_8

    .line 1680
    aget-byte v2, v1, v12

    aput-byte v2, p13, v6

    .line 1682
    :cond_8
    :goto_2
    aget-byte v1, v1, v7

    and-int/2addr v1, v3

    return v1

    :cond_9
    const/16 v1, 0x30

    return v1

    :cond_a
    const/16 v3, 0xff

    return v3
.end method

.method public WriteData_GB(BBB[BB[B[B[B[B)I
    .locals 13

    move-object v0, p0

    move/from16 v1, p3

    add-int v2, v1, p2

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v4, v2, 0xe

    .line 3422
    new-array v4, v4, [B

    add-int/lit8 v2, v2, 0xd

    int-to-byte v2, v2

    const/4 v5, 0x0

    .line 3423
    aput-byte v2, v4, v5

    const/4 v2, 0x1

    .line 3424
    aput-byte p1, v4, v2

    const/16 v6, 0x59

    .line 3425
    aput-byte v6, v4, v3

    const/4 v7, 0x3

    .line 3426
    aput-byte p2, v4, v7

    const/4 v8, 0x4

    .line 3427
    aput-byte v1, v4, v8

    and-int/lit16 v9, v1, 0xff

    const/16 v10, 0xff

    if-ne v9, v10, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-lez v1, :cond_1

    mul-int/lit8 v9, v1, 0x2

    const/4 v11, 0x5

    move-object/from16 v12, p4

    .line 3433
    invoke-static {v12, v5, v4, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v9, v1, 0x5

    .line 3434
    aput-byte p5, v4, v9

    add-int/lit8 v9, v1, 0x6

    .line 3435
    aget-byte v11, p6, v5

    aput-byte v11, v4, v9

    add-int/lit8 v9, v1, 0x7

    .line 3436
    aget-byte v11, p6, v2

    aput-byte v11, v4, v9

    add-int/lit8 v9, v1, 0x8

    mul-int/lit8 v3, p2, 0x2

    move-object/from16 v11, p7

    .line 3437
    invoke-static {v11, v5, v4, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x9

    move-object/from16 v3, p8

    .line 3438
    invoke-static {v3, v5, v4, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3439
    aget-byte v1, v4, v5

    sub-int/2addr v1, v2

    invoke-direct {p0, v4, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3440
    invoke-direct {p0, v4}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3441
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0x7d0

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_4

    .line 3444
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v7

    if-nez v2, :cond_2

    .line 3446
    aput-byte v5, p9, v5

    goto :goto_0

    .line 3448
    :cond_2
    aget-byte v2, v1, v7

    and-int/2addr v2, v10

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_3

    .line 3450
    aget-byte v2, v1, v8

    aput-byte v2, p9, v5

    .line 3452
    :cond_3
    :goto_0
    aget-byte v1, v1, v7

    and-int/2addr v1, v10

    return v1

    :cond_4
    const/16 v1, 0x30

    return v1
.end method

.method public WriteData_GJB(BBB[BB[B[B[B[B)I
    .locals 13

    move-object v0, p0

    move/from16 v1, p3

    add-int v2, v1, p2

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v4, v2, 0xe

    .line 3231
    new-array v4, v4, [B

    add-int/lit8 v2, v2, 0xd

    int-to-byte v2, v2

    const/4 v5, 0x0

    .line 3232
    aput-byte v2, v4, v5

    const/4 v2, 0x1

    .line 3233
    aput-byte p1, v4, v2

    const/16 v6, 0x59

    .line 3234
    aput-byte v6, v4, v3

    const/4 v7, 0x3

    .line 3235
    aput-byte p2, v4, v7

    const/4 v8, 0x4

    .line 3236
    aput-byte v1, v4, v8

    and-int/lit16 v9, v1, 0xff

    const/16 v10, 0xff

    if-ne v9, v10, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-lez v1, :cond_1

    mul-int/lit8 v9, v1, 0x2

    const/4 v11, 0x5

    move-object/from16 v12, p4

    .line 3242
    invoke-static {v12, v5, v4, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v9, v1, 0x5

    .line 3243
    aput-byte p5, v4, v9

    add-int/lit8 v9, v1, 0x6

    .line 3244
    aget-byte v11, p6, v5

    aput-byte v11, v4, v9

    add-int/lit8 v9, v1, 0x7

    .line 3245
    aget-byte v11, p6, v2

    aput-byte v11, v4, v9

    add-int/lit8 v9, v1, 0x8

    mul-int/lit8 v3, p2, 0x2

    move-object/from16 v11, p7

    .line 3246
    invoke-static {v11, v5, v4, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x9

    move-object/from16 v3, p8

    .line 3247
    invoke-static {v3, v5, v4, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3248
    aget-byte v1, v4, v5

    sub-int/2addr v1, v2

    invoke-direct {p0, v4, v1}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 3249
    invoke-direct {p0, v4}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 3250
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object v2, v0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 v3, 0xbb8

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result v1

    if-nez v1, :cond_4

    .line 3253
    iget-object v1, v0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte v2, v1, v7

    if-nez v2, :cond_2

    .line 3255
    aput-byte v5, p9, v5

    goto :goto_0

    .line 3257
    :cond_2
    aget-byte v2, v1, v7

    and-int/2addr v2, v10

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_3

    .line 3259
    aget-byte v2, v1, v8

    aput-byte v2, p9, v5

    .line 3261
    :cond_3
    :goto_0
    aget-byte v1, v1, v7

    and-int/2addr v1, v10

    return v1

    :cond_4
    const/16 v1, 0x30

    return v1
.end method

.method public WriteEPC_G2(BB[B[B[B)I
    .locals 6

    and-int/lit16 v0, p2, 0xff

    const/16 v1, 0xff

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_4

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v2, v0, 0xa

    .line 1880
    new-array v2, v2, [B

    add-int/lit8 v3, v0, 0x9

    int-to-byte v3, v3

    const/4 v4, 0x0

    .line 1881
    aput-byte v3, v2, v4

    const/4 v3, 0x1

    .line 1882
    aput-byte p1, v2, v3

    const/4 p1, 0x2

    const/4 v5, 0x4

    .line 1883
    aput-byte v5, v2, p1

    const/4 p1, 0x3

    .line 1884
    aput-byte p2, v2, p1

    .line 1885
    invoke-static {p3, v4, v2, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p2, 0x8

    .line 1886
    invoke-static {p4, v4, v2, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1887
    aget-byte p2, v2, v4

    sub-int/2addr p2, v3

    invoke-direct {p0, v2, p2}, Lcom/rfid/trans/BaseReader;->getCRC([BI)V

    .line 1888
    invoke-direct {p0, v2}, Lcom/rfid/trans/BaseReader;->SendCMD([B)I

    .line 1889
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    iget-object p3, p0, Lcom/rfid/trans/BaseReader;->recvLength:[I

    const/16 p4, 0x7d0

    invoke-direct {p0, p2, p3, v5, p4}, Lcom/rfid/trans/BaseReader;->GetCMDData([B[III)I

    move-result p2

    if-nez p2, :cond_3

    .line 1892
    iget-object p2, p0, Lcom/rfid/trans/BaseReader;->recvBuff:[B

    aget-byte p3, p2, p1

    if-nez p3, :cond_1

    .line 1894
    aput-byte v4, p5, v4

    goto :goto_0

    .line 1896
    :cond_1
    aget-byte p3, p2, p1

    and-int/2addr p3, v1

    const/16 p4, 0xfc

    if-ne p3, p4, :cond_2

    .line 1898
    aget-byte p3, p2, v5

    aput-byte p3, p5, v4

    .line 1900
    :cond_2
    :goto_0
    aget-byte p1, p2, p1

    and-int/2addr p1, v1

    return p1

    :cond_3
    const/16 p1, 0x30

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public bytesToHexString([BII)Ljava/lang/String;
    .locals 5

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 70
    :try_start_0
    array-length v2, p1

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-ge p2, p3, :cond_2

    .line 74
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 81
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

.method public hexStringToBytes(Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    const-string v1, ""

    .line 88
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 91
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 94
    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    mul-int/lit8 v4, v3, 0x2

    .line 97
    aget-char v5, p1, v4

    invoke-direct {p0, v5}, Lcom/rfid/trans/BaseReader;->charToByte(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v4, v4, 0x1

    aget-char v4, p1, v4

    invoke-direct {p0, v4}, Lcom/rfid/trans/BaseReader;->charToByte(C)B

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
