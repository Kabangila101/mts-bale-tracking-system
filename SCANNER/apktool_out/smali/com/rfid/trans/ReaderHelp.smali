.class public Lcom/rfid/trans/ReaderHelp;
.super Ljava/lang/Object;
.source "ReaderHelp.java"

# interfaces
.implements Lcom/rfid/trans/CReader;


# static fields
.field public static volatile isSound:Z = false


# instance fields
.field private CardCount:I

.field private Cfg_Power:I

.field CurPower:I

.field CurSession:B

.field private Cur_Ctrl:I

.field private MaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rfid/trans/MaskClass;",
            ">;"
        }
    .end annotation
.end field

.field public ModuleType:I

.field private volatile NoCardCOunt:I

.field private PermitControl:Z

.field private QValue:B

.field private RF_Ctrl:I

.field private ReTryCount:I

.field private ReadSpeed:I

.field private Session:I

.field private Target:B

.field beginTime:J

.field private callback:Lcom/rfid/trans/TagCallback;

.field private devName:Ljava/lang/String;

.field firstTime:Z

.field private isOpen:Z

.field private ledMaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rfid/trans/MaskClass;",
            ">;"
        }
    .end annotation
.end field

.field private logswitch:I

.field private volatile mThread:Ljava/lang/Thread;

.field private volatile mWorking:Z

.field private volatile maskIndex:I

.field private pOUcharIDList:[B

.field private param:Lcom/rfid/trans/ReaderParameter;

.field private reader:Lcom/rfid/trans/BaseReader;

.field private readledType:I

.field private volatile sThread:Ljava/lang/Thread;

.field private soundPool:Landroid/media/SoundPool;

.field private soundid:Ljava/lang/Integer;

.field private volatile soundworking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/rfid/trans/BaseReader;

    invoke-direct {v0}, Lcom/rfid/trans/BaseReader;-><init>()V

    iput-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    .line 19
    new-instance v0, Lcom/rfid/trans/ReaderParameter;

    invoke-direct {v0}, Lcom/rfid/trans/ReaderParameter;-><init>()V

    iput-object v0, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/rfid/trans/ReaderHelp;->mWorking:Z

    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Lcom/rfid/trans/ReaderHelp;->mThread:Ljava/lang/Thread;

    .line 22
    iput-boolean v0, p0, Lcom/rfid/trans/ReaderHelp;->soundworking:Z

    .line 25
    iput-object v1, p0, Lcom/rfid/trans/ReaderHelp;->sThread:Ljava/lang/Thread;

    const/16 v2, 0x6400

    new-array v2, v2, [B

    .line 26
    iput-object v2, p0, Lcom/rfid/trans/ReaderHelp;->pOUcharIDList:[B

    const/4 v2, 0x0

    .line 27
    iput v2, p0, Lcom/rfid/trans/ReaderHelp;->NoCardCOunt:I

    .line 28
    iput-object v1, p0, Lcom/rfid/trans/ReaderHelp;->soundid:Ljava/lang/Integer;

    .line 29
    iput-object v1, p0, Lcom/rfid/trans/ReaderHelp;->soundPool:Landroid/media/SoundPool;

    .line 30
    iput-boolean v2, p0, Lcom/rfid/trans/ReaderHelp;->isOpen:Z

    const-string v1, ""

    .line 32
    iput-object v1, p0, Lcom/rfid/trans/ReaderHelp;->devName:Ljava/lang/String;

    .line 33
    iput v2, p0, Lcom/rfid/trans/ReaderHelp;->logswitch:I

    const/4 v1, 0x5

    .line 34
    iput v1, p0, Lcom/rfid/trans/ReaderHelp;->RF_Ctrl:I

    .line 35
    iput v1, p0, Lcom/rfid/trans/ReaderHelp;->Cur_Ctrl:I

    .line 36
    iput v2, p0, Lcom/rfid/trans/ReaderHelp;->ModuleType:I

    .line 37
    iput v2, p0, Lcom/rfid/trans/ReaderHelp;->ReTryCount:I

    .line 38
    iput-boolean v2, p0, Lcom/rfid/trans/ReaderHelp;->PermitControl:Z

    const-wide/16 v3, 0x0

    .line 39
    iput-wide v3, p0, Lcom/rfid/trans/ReaderHelp;->beginTime:J

    .line 40
    iput v2, p0, Lcom/rfid/trans/ReaderHelp;->Cfg_Power:I

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/rfid/trans/ReaderHelp;->MaskList:Ljava/util/List;

    .line 393
    iput-byte v2, p0, Lcom/rfid/trans/ReaderHelp;->CurSession:B

    .line 394
    iput v2, p0, Lcom/rfid/trans/ReaderHelp;->CurPower:I

    .line 395
    iput-boolean v0, p0, Lcom/rfid/trans/ReaderHelp;->firstTime:Z

    .line 636
    iput-byte v2, p0, Lcom/rfid/trans/ReaderHelp;->Target:B

    const/4 v1, 0x4

    .line 637
    iput-byte v1, p0, Lcom/rfid/trans/ReaderHelp;->QValue:B

    .line 638
    iput v0, p0, Lcom/rfid/trans/ReaderHelp;->Session:I

    .line 639
    iput v2, p0, Lcom/rfid/trans/ReaderHelp;->CardCount:I

    .line 640
    iput v2, p0, Lcom/rfid/trans/ReaderHelp;->ReadSpeed:I

    .line 641
    iput v2, p0, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    .line 2154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/rfid/trans/ReaderHelp;->ledMaskList:Ljava/util/List;

    .line 2155
    iput v2, p0, Lcom/rfid/trans/ReaderHelp;->readledType:I

    .line 43
    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    const/4 v3, -0x1

    iput-byte v3, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    .line 44
    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iput v2, v1, Lcom/rfid/trans/ReaderParameter;->IvtType:I

    .line 45
    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    const/4 v3, 0x2

    iput v3, v1, Lcom/rfid/trans/ReaderParameter;->Memory:I

    .line 46
    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    const-string v3, "00000000"

    iput-object v3, v1, Lcom/rfid/trans/ReaderParameter;->Password:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    const/16 v3, 0x32

    iput v3, v1, Lcom/rfid/trans/ReaderParameter;->ScanTime:I

    .line 48
    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iput v0, v1, Lcom/rfid/trans/ReaderParameter;->Session:I

    .line 49
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    const/4 v1, 0x6

    iput v1, v0, Lcom/rfid/trans/ReaderParameter;->QValue:I

    .line 50
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iput v2, v0, Lcom/rfid/trans/ReaderParameter;->WordPtr:I

    .line 51
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iput v1, v0, Lcom/rfid/trans/ReaderParameter;->Length:I

    .line 52
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    const/16 v1, 0x80

    iput v1, v0, Lcom/rfid/trans/ReaderParameter;->Antenna:I

    .line 53
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iput v2, v0, Lcom/rfid/trans/ReaderParameter;->Interval:I

    .line 54
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iput-byte v2, v0, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    return-void
.end method

.method private ReadRfid()V
    .locals 28

    move-object/from16 v6, p0

    .line 646
    iget v0, v6, Lcom/rfid/trans/ReaderHelp;->Session:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    if-ne v0, v7, :cond_1

    .line 647
    :cond_0
    iput-byte v8, v6, Lcom/rfid/trans/ReaderHelp;->Target:B

    :cond_1
    new-array v5, v7, [I

    aput v8, v5, v8

    .line 651
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->IvtType:I

    const/16 v1, 0x8

    const/4 v4, 0x2

    const/16 v3, 0xff

    if-nez v0, :cond_5

    aput v8, v5, v8

    .line 655
    iget v0, v6, Lcom/rfid/trans/ReaderHelp;->Session:I

    if-ne v0, v3, :cond_2

    const/16 v17, 0x0

    goto :goto_0

    .line 661
    :cond_2
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->ScanTime:I

    int-to-byte v0, v0

    move/from16 v17, v0

    .line 663
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 664
    iput v8, v6, Lcom/rfid/trans/ReaderHelp;->CardCount:I

    .line 665
    iput v8, v6, Lcom/rfid/trans/ReaderHelp;->ReadSpeed:I

    .line 666
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->MaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 668
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->MaskList:Ljava/util/List;

    iget v2, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rfid/trans/MaskClass;

    .line 669
    iget v2, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    add-int/2addr v2, v7

    iput v2, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    .line 670
    iget v2, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    iget-object v9, v6, Lcom/rfid/trans/ReaderHelp;->MaskList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    rem-int/2addr v2, v9

    iput v2, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    .line 671
    iget-object v2, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v9, v0, Lcom/rfid/trans/MaskClass;->MaskMem:B

    iput-byte v9, v2, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    .line 672
    iget-object v2, v0, Lcom/rfid/trans/MaskClass;->MaskAdr:[B

    iget-object v9, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v9, v9, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    invoke-static {v2, v8, v9, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 673
    iget-object v2, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v9, v0, Lcom/rfid/trans/MaskClass;->MaskLen:B

    iput-byte v9, v2, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    .line 674
    iget-object v2, v0, Lcom/rfid/trans/MaskClass;->MaskData:[B

    iget-object v9, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v9, v9, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    iget-byte v0, v0, Lcom/rfid/trans/MaskClass;->MaskLen:B

    and-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x7

    div-int/2addr v0, v1

    invoke-static {v2, v8, v9, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 676
    :cond_3
    iget-object v9, v6, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v10, v0, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    iget-byte v11, v6, Lcom/rfid/trans/ReaderHelp;->QValue:B

    iget v0, v6, Lcom/rfid/trans/ReaderHelp;->Session:I

    int-to-byte v12, v0

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->WordPtr:I

    int-to-byte v13, v0

    const/4 v14, 0x0

    iget-byte v15, v6, Lcom/rfid/trans/ReaderHelp;->Target:B

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v0, v0, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v1, v1, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object v2, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v2, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object v3, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v3, v3, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v16, -0x80

    move/from16 v18, v0

    move-object/from16 v19, v1

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v5

    invoke-virtual/range {v9 .. v24}, Lcom/rfid/trans/BaseReader;->Inventory_G2(BBBBBBBBB[BB[BLjava/util/List;[IZ)I

    .line 678
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v0, v25

    .line 679
    aget v2, v5, v8

    iput v2, v6, Lcom/rfid/trans/ReaderHelp;->CardCount:I

    const-wide/16 v9, 0x0

    cmp-long v3, v0, v9

    if-lez v3, :cond_4

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 681
    div-long/2addr v2, v0

    long-to-int v0, v2

    iput v0, v6, Lcom/rfid/trans/ReaderHelp;->ReadSpeed:I

    :cond_4
    move-object/from16 v27, v5

    const/16 v3, 0xff

    const/4 v4, 0x1

    const/4 v7, 0x2

    goto/16 :goto_7

    .line 684
    :cond_5
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->IvtType:I

    const/4 v2, 0x6

    if-ne v0, v7, :cond_e

    .line 686
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->QValue:I

    int-to-byte v0, v0

    iput-byte v0, v6, Lcom/rfid/trans/ReaderHelp;->QValue:B

    new-array v0, v4, [B

    .line 688
    iget-object v3, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v3, v3, Lcom/rfid/trans/ReaderParameter;->WordPtr:I

    shr-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v8

    .line 689
    iget-object v3, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v3, v3, Lcom/rfid/trans/ReaderParameter;->WordPtr:I

    const/16 v9, 0xff

    and-int/2addr v3, v9

    int-to-byte v3, v3

    aput-byte v3, v0, v7

    .line 691
    iget-object v3, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v3, v3, Lcom/rfid/trans/ReaderParameter;->Length:I

    if-nez v3, :cond_6

    iget-object v3, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iput v2, v3, Lcom/rfid/trans/ReaderParameter;->Length:I

    .line 692
    :cond_6
    iget-object v2, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v2, v2, Lcom/rfid/trans/ReaderParameter;->Length:I

    int-to-byte v3, v2

    .line 693
    iget-object v2, v6, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v9, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v9, v9, Lcom/rfid/trans/ReaderParameter;->Password:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v20

    .line 695
    iget-object v2, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v2, v2, Lcom/rfid/trans/ReaderParameter;->Session:I

    const/16 v9, 0xff

    if-ne v2, v9, :cond_7

    .line 696
    iput v8, v6, Lcom/rfid/trans/ReaderHelp;->Session:I

    .line 697
    :cond_7
    iget-object v2, v6, Lcom/rfid/trans/ReaderHelp;->MaskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 699
    iget-object v2, v6, Lcom/rfid/trans/ReaderHelp;->MaskList:Ljava/util/List;

    iget v9, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rfid/trans/MaskClass;

    .line 700
    iget v9, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    add-int/2addr v9, v7

    iput v9, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    .line 701
    iget v9, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    iget-object v10, v6, Lcom/rfid/trans/ReaderHelp;->MaskList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    rem-int/2addr v9, v10

    iput v9, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    .line 702
    iget-object v9, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v10, v2, Lcom/rfid/trans/MaskClass;->MaskMem:B

    iput-byte v10, v9, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    .line 703
    iget-object v9, v2, Lcom/rfid/trans/MaskClass;->MaskAdr:[B

    iget-object v10, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v10, v10, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    invoke-static {v9, v8, v10, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 704
    iget-object v9, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v10, v2, Lcom/rfid/trans/MaskClass;->MaskLen:B

    iput-byte v10, v9, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    .line 705
    iget-object v9, v2, Lcom/rfid/trans/MaskClass;->MaskData:[B

    iget-object v10, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v10, v10, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    iget-byte v2, v2, Lcom/rfid/trans/MaskClass;->MaskLen:B

    const/16 v11, 0xff

    and-int/2addr v2, v11

    add-int/lit8 v2, v2, 0x7

    div-int/2addr v2, v1

    invoke-static {v9, v8, v10, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 708
    :cond_8
    iget v1, v6, Lcom/rfid/trans/ReaderHelp;->ModuleType:I

    if-ne v1, v7, :cond_d

    .line 710
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput v8, v5, v8

    .line 713
    iget v0, v6, Lcom/rfid/trans/ReaderHelp;->Session:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_9

    const/16 v17, 0x0

    goto :goto_1

    .line 719
    :cond_9
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->ScanTime:I

    int-to-byte v0, v0

    move/from16 v17, v0

    .line 721
    :goto_1
    iget-object v9, v6, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v10, v0, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    iget-byte v11, v6, Lcom/rfid/trans/ReaderHelp;->QValue:B

    iget v0, v6, Lcom/rfid/trans/ReaderHelp;->Session:I

    int-to-byte v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-byte v15, v6, Lcom/rfid/trans/ReaderHelp;->Target:B

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v0, v0, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v1, v1, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object v4, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v4, v4, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object v7, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v7, v7, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    const/16 v24, 0x0

    const/16 v16, -0x80

    move/from16 v18, v0

    move-object/from16 v19, v1

    move/from16 v20, v4

    move-object/from16 v21, v7

    move-object/from16 v22, v2

    move-object/from16 v23, v5

    invoke-virtual/range {v9 .. v24}, Lcom/rfid/trans/BaseReader;->Inventory_NoCallback(BBBBBBBBB[BB[BLjava/util/List;[IZ)I

    .line 723
    sput-boolean v8, Lcom/rfid/trans/ReaderHelp;->isSound:Z

    .line 724
    aget v0, v5, v8

    if-lez v0, :cond_c

    const/4 v7, 0x0

    .line 726
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_c

    .line 728
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/rfid/trans/ReadTag;

    .line 729
    iget-object v1, v9, Lcom/rfid/trans/ReadTag;->epcId:Ljava/lang/String;

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->Memory:I

    int-to-byte v4, v0

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->WordPtr:I

    int-to-byte v10, v0

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v11, v0, Lcom/rfid/trans/ReaderParameter;->Password:Ljava/lang/String;

    move-object/from16 v0, p0

    const/16 v12, 0xff

    move-object v13, v2

    move v2, v4

    move/from16 v19, v3

    const/16 v15, 0xff

    move v3, v10

    const/4 v14, 0x2

    move/from16 v4, v19

    move-object/from16 v27, v5

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/rfid/trans/ReaderHelp;->ReadData_G2(Ljava/lang/String;BIBLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 730
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 732
    iput-object v0, v9, Lcom/rfid/trans/ReadTag;->memId:Ljava/lang/String;

    .line 733
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->callback:Lcom/rfid/trans/TagCallback;

    if-eqz v0, :cond_a

    .line 735
    invoke-interface {v0, v9}, Lcom/rfid/trans/TagCallback;->tagCallback(Lcom/rfid/trans/ReadTag;)V

    .line 737
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/rfid/trans/ReaderHelp;->playSound()V

    :cond_b
    add-int/lit8 v7, v7, 0x1

    move-object v2, v13

    move/from16 v3, v19

    move-object/from16 v5, v27

    goto :goto_2

    :cond_c
    move-object/from16 v27, v5

    const/4 v14, 0x2

    const/16 v15, 0xff

    const/16 v5, 0xff

    const/4 v7, 0x2

    goto/16 :goto_5

    :cond_d
    move/from16 v19, v3

    move-object/from16 v27, v5

    const/4 v14, 0x2

    const/16 v15, 0xff

    .line 745
    iget-object v9, v6, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v10, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    iget-byte v11, v6, Lcom/rfid/trans/ReaderHelp;->QValue:B

    iget v1, v6, Lcom/rfid/trans/ReaderHelp;->Session:I

    int-to-byte v12, v1

    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v13, v1, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v1, v1, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    const/4 v7, 0x2

    move-object v14, v1

    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    const/16 v5, 0xff

    move v15, v1

    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v1, v1, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    move-object/from16 v16, v1

    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v1, v1, Lcom/rfid/trans/ReaderParameter;->Memory:I

    int-to-byte v1, v1

    move/from16 v17, v1

    iget-byte v1, v6, Lcom/rfid/trans/ReaderHelp;->Target:B

    move/from16 v21, v1

    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v1, v1, Lcom/rfid/trans/ReaderParameter;->ScanTime:I

    int-to-byte v1, v1

    move/from16 v23, v1

    const/16 v24, 0x0

    const/16 v22, -0x80

    move-object/from16 v18, v0

    move-object/from16 v25, v27

    invoke-virtual/range {v9 .. v25}, Lcom/rfid/trans/BaseReader;->Inventory_Mix(BBBB[BB[BB[BB[BBBBLjava/util/List;[I)I

    goto/16 :goto_5

    :cond_e
    move-object/from16 v27, v5

    const/16 v5, 0xff

    const/4 v7, 0x2

    .line 751
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->IvtType:I

    const/4 v3, 0x5

    if-ne v0, v7, :cond_18

    .line 753
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->QValue:I

    int-to-byte v0, v0

    iput-byte v0, v6, Lcom/rfid/trans/ReaderHelp;->QValue:B

    .line 754
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->Length:I

    if-nez v0, :cond_f

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iput v2, v0, Lcom/rfid/trans/ReaderParameter;->Length:I

    .line 755
    :cond_f
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->Length:I

    int-to-byte v4, v0

    .line 756
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->Session:I

    if-ne v0, v5, :cond_10

    .line 757
    iput v8, v6, Lcom/rfid/trans/ReaderHelp;->Session:I

    .line 758
    :cond_10
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->MaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 760
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->MaskList:Ljava/util/List;

    iget v2, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rfid/trans/MaskClass;

    .line 761
    iget v2, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    const/4 v9, 0x1

    add-int/2addr v2, v9

    iput v2, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    .line 762
    iget v2, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    iget-object v9, v6, Lcom/rfid/trans/ReaderHelp;->MaskList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    rem-int/2addr v2, v9

    iput v2, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    .line 763
    iget-object v2, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v9, v0, Lcom/rfid/trans/MaskClass;->MaskMem:B

    iput-byte v9, v2, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    .line 764
    iget-object v2, v0, Lcom/rfid/trans/MaskClass;->MaskAdr:[B

    iget-object v9, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v9, v9, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    invoke-static {v2, v8, v9, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 765
    iget-object v2, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v9, v0, Lcom/rfid/trans/MaskClass;->MaskLen:B

    iput-byte v9, v2, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    .line 766
    iget-object v2, v0, Lcom/rfid/trans/MaskClass;->MaskData:[B

    iget-object v9, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v9, v9, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    iget-byte v0, v0, Lcom/rfid/trans/MaskClass;->MaskLen:B

    and-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x7

    div-int/2addr v0, v1

    invoke-static {v2, v8, v9, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 768
    :cond_11
    iget v0, v6, Lcom/rfid/trans/ReaderHelp;->ModuleType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 770
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput v8, v27, v8

    .line 773
    iget v0, v6, Lcom/rfid/trans/ReaderHelp;->Session:I

    if-ne v0, v5, :cond_12

    const/16 v17, 0x0

    goto :goto_3

    .line 779
    :cond_12
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->ScanTime:I

    int-to-byte v0, v0

    move/from16 v17, v0

    .line 781
    :goto_3
    iget-object v9, v6, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v10, v0, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    iget-byte v11, v6, Lcom/rfid/trans/ReaderHelp;->QValue:B

    iget v0, v6, Lcom/rfid/trans/ReaderHelp;->Session:I

    int-to-byte v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-byte v15, v6, Lcom/rfid/trans/ReaderHelp;->Target:B

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v0, v0, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v1, v1, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object v2, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v2, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object v5, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v5, v5, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    const/16 v24, 0x0

    const/16 v16, -0x80

    move/from16 v18, v0

    move-object/from16 v19, v1

    move/from16 v20, v2

    move-object/from16 v21, v5

    move-object/from16 v22, v3

    move-object/from16 v23, v27

    invoke-virtual/range {v9 .. v24}, Lcom/rfid/trans/BaseReader;->Inventory_NoCallback(BBBBBBBBB[BB[BLjava/util/List;[IZ)I

    .line 783
    sput-boolean v8, Lcom/rfid/trans/ReaderHelp;->isSound:Z

    .line 784
    aget v0, v27, v8

    if-lez v0, :cond_15

    const/4 v9, 0x0

    .line 786
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_15

    .line 788
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/rfid/trans/ReadTag;

    .line 789
    iget-object v1, v10, Lcom/rfid/trans/ReadTag;->epcId:Ljava/lang/String;

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->Memory:I

    int-to-byte v2, v0

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->WordPtr:I

    int-to-byte v5, v0

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v11, v0, Lcom/rfid/trans/ReaderParameter;->Password:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v12, v3

    move v3, v5

    move v13, v4

    const/16 v15, 0xff

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/rfid/trans/ReaderHelp;->ReadData_G2(Ljava/lang/String;BIBLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 790
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14

    .line 792
    iput-object v0, v10, Lcom/rfid/trans/ReadTag;->memId:Ljava/lang/String;

    .line 793
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->callback:Lcom/rfid/trans/TagCallback;

    if-eqz v0, :cond_13

    .line 795
    invoke-interface {v0, v10}, Lcom/rfid/trans/TagCallback;->tagCallback(Lcom/rfid/trans/ReadTag;)V

    .line 797
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/rfid/trans/ReaderHelp;->playSound()V

    :cond_14
    add-int/lit8 v9, v9, 0x1

    move-object v3, v12

    move v4, v13

    goto :goto_4

    :cond_15
    const/16 v15, 0xff

    goto :goto_5

    :cond_16
    const/16 v15, 0xff

    aput v8, v27, v8

    .line 805
    iget-object v9, v6, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v10, v0, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    iget-byte v0, v6, Lcom/rfid/trans/ReaderHelp;->QValue:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v11, v0

    iget v0, v6, Lcom/rfid/trans/ReaderHelp;->Session:I

    int-to-byte v12, v0

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->WordPtr:I

    int-to-byte v13, v0

    const/4 v14, 0x0

    iget-byte v0, v6, Lcom/rfid/trans/ReaderHelp;->Target:B

    const/16 v17, 0xa

    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v2, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v2, v2, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object v4, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v4, v4, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object v5, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v5, v5, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v16, -0x80

    move v15, v0

    move/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v23, v27

    invoke-virtual/range {v9 .. v24}, Lcom/rfid/trans/BaseReader;->Inventory_G2(BBBBBBBBB[BB[BLjava/util/List;[IZ)I

    .line 807
    iget v0, v6, Lcom/rfid/trans/ReaderHelp;->Session:I

    if-nez v0, :cond_17

    aget v0, v27, v8

    if-ge v0, v3, :cond_17

    .line 809
    iput-byte v7, v6, Lcom/rfid/trans/ReaderHelp;->QValue:B

    goto :goto_5

    .line 813
    :cond_17
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->QValue:I

    int-to-byte v0, v0

    iput-byte v0, v6, Lcom/rfid/trans/ReaderHelp;->QValue:B

    goto :goto_5

    .line 818
    :cond_18
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->IvtType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1a

    .line 820
    iget-object v9, v6, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v10, v0, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    const/16 v12, 0xa

    const/4 v13, 0x0

    const/16 v11, -0x80

    move-object/from16 v14, v27

    invoke-virtual/range {v9 .. v14}, Lcom/rfid/trans/BaseReader;->Inventory_GB(BBBLjava/util/List;[I)I

    :cond_19
    :goto_5
    const/16 v3, 0xff

    const/4 v4, 0x1

    goto :goto_7

    .line 822
    :cond_1a
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->IvtType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1b

    .line 824
    iget-object v9, v6, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v10, v0, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    const/4 v11, 0x0

    const/16 v13, 0xa

    const/4 v14, 0x0

    const/16 v12, -0x80

    move-object/from16 v15, v27

    invoke-virtual/range {v9 .. v15}, Lcom/rfid/trans/BaseReader;->Inventory_GJB(BBBBLjava/util/List;[I)I

    goto :goto_5

    .line 826
    :cond_1b
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->IvtType:I

    if-ne v0, v3, :cond_19

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    new-array v14, v1, [B

    .line 831
    fill-array-data v14, :array_0

    const/16 v0, 0x100

    new-array v0, v0, [B

    aput v8, v27, v8

    .line 835
    iget-object v9, v6, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v10, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move-object v15, v0

    move-object/from16 v16, v27

    invoke-virtual/range {v9 .. v16}, Lcom/rfid/trans/BaseReader;->InventoryMutiple_6B(BBBB[B[B[I)I

    .line 836
    aget v2, v27, v8

    if-lez v2, :cond_19

    const/4 v2, 0x0

    .line 838
    :goto_6
    aget v3, v27, v8

    if-ge v2, v3, :cond_1c

    .line 840
    iget-object v3, v6, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v0, v5, v1}, Lcom/rfid/trans/BaseReader;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v4, 0x9

    .line 841
    aget-byte v4, v0, v4

    .line 842
    new-instance v5, Lcom/rfid/trans/ReadTag;

    invoke-direct {v5}, Lcom/rfid/trans/ReadTag;-><init>()V

    .line 843
    iput-object v3, v5, Lcom/rfid/trans/ReadTag;->epcId:Ljava/lang/String;

    const-string v3, ""

    .line 844
    iput-object v3, v5, Lcom/rfid/trans/ReadTag;->memId:Ljava/lang/String;

    const/16 v3, 0xff

    and-int/2addr v4, v3

    .line 845
    iput v4, v5, Lcom/rfid/trans/ReadTag;->rssi:I

    .line 846
    iput v8, v5, Lcom/rfid/trans/ReadTag;->phase:I

    const/4 v4, 0x1

    .line 847
    iput v4, v5, Lcom/rfid/trans/ReadTag;->antId:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1c
    const/16 v3, 0xff

    const/4 v4, 0x1

    .line 849
    sput-boolean v4, Lcom/rfid/trans/ReaderHelp;->isSound:Z

    .line 853
    :goto_7
    aget v0, v27, v8

    if-nez v0, :cond_22

    .line 855
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->Session:I

    if-le v0, v4, :cond_21

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->Session:I

    if-ge v0, v3, :cond_21

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->IvtType:I

    if-ge v0, v7, :cond_21

    .line 858
    iget v0, v6, Lcom/rfid/trans/ReaderHelp;->NoCardCOunt:I

    add-int/2addr v0, v4

    iput v0, v6, Lcom/rfid/trans/ReaderHelp;->NoCardCOunt:I

    .line 859
    iget v0, v6, Lcom/rfid/trans/ReaderHelp;->NoCardCOunt:I

    if-le v0, v4, :cond_23

    .line 861
    sput-boolean v8, Lcom/rfid/trans/ReaderHelp;->isSound:Z

    .line 862
    iget-byte v0, v6, Lcom/rfid/trans/ReaderHelp;->Target:B

    rsub-int/lit8 v7, v0, 0x1

    int-to-byte v0, v7

    iput-byte v0, v6, Lcom/rfid/trans/ReaderHelp;->Target:B

    .line 863
    iput v8, v6, Lcom/rfid/trans/ReaderHelp;->NoCardCOunt:I

    .line 864
    iget-boolean v0, v6, Lcom/rfid/trans/ReaderHelp;->PermitControl:Z

    if-eqz v0, :cond_23

    new-array v0, v4, [B

    .line 866
    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v1, v1, Lcom/rfid/trans/ReaderParameter;->Session:I

    const/16 v2, 0xfe

    if-ne v1, v2, :cond_1d

    const/16 v1, -0x3b

    aput-byte v1, v0, v8

    goto :goto_8

    .line 868
    :cond_1d
    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v1, v1, Lcom/rfid/trans/ReaderParameter;->Session:I

    const/16 v2, 0xfd

    if-ne v1, v2, :cond_1e

    const/16 v1, -0x3f

    aput-byte v1, v0, v8

    goto :goto_8

    .line 870
    :cond_1e
    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v1, v1, Lcom/rfid/trans/ReaderParameter;->Session:I

    const/16 v2, 0xfc

    if-ne v1, v2, :cond_1f

    const/16 v1, -0xd

    aput-byte v1, v0, v8

    .line 872
    :cond_1f
    :goto_8
    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v1, v2, v0}, Lcom/rfid/trans/BaseReader;->OperateControl(B[B)I

    move-result v1

    if-nez v1, :cond_20

    .line 873
    aget-byte v0, v0, v8

    iput v0, v6, Lcom/rfid/trans/ReaderHelp;->Cur_Ctrl:I

    :cond_20
    const/4 v0, 0x1

    .line 874
    iput-boolean v0, v6, Lcom/rfid/trans/ReaderHelp;->firstTime:Z

    goto :goto_9

    :cond_21
    const/4 v0, 0x1

    .line 887
    iget v1, v6, Lcom/rfid/trans/ReaderHelp;->NoCardCOunt:I

    add-int/2addr v1, v0

    iput v1, v6, Lcom/rfid/trans/ReaderHelp;->NoCardCOunt:I

    .line 888
    iget v0, v6, Lcom/rfid/trans/ReaderHelp;->NoCardCOunt:I

    if-le v0, v7, :cond_23

    .line 890
    sput-boolean v8, Lcom/rfid/trans/ReaderHelp;->isSound:Z

    goto :goto_9

    .line 896
    :cond_22
    iput v8, v6, Lcom/rfid/trans/ReaderHelp;->NoCardCOunt:I

    :cond_23
    :goto_9
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private SelectBySession(B)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 632
    iget-object v2, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v3, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    const/16 v4, -0x80

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, p1

    invoke-virtual/range {v2 .. v8}, Lcom/rfid/trans/BaseReader;->SelectCMDByTime(BBBBBB)I

    const-wide/16 v1, 0x5

    .line 633
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/rfid/trans/ReaderHelp;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/rfid/trans/ReaderHelp;->soundworking:Z

    return p0
.end method

.method static synthetic access$100(Lcom/rfid/trans/ReaderHelp;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/rfid/trans/ReaderHelp;->mWorking:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/rfid/trans/ReaderHelp;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/rfid/trans/ReaderHelp;->ReadSpeed:I

    return p0
.end method

.method static synthetic access$1100(Lcom/rfid/trans/ReaderHelp;)Lcom/rfid/trans/BaseReader;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/rfid/trans/ReaderHelp;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/rfid/trans/ReaderHelp;->NoCardCOunt:I

    return p0
.end method

.method static synthetic access$1300(Lcom/rfid/trans/ReaderHelp;B)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/rfid/trans/ReaderHelp;->SelectBySession(B)V

    return-void
.end method

.method static synthetic access$1400(Lcom/rfid/trans/ReaderHelp;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/rfid/trans/ReaderHelp;->RF_Ctrl:I

    return p0
.end method

.method static synthetic access$1502(Lcom/rfid/trans/ReaderHelp;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/rfid/trans/ReaderHelp;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/rfid/trans/ReaderHelp;)Lcom/rfid/trans/TagCallback;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/rfid/trans/ReaderHelp;->callback:Lcom/rfid/trans/TagCallback;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/rfid/trans/ReaderHelp;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/rfid/trans/ReaderHelp;->scanLed()V

    return-void
.end method

.method static synthetic access$202(Lcom/rfid/trans/ReaderHelp;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/rfid/trans/ReaderHelp;->sThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$302(Lcom/rfid/trans/ReaderHelp;B)B
    .locals 0

    .line 16
    iput-byte p1, p0, Lcom/rfid/trans/ReaderHelp;->Target:B

    return p1
.end method

.method static synthetic access$402(Lcom/rfid/trans/ReaderHelp;B)B
    .locals 0

    .line 16
    iput-byte p1, p0, Lcom/rfid/trans/ReaderHelp;->QValue:B

    return p1
.end method

.method static synthetic access$500(Lcom/rfid/trans/ReaderHelp;)Lcom/rfid/trans/ReaderParameter;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/rfid/trans/ReaderHelp;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/rfid/trans/ReaderHelp;->ReadRfid()V

    return-void
.end method

.method static synthetic access$700(Lcom/rfid/trans/ReaderHelp;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/rfid/trans/ReaderHelp;->PermitControl:Z

    return p0
.end method

.method static synthetic access$800(Lcom/rfid/trans/ReaderHelp;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/rfid/trans/ReaderHelp;->Cur_Ctrl:I

    return p0
.end method

.method static synthetic access$802(Lcom/rfid/trans/ReaderHelp;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/rfid/trans/ReaderHelp;->Cur_Ctrl:I

    return p1
.end method

.method static synthetic access$900(Lcom/rfid/trans/ReaderHelp;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/rfid/trans/ReaderHelp;->CardCount:I

    return p0
.end method

.method private scanLed()V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x1

    new-array v13, v1, [I

    const/4 v12, 0x0

    aput v12, v13, v12

    const/4 v2, 0x2

    new-array v11, v2, [B

    new-array v7, v2, [B

    const/16 v3, 0x64

    new-array v9, v3, [B

    .line 2227
    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v4, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v4, v4, Lcom/rfid/trans/ReaderParameter;->Password:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v18

    .line 2228
    iget v3, v0, Lcom/rfid/trans/ReaderHelp;->readledType:I

    if-nez v3, :cond_0

    aput-byte v12, v11, v12

    const/4 v3, 0x4

    aput-byte v3, v11, v1

    const/4 v10, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    aput-byte v12, v11, v12

    const/16 v4, 0x70

    aput-byte v4, v11, v1

    const/4 v10, 0x3

    :goto_0
    const/16 v19, 0x1

    .line 2242
    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->ledMaskList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 2244
    iget v3, v0, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    iget-object v4, v0, Lcom/rfid/trans/ReaderHelp;->ledMaskList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v3, v4

    iput v3, v0, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    .line 2245
    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->ledMaskList:Ljava/util/List;

    iget v4, v0, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rfid/trans/MaskClass;

    .line 2246
    iget v4, v0, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    add-int/2addr v4, v1

    iput v4, v0, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    .line 2247
    iget-byte v4, v3, Lcom/rfid/trans/MaskClass;->MaskMem:B

    .line 2248
    iget-object v5, v3, Lcom/rfid/trans/MaskClass;->MaskAdr:[B

    invoke-static {v5, v12, v7, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2249
    iget-byte v2, v3, Lcom/rfid/trans/MaskClass;->MaskLen:B

    .line 2250
    iget-object v5, v3, Lcom/rfid/trans/MaskClass;->MaskData:[B

    iget-byte v3, v3, Lcom/rfid/trans/MaskClass;->MaskLen:B

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    invoke-static {v5, v12, v9, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v2

    move v6, v4

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 2253
    :goto_1
    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v3, v3, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    const/16 v16, 0xa

    const/16 v17, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/16 v15, -0x80

    const/4 v1, 0x0

    move/from16 v12, v19

    move-object/from16 v19, v13

    move-object/from16 v13, v18

    move-object/from16 v18, v19

    invoke-virtual/range {v2 .. v18}, Lcom/rfid/trans/BaseReader;->Inventory_Led(BBBB[BB[BB[BB[BBBBLjava/util/List;[I)I

    .line 2257
    aget v2, v19, v1

    if-nez v2, :cond_2

    .line 2259
    iget v2, v0, Lcom/rfid/trans/ReaderHelp;->NoCardCOunt:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/rfid/trans/ReaderHelp;->NoCardCOunt:I

    .line 2260
    iget v2, v0, Lcom/rfid/trans/ReaderHelp;->NoCardCOunt:I

    if-le v2, v3, :cond_3

    .line 2262
    sput-boolean v1, Lcom/rfid/trans/ReaderHelp;->isSound:Z

    goto :goto_2

    .line 2267
    :cond_2
    iput v1, v0, Lcom/rfid/trans/ReaderHelp;->NoCardCOunt:I

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public AddMaskList(Lcom/rfid/trans/MaskClass;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->MaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public BlockErase_G2(B[BBBB[B[B)I
    .locals 15

    move-object v0, p0

    move-object/from16 v10, p2

    move/from16 v11, p1

    and-int/lit16 v1, v11, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xf

    if-le v1, v3, :cond_0

    return v2

    :cond_0
    if-nez v10, :cond_1

    goto :goto_0

    .line 1502
    :cond_1
    array-length v3, v10

    mul-int/lit8 v1, v1, 0x2

    if-ge v3, v1, :cond_2

    return v2

    :cond_2
    :goto_0
    move-object/from16 v12, p6

    .line 1503
    array-length v1, v12

    const/4 v3, 0x4

    if-ge v1, v3, :cond_3

    return v2

    :cond_3
    move-object/from16 v13, p7

    .line 1504
    array-length v1, v13

    const/4 v3, 0x1

    if-ge v1, v3, :cond_4

    return v2

    :cond_4
    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v14, 0x0

    :goto_1
    const/16 v2, 0xa

    if-ge v14, v2, :cond_6

    .line 1508
    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/rfid/trans/BaseReader;->BlockErase_G2(BB[BBBB[B[B)I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return v1
.end method

.method public BlockWrite_G2(BB[BBB[B[B[B)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v15, p3

    move-object/from16 v14, p6

    move-object/from16 v13, p7

    move-object/from16 v12, p8

    move/from16 v1, p2

    and-int/lit16 v2, v1, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xf

    if-le v2, v4, :cond_0

    return v3

    :cond_0
    const/4 v4, 0x0

    if-nez v15, :cond_1

    const/16 v16, 0x0

    goto :goto_0

    .line 1339
    :cond_1
    array-length v5, v15

    mul-int/lit8 v2, v2, 0x2

    if-ge v5, v2, :cond_2

    return v3

    :cond_2
    move/from16 v16, v1

    :goto_0
    if-eqz v14, :cond_8

    .line 1340
    array-length v1, v14

    move/from16 v11, p1

    and-int/lit16 v2, v11, 0xff

    mul-int/lit8 v2, v2, 0x2

    if-eq v1, v2, :cond_3

    goto/16 :goto_3

    :cond_3
    if-eqz v13, :cond_8

    .line 1341
    array-length v1, v13

    const/4 v2, 0x4

    if-ge v1, v2, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v12, :cond_8

    .line 1342
    array-length v1, v12

    const/4 v2, 0x1

    if-ge v1, v2, :cond_5

    goto :goto_3

    :cond_5
    const/16 v1, 0x30

    const/4 v10, 0x0

    :goto_1
    const/16 v2, 0xa

    if-ge v10, v2, :cond_7

    .line 1346
    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v9, v3, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v8, v3, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v7, v3, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v6, v3, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    move/from16 v3, p1

    move/from16 v4, v16

    move-object/from16 v5, p3

    move-object/from16 v17, v6

    move/from16 v6, p4

    move/from16 v18, v7

    move/from16 v7, p5

    move-object/from16 v19, v8

    move-object/from16 v8, p6

    move/from16 v20, v9

    move-object/from16 v9, p7

    move/from16 v21, v10

    move/from16 v10, v20

    move-object/from16 v11, v19

    move/from16 v12, v18

    move-object/from16 v13, v17

    move-object/from16 v14, p8

    invoke-virtual/range {v1 .. v14}, Lcom/rfid/trans/BaseReader;->BlockWrite_G2(BBB[BBB[B[BB[BB[B[B)I

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v10, v21, 0x1

    move/from16 v11, p1

    move-object/from16 v14, p6

    move-object/from16 v13, p7

    move-object/from16 v12, p8

    goto :goto_1

    :cond_7
    :goto_2
    return v1

    :cond_8
    :goto_3
    return v3
.end method

.method public CheckLock_6B(B[B[B)I
    .locals 2

    .line 2112
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/rfid/trans/BaseReader;->CheckLock_6B(BB[B[B)I

    move-result p1

    return p1
.end method

.method public ClearMaskList()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->MaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    return-void
.end method

.method public Connect(Ljava/lang/String;II)I
    .locals 7

    .line 88
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/rfid/trans/BaseReader;->Connect(Ljava/lang/String;II)I

    move-result p2

    if-nez p2, :cond_3

    const-wide/16 v0, 0x14

    .line 91
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    const/4 p2, 0x2

    new-array v1, p2, [B

    const/4 v6, 0x1

    new-array v2, v6, [B

    new-array v3, v6, [B

    new-array v4, v6, [B

    new-array v5, v6, [B

    move-object v0, p0

    .line 97
    invoke-virtual/range {v0 .. v5}, Lcom/rfid/trans/ReaderHelp;->GetReaderInformation([B[B[B[B[B)I

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {p1}, Lcom/rfid/trans/BaseReader;->DisConnect()I

    return v0

    :cond_0
    new-array v1, v6, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    .line 105
    iget v3, p0, Lcom/rfid/trans/ReaderHelp;->ModuleType:I

    if-ne v3, p2, :cond_1

    .line 107
    iget-object p2, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v0, v0, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {p2, v0, v1}, Lcom/rfid/trans/BaseReader;->OperateControl(B[B)I

    move-result p2

    if-nez p2, :cond_2

    .line 110
    aget-byte v0, v1, v2

    iput v0, p0, Lcom/rfid/trans/ReaderHelp;->RF_Ctrl:I

    .line 111
    aget-byte v0, v1, v2

    iput v0, p0, Lcom/rfid/trans/ReaderHelp;->Cur_Ctrl:I

    goto :goto_0

    :cond_1
    move p2, v0

    .line 114
    :cond_2
    :goto_0
    iput p3, p0, Lcom/rfid/trans/ReaderHelp;->logswitch:I

    .line 115
    iput-object p1, p0, Lcom/rfid/trans/ReaderHelp;->devName:Ljava/lang/String;

    .line 116
    iput-boolean v6, p0, Lcom/rfid/trans/ReaderHelp;->isOpen:Z

    .line 117
    sput-boolean v2, Lcom/rfid/trans/ReaderHelp;->isSound:Z

    .line 118
    iput-boolean v6, p0, Lcom/rfid/trans/ReaderHelp;->soundworking:Z

    .line 119
    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->sThread:Ljava/lang/Thread;

    if-nez p1, :cond_3

    .line 121
    new-instance p1, Ljava/lang/Thread;

    new-instance p3, Lcom/rfid/trans/ReaderHelp$1;

    invoke-direct {p3, p0}, Lcom/rfid/trans/ReaderHelp$1;-><init>(Lcom/rfid/trans/ReaderHelp;)V

    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/rfid/trans/ReaderHelp;->sThread:Ljava/lang/Thread;

    .line 136
    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->sThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_3
    return p2
.end method

.method public DisConnect()I
    .locals 2

    const/4 v0, 0x0

    .line 147
    :try_start_0
    sput-boolean v0, Lcom/rfid/trans/ReaderHelp;->isSound:Z

    .line 148
    iput-boolean v0, p0, Lcom/rfid/trans/ReaderHelp;->soundworking:Z

    .line 149
    iput-boolean v0, p0, Lcom/rfid/trans/ReaderHelp;->mWorking:Z

    .line 150
    iput-boolean v0, p0, Lcom/rfid/trans/ReaderHelp;->isOpen:Z

    const-wide/16 v0, 0x64

    .line 151
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :catch_0
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v0}, Lcom/rfid/trans/BaseReader;->DisConnect()I

    move-result v0

    return v0
.end method

.method public EraseData_GB(Ljava/lang/String;BIILjava/lang/String;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    const/16 v5, 0xff

    if-eqz v4, :cond_2

    .line 1907
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    goto :goto_1

    .line 1908
    :cond_0
    iget-object v6, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v6, v4}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v4, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    .line 1911
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 1913
    iget-object v4, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v4, v1}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 1914
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    move v9, v1

    move-object v10, v4

    goto :goto_0

    :cond_1
    move-object v10, v4

    const/4 v9, 0x0

    :goto_0
    const/4 v1, 0x1

    new-array v15, v1, [B

    const/4 v4, 0x2

    new-array v12, v4, [B

    shr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    aput-byte v7, v12, v6

    and-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v12, v1

    new-array v13, v4, [B

    shr-int/lit8 v2, v3, 0x8

    int-to-byte v2, v2

    aput-byte v2, v13, v6

    and-int/lit16 v2, v3, 0xff

    int-to-byte v2, v2

    aput-byte v2, v13, v1

    .line 1926
    iget-object v7, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v8, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move/from16 v11, p2

    invoke-virtual/range {v7 .. v15}, Lcom/rfid/trans/BaseReader;->EraseData_GB(BB[BB[B[B[B[B)I

    move-result v1

    return v1

    :cond_2
    :goto_1
    return v5
.end method

.method public EraseData_GJB(Ljava/lang/String;BIILjava/lang/String;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    const/16 v5, 0xff

    if-eqz v4, :cond_2

    .line 2019
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    goto :goto_1

    .line 2020
    :cond_0
    iget-object v6, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v6, v4}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v4, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    .line 2023
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 2025
    iget-object v4, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v4, v1}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 2026
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    move v9, v1

    move-object v10, v4

    goto :goto_0

    :cond_1
    move-object v10, v4

    const/4 v9, 0x0

    :goto_0
    const/4 v1, 0x1

    new-array v15, v1, [B

    const/4 v4, 0x2

    new-array v12, v4, [B

    shr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    aput-byte v7, v12, v6

    and-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v12, v1

    new-array v13, v4, [B

    shr-int/lit8 v2, v3, 0x8

    int-to-byte v2, v2

    aput-byte v2, v13, v6

    and-int/lit16 v2, v3, 0xff

    int-to-byte v2, v2

    aput-byte v2, v13, v1

    .line 2038
    iget-object v7, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v8, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move/from16 v11, p2

    invoke-virtual/range {v7 .. v15}, Lcom/rfid/trans/BaseReader;->EraseData_GJB(BB[BB[B[B[B[B)I

    move-result v1

    return v1

    :cond_2
    :goto_1
    return v5
.end method

.method public FST_ShowImage(B[B)I
    .locals 3

    and-int/lit16 v0, p1, 0xff

    const/16 v1, 0xff

    const/16 v2, 0xf

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    .line 1528
    :cond_1
    array-length v2, p2

    mul-int/lit8 v0, v0, 0x2

    if-ge v2, v0, :cond_2

    return v1

    .line 1529
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v0, v1, p1, p2}, Lcom/rfid/trans/BaseReader;->FST_ShowImage(BB[B)I

    move-result p1

    return p1
.end method

.method public FST_TranImage(B[B[B)I
    .locals 4

    and-int/lit16 v0, p1, 0xff

    const/16 v1, 0xff

    if-eqz p2, :cond_2

    .line 1517
    array-length v2, p2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    .line 1518
    array-length v2, p3

    if-ge v2, v0, :cond_1

    goto :goto_0

    .line 1519
    :cond_1
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/rfid/trans/BaseReader;->FST_TranImage(BB[B[B)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public Fd_ExtReadMemory(Ljava/lang/String;IILjava/lang/String;BLjava/lang/String;[B[I)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v14, p7

    const/4 v6, 0x1

    new-array v15, v6, [B

    const/16 v7, 0xff

    if-eqz v4, :cond_5

    .line 1767
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz v5, :cond_5

    .line 1768
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v8, v9, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz v14, :cond_5

    .line 1769
    array-length v8, v14

    if-ge v8, v3, :cond_2

    goto/16 :goto_1

    .line 1770
    :cond_2
    iget-object v8, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v8, v4}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 1771
    iget-object v4, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v4, v5}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v9

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    .line 1772
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 1774
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    rem-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_3

    return v7

    .line 1780
    :cond_3
    iget-object v10, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v10, v1}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1781
    array-length v10, v1

    div-int/2addr v10, v4

    int-to-byte v10, v10

    move-object v11, v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    move-object v11, v1

    const/4 v10, 0x0

    :goto_0
    new-array v12, v4, [B

    shr-int/lit8 v1, v2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v12, v5

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    aput-byte v1, v12, v6

    new-array v13, v4, [B

    shr-int/lit8 v1, v3, 0x8

    int-to-byte v1, v1

    aput-byte v1, v13, v5

    and-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    aput-byte v1, v13, v6

    .line 1792
    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v7, v3, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v6, v3, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v5, v3, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v4, v3, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    move v3, v10

    move-object/from16 v16, v4

    move-object v4, v11

    move/from16 v17, v5

    move-object v5, v12

    move-object v11, v6

    move-object v6, v13

    move v10, v7

    move-object v7, v8

    move/from16 v8, p5

    move/from16 v12, v17

    move-object/from16 v13, v16

    move-object/from16 v14, p7

    move-object/from16 v16, v15

    move-object/from16 v15, p8

    invoke-virtual/range {v1 .. v16}, Lcom/rfid/trans/BaseReader;->Fd_ExtReadMemory(BB[B[B[B[BB[BB[BB[B[B[I[B)I

    move-result v1

    return v1

    :cond_5
    :goto_1
    return v7
.end method

.method public Fd_GetTemperature(Ljava/lang/String;BBBBBLjava/lang/String;[B)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v15, p8

    const/4 v3, 0x1

    new-array v14, v3, [B

    const/16 v3, 0xff

    if-eqz v2, :cond_4

    .line 1691
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v15, :cond_4

    .line 1692
    array-length v4, v15

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    goto :goto_1

    .line 1693
    :cond_1
    iget-object v4, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v4, v2}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    if-eqz v1, :cond_3

    .line 1694
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 1696
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    return v3

    .line 1702
    :cond_2
    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v2, v1}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1703
    array-length v2, v1

    div-int/2addr v2, v5

    int-to-byte v2, v2

    move-object v4, v1

    move v3, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    const/4 v3, 0x0

    .line 1706
    :goto_0
    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    iget-object v5, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v11, v5, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v5, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v12, v5, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object v5, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v13, v5, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object v5, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v9, v5, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v16, v9

    move/from16 v9, p6

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    move-object/from16 v15, p8

    move-object/from16 v16, v17

    invoke-virtual/range {v1 .. v16}, Lcom/rfid/trans/BaseReader;->Fd_GetTemperature(BB[BBBBBB[BB[BB[B[B[B)I

    move-result v1

    return v1

    :cond_4
    :goto_1
    return v3
.end method

.method public Fd_InitRegfile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    const/4 v0, 0x1

    new-array v10, v0, [B

    const/16 v0, 0xff

    if-eqz p2, :cond_3

    .line 1558
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 1559
    :cond_0
    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v1, p2}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    if-eqz p1, :cond_2

    .line 1560
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 1562
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    rem-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_1

    return v0

    .line 1568
    :cond_1
    iget-object p2, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {p2, p1}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1569
    array-length p2, p1

    div-int/lit8 p2, p2, 0x2

    int-to-byte p2, p2

    move-object v4, p1

    move v3, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const/4 p2, 0x0

    move-object v4, p2

    const/4 v3, 0x0

    .line 1572
    :goto_0
    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, p1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v6, p1, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v7, p1, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v8, p1, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v9, p1, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    invoke-virtual/range {v1 .. v10}, Lcom/rfid/trans/BaseReader;->Fd_InitRegfile(BB[B[BB[BB[B[B)I

    move-result p1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method public Fd_OP_Mode_Chk(Ljava/lang/String;BLjava/lang/String;[B)I
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v11, p4

    const/4 v3, 0x1

    new-array v12, v3, [B

    const/16 v3, 0xff

    if-eqz v2, :cond_4

    .line 1800
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v11, :cond_4

    .line 1801
    array-length v4, v11

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    goto :goto_1

    .line 1802
    :cond_1
    iget-object v4, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v4, v2}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    if-eqz v1, :cond_3

    .line 1803
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 1805
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    return v3

    .line 1811
    :cond_2
    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v2, p1}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1812
    array-length v2, v1

    div-int/2addr v2, v5

    int-to-byte v2, v2

    move-object v4, v1

    move v3, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    const/4 v3, 0x0

    .line 1815
    :goto_0
    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    iget-object v5, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v7, v5, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v5, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v8, v5, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object v5, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v9, v5, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object v5, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v10, v5, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    move v5, p2

    move-object/from16 v11, p4

    invoke-virtual/range {v1 .. v12}, Lcom/rfid/trans/BaseReader;->Fd_OP_Mode_Chk(BB[BB[BB[BB[B[B[B)I

    move-result v1

    return v1

    :cond_4
    :goto_1
    return v3
.end method

.method public Fd_ReadMemory(Ljava/lang/String;IBLjava/lang/String;BLjava/lang/String;[B)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v14, p7

    const/4 v5, 0x1

    new-array v15, v5, [B

    const/16 v6, 0xff

    if-eqz v3, :cond_5

    .line 1633
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz v4, :cond_5

    .line 1634
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v7, v8, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz v14, :cond_5

    .line 1635
    array-length v7, v14

    move/from16 v8, p3

    and-int/lit16 v9, v8, 0xff

    if-ge v7, v9, :cond_2

    goto/16 :goto_1

    .line 1636
    :cond_2
    iget-object v7, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v7, v3}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 1637
    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v3, v4}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v9

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 1638
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 1640
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    rem-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_3

    return v6

    .line 1646
    :cond_3
    iget-object v10, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v10, v1}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1647
    array-length v10, v1

    div-int/2addr v10, v3

    int-to-byte v10, v10

    move-object v11, v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    move-object v11, v1

    const/4 v10, 0x0

    :goto_0
    new-array v12, v3, [B

    shr-int/lit8 v1, v2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v12, v4

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    aput-byte v1, v12, v5

    .line 1654
    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v13, v3, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v6, v3, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v5, v3, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v4, v3, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    move v3, v10

    move-object/from16 v16, v4

    move-object v4, v11

    move/from16 v17, v5

    move-object v5, v12

    move-object v11, v6

    move/from16 v6, p3

    move/from16 v8, p5

    move v10, v13

    move/from16 v12, v17

    move-object/from16 v13, v16

    move-object/from16 v14, p7

    invoke-virtual/range {v1 .. v15}, Lcom/rfid/trans/BaseReader;->Fd_ReadMemory(BB[B[BB[BB[BB[BB[B[B[B)I

    move-result v1

    return v1

    :cond_5
    :goto_1
    return v6
.end method

.method public Fd_ReadReg(Ljava/lang/String;ILjava/lang/String;[B)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v11, p4

    const/4 v4, 0x1

    new-array v12, v4, [B

    const/16 v5, 0xff

    if-eqz v3, :cond_4

    .line 1581
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v11, :cond_4

    .line 1582
    array-length v6, v11

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    goto :goto_1

    .line 1583
    :cond_1
    iget-object v6, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v6, v3}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 1584
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 1586
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_2

    return v5

    .line 1592
    :cond_2
    iget-object v8, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v8, v1}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1593
    array-length v8, v1

    div-int/2addr v8, v7

    int-to-byte v8, v8

    move-object v9, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    move-object v9, v1

    const/4 v8, 0x0

    :goto_0
    new-array v7, v7, [B

    shr-int/lit8 v1, v2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v7, v3

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    aput-byte v1, v7, v4

    .line 1599
    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v10, v3, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v13, v3, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v14, v3, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v15, v3, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    move v3, v8

    move-object v4, v9

    move-object v5, v7

    move v7, v10

    move-object v8, v13

    move v9, v14

    move-object v10, v15

    move-object/from16 v11, p4

    invoke-virtual/range {v1 .. v12}, Lcom/rfid/trans/BaseReader;->Fd_ReadReg(BB[B[B[BB[BB[B[B[B)I

    move-result v1

    return v1

    :cond_4
    :goto_1
    return v5
.end method

.method public Fd_StartLogging(Ljava/lang/String;IILjava/lang/String;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x1

    new-array v15, v5, [B

    const/16 v6, 0xff

    if-eqz v4, :cond_3

    .line 1714
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    goto :goto_1

    .line 1715
    :cond_0
    iget-object v7, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v7, v4}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v4, 0x2

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    .line 1716
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 1718
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_1

    return v6

    .line 1724
    :cond_1
    iget-object v8, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v8, v1}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1725
    array-length v8, v1

    div-int/2addr v8, v4

    int-to-byte v8, v8

    move-object v9, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move-object v9, v1

    const/4 v8, 0x0

    :goto_0
    new-array v10, v4, [B

    shr-int/lit8 v1, v2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v10, v7

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    aput-byte v1, v10, v5

    new-array v11, v4, [B

    shr-int/lit8 v1, v3, 0x8

    int-to-byte v1, v1

    aput-byte v1, v11, v7

    and-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    aput-byte v1, v11, v5

    .line 1735
    iget-object v6, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v7, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v13, v1, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v14, v1, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v2, v2, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    move-object v3, v15

    move v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v6 .. v17}, Lcom/rfid/trans/BaseReader;->Fd_StartLogging(BB[B[B[B[BB[BB[B[B)I

    move-result v1

    return v1

    :cond_3
    :goto_1
    return v6
.end method

.method public Fd_StopLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12

    const/4 v0, 0x1

    new-array v11, v0, [B

    const/16 v0, 0xff

    if-eqz p2, :cond_4

    .line 1743
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_4

    .line 1744
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 1745
    :cond_1
    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v1, p2}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 1746
    iget-object p2, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {p2, p3}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    if-eqz p1, :cond_3

    .line 1747
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_3

    .line 1749
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    rem-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_2

    return v0

    .line 1755
    :cond_2
    iget-object p2, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {p2, p1}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1756
    array-length p2, p1

    div-int/lit8 p2, p2, 0x2

    int-to-byte p2, p2

    move-object v4, p1

    move v3, p2

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    const/4 p2, 0x0

    move-object v4, p2

    const/4 v3, 0x0

    .line 1759
    :goto_0
    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, p1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v7, p1, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v8, p1, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v9, p1, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v10, p1, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    invoke-virtual/range {v1 .. v11}, Lcom/rfid/trans/BaseReader;->Fd_StopLogging(BB[B[B[BB[BB[B[B)I

    move-result p1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method public Fd_WriteMemory(Ljava/lang/String;I[BLjava/lang/String;BLjava/lang/String;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v7, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    const/4 v5, 0x1

    new-array v15, v5, [B

    const/16 v6, 0xff

    if-eqz v3, :cond_5

    .line 1662
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz v4, :cond_5

    .line 1663
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v8, v9, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz v7, :cond_5

    .line 1664
    array-length v8, v7

    rem-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_2

    goto/16 :goto_1

    .line 1665
    :cond_2
    iget-object v8, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v8, v3}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 1666
    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v3, v4}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 1667
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 1669
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    rem-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_3

    return v6

    .line 1675
    :cond_3
    iget-object v9, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v9, v1}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1676
    array-length v9, v1

    div-int/2addr v9, v3

    int-to-byte v9, v9

    move-object v11, v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    move-object v11, v1

    const/4 v9, 0x0

    :goto_0
    new-array v12, v3, [B

    shr-int/lit8 v1, v2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v12, v4

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    aput-byte v1, v12, v5

    .line 1683
    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    array-length v6, v7

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v13, v3, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v14, v3, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v5, v3, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v4, v3, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    move v3, v9

    move-object/from16 v16, v4

    move-object v4, v11

    move/from16 v17, v5

    move-object v5, v12

    move-object/from16 v7, p3

    move/from16 v9, p5

    move v11, v13

    move-object v12, v14

    move/from16 v13, v17

    move-object/from16 v14, v16

    invoke-virtual/range {v1 .. v15}, Lcom/rfid/trans/BaseReader;->Fd_WriteMemory(BB[B[BI[B[BB[BB[BB[B[B)I

    move-result v1

    return v1

    :cond_5
    :goto_1
    return v6
.end method

.method public Fd_WriteReg(Ljava/lang/String;I[BLjava/lang/String;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v6, p3

    move-object/from16 v3, p4

    const/4 v4, 0x1

    new-array v12, v4, [B

    const/16 v5, 0xff

    if-eqz v3, :cond_4

    .line 1607
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v6, :cond_4

    .line 1608
    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    goto :goto_1

    .line 1609
    :cond_1
    iget-object v7, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v7, v3}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 1610
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 1612
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    rem-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_2

    return v5

    .line 1618
    :cond_2
    iget-object v9, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v9, v1}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1619
    array-length v9, v1

    div-int/2addr v9, v8

    int-to-byte v9, v9

    move-object v10, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    move-object v10, v1

    const/4 v9, 0x0

    :goto_0
    new-array v8, v8, [B

    shr-int/lit8 v1, v2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v8, v3

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    aput-byte v1, v8, v4

    .line 1625
    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v11, v3, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v13, v3, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v14, v3, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v15, v3, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    move v3, v9

    move-object v4, v10

    move-object v5, v8

    move-object/from16 v6, p3

    move v8, v11

    move-object v9, v13

    move v10, v14

    move-object v11, v15

    invoke-virtual/range {v1 .. v12}, Lcom/rfid/trans/BaseReader;->Fd_WriteReg(BB[B[B[B[BB[BB[B[B)I

    move-result v1

    return v1

    :cond_4
    :goto_1
    return v5
.end method

.method public FindEPC(Ljava/lang/String;)Lcom/rfid/trans/ReadTag;
    .locals 19

    move-object/from16 v0, p0

    .line 2377
    new-instance v1, Lcom/rfid/trans/ReadTag;

    invoke-direct {v1}, Lcom/rfid/trans/ReadTag;-><init>()V

    const/4 v1, 0x0

    .line 2378
    iput-boolean v1, v0, Lcom/rfid/trans/ReaderHelp;->mWorking:Z

    .line 2379
    sput-boolean v1, Lcom/rfid/trans/ReaderHelp;->isSound:Z

    const/4 v2, 0x2

    new-array v13, v2, [B

    .line 2381
    fill-array-data v13, :array_0

    .line 2384
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    int-to-byte v14, v2

    .line 2385
    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v15

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v1, v2, v1

    .line 2388
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2389
    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v4, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v4, v4, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    iget-object v5, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v5, v5, Lcom/rfid/trans/ReaderParameter;->WordPtr:I

    int-to-byte v7, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, -0x80

    const/4 v11, 0x3

    const/16 v16, 0x1

    const/16 v18, 0x0

    move-object/from16 p1, v12

    move/from16 v12, v16

    move-object/from16 v16, p1

    move-object/from16 v17, v2

    invoke-virtual/range {v3 .. v18}, Lcom/rfid/trans/BaseReader;->Inventory_G2(BBBBBBBBB[BB[BLjava/util/List;[IZ)I

    .line 2391
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    move-object/from16 v2, p1

    .line 2393
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rfid/trans/ReadTag;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2399
    :goto_0
    sput-boolean v1, Lcom/rfid/trans/ReaderHelp;->isSound:Z

    return-object v2

    nop

    :array_0
    .array-data 1
        0x0t
        0x20t
    .end array-data
.end method

.method public GetCfgParameter(B[B[I)I
    .locals 2

    .line 2127
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/rfid/trans/BaseReader;->GetCfgParameter(BB[B[I)I

    move-result p1

    return p1
.end method

.method public GetCheckAnt([B)I
    .locals 15

    const/4 v0, 0x1

    new-array v4, v0, [B

    new-array v5, v0, [B

    new-array v13, v0, [B

    new-array v2, v0, [B

    new-array v11, v0, [B

    new-array v12, v0, [B

    const/4 v1, 0x0

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    new-array v10, v0, [B

    const/4 v0, 0x2

    new-array v3, v0, [B

    new-array v6, v0, [B

    new-array v7, v0, [B

    new-array v8, v0, [B

    new-array v9, v0, [B

    move-object v0, p0

    .line 2299
    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    move-object/from16 v14, p1

    invoke-virtual/range {v1 .. v14}, Lcom/rfid/trans/BaseReader;->GetReaderInformation([B[B[B[B[B[B[B[B[B[B[B[B[B)I

    move-result v1

    return v1
.end method

.method public GetCustomRegion([I[I[I[I)I
    .locals 6

    .line 2142
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/rfid/trans/BaseReader;->GetCustomRegion(B[I[I[I[I)I

    move-result p1

    return p1
.end method

.method public GetDRM([B)I
    .locals 2

    .line 1488
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/16 p1, 0xff

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 1489
    aput-byte v0, p1, v0

    .line 1490
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v0, v1, p1}, Lcom/rfid/trans/BaseReader;->ConfigDRM(B[B)I

    move-result p1

    return p1
.end method

.method public GetDeviceID()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 273
    iget-object v2, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v3, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v3, v3, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v2, v3, v1}, Lcom/rfid/trans/BaseReader;->GetDeviceID(B[B)I

    move-result v2

    if-nez v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lcom/rfid/trans/BaseReader;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetGPIOStatus([B)I
    .locals 2

    .line 265
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/16 p1, 0xff

    return p1

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v0, v1, p1}, Lcom/rfid/trans/BaseReader;->GetGPIOStatus(B[B)I

    move-result p1

    return p1
.end method

.method public GetInventoryPatameter()Lcom/rfid/trans/ReaderParameter;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    return-object v0
.end method

.method public GetModuleDescribe([B)I
    .locals 2

    .line 2146
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v0, v1, p1}, Lcom/rfid/trans/BaseReader;->GetModuleDescribe(B[B)I

    move-result p1

    return p1
.end method

.method public GetProfile([B)I
    .locals 3

    .line 350
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/16 p1, 0xff

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 351
    aput-byte v0, p1, v0

    .line 352
    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v1, v2, p1}, Lcom/rfid/trans/BaseReader;->SetProfile(B[B)I

    return v0
.end method

.method public GetRFIDTempreture()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 325
    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v1, v2, v0}, Lcom/rfid/trans/BaseReader;->MeasureTemperature(B[B)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 329
    aget-byte v1, v0, v1

    if-nez v1, :cond_0

    const-string v1, "-"

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 330
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public GetReaderInformation([B[B[B[B[B)I
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x1

    new-array v15, v1, [B

    new-array v6, v1, [B

    new-array v14, v1, [B

    new-array v13, v1, [B

    new-array v12, v1, [B

    new-array v11, v1, [B

    new-array v10, v1, [B

    const/4 v2, -0x1

    const/4 v9, 0x0

    aput-byte v2, v12, v9

    new-array v8, v1, [B

    .line 169
    iput v9, v0, Lcom/rfid/trans/ReaderHelp;->ModuleType:I

    .line 170
    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    move-object v3, v12

    move-object/from16 v4, p1

    move-object v5, v15

    move-object/from16 v7, p3

    move-object/from16 v16, v8

    move-object/from16 v8, p4

    const/16 v17, 0x0

    move-object/from16 v9, p5

    move-object/from16 v18, v10

    move-object/from16 v10, p2

    move-object/from16 v19, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v13

    move-object/from16 v13, v18

    move-object/from16 v18, v15

    move-object/from16 v15, v19

    invoke-virtual/range {v2 .. v15}, Lcom/rfid/trans/BaseReader;->GetReaderInformation([B[B[B[B[B[B[B[B[B[B[B[B[B)I

    move-result v2

    if-nez v2, :cond_3

    .line 173
    aget-byte v3, p2, v17

    iput v3, v0, Lcom/rfid/trans/ReaderHelp;->Cfg_Power:I

    .line 174
    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    aget-byte v4, v16, v17

    iput-byte v4, v3, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    .line 175
    aget-byte v3, v18, v17

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x70

    if-eq v3, v4, :cond_2

    aget-byte v3, v18, v17

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x71

    if-eq v3, v4, :cond_2

    aget-byte v3, v18, v17

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x31

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    aget-byte v3, v18, v17

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xf

    if-eq v3, v4, :cond_1

    aget-byte v3, v18, v17

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-eq v3, v4, :cond_1

    aget-byte v3, v18, v17

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x50

    if-eq v3, v4, :cond_1

    aget-byte v3, v18, v17

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x51

    if-eq v3, v4, :cond_1

    aget-byte v3, v18, v17

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x52

    if-ne v3, v4, :cond_3

    .line 187
    :cond_1
    iput v1, v0, Lcom/rfid/trans/ReaderHelp;->ModuleType:I

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x2

    .line 179
    iput v1, v0, Lcom/rfid/trans/ReaderHelp;->ModuleType:I

    :cond_3
    :goto_1
    return v2
.end method

.method public GetReaderType()I
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v4, v1, [B

    const/4 v15, 0x1

    new-array v14, v15, [B

    new-array v7, v15, [B

    new-array v8, v15, [B

    new-array v9, v15, [B

    new-array v13, v15, [B

    new-array v6, v15, [B

    new-array v12, v15, [B

    new-array v11, v15, [B

    new-array v10, v15, [B

    new-array v5, v15, [B

    new-array v3, v15, [B

    const/4 v2, 0x0

    const/16 v16, -0x1

    aput-byte v16, v10, v2

    new-array v1, v15, [B

    .line 210
    iput v2, v0, Lcom/rfid/trans/ReaderHelp;->ModuleType:I

    .line 211
    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    const/16 v17, 0x0

    move-object/from16 v18, v3

    move-object v3, v10

    move-object/from16 v19, v5

    move-object v5, v13

    move-object/from16 v20, v10

    move-object v10, v14

    move-object/from16 v21, v11

    move-object v11, v1

    move-object v1, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v13

    move-object/from16 v13, v18

    move-object/from16 v18, v14

    move-object v14, v1

    const/4 v1, 0x1

    move-object/from16 v15, v21

    invoke-virtual/range {v2 .. v15}, Lcom/rfid/trans/BaseReader;->GetReaderInformation([B[B[B[B[B[B[B[B[B[B[B[B[B)I

    move-result v2

    if-nez v2, :cond_4

    .line 214
    aget-byte v2, v18, v17

    iput v2, v0, Lcom/rfid/trans/ReaderHelp;->Cfg_Power:I

    .line 215
    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    aget-byte v3, v20, v17

    iput-byte v3, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    .line 216
    aget-byte v2, v19, v17

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x70

    if-eq v2, v3, :cond_2

    aget-byte v2, v19, v17

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x71

    if-eq v2, v3, :cond_2

    aget-byte v2, v19, v17

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    aget-byte v2, v19, v17

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xf

    if-eq v2, v3, :cond_1

    aget-byte v2, v19, v17

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    aget-byte v2, v19, v17

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x50

    if-eq v2, v3, :cond_1

    aget-byte v2, v19, v17

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x51

    if-eq v2, v3, :cond_1

    aget-byte v2, v19, v17

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x52

    if-ne v2, v3, :cond_3

    .line 228
    :cond_1
    iput v1, v0, Lcom/rfid/trans/ReaderHelp;->ModuleType:I

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x2

    .line 220
    iput v1, v0, Lcom/rfid/trans/ReaderHelp;->ModuleType:I

    .line 230
    :cond_3
    :goto_1
    aget-byte v1, v19, v17

    and-int/lit16 v1, v1, 0xff

    return v1

    :cond_4
    return v16
.end method

.method public GetRetryTimes([B)I
    .locals 2

    .line 309
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/16 p1, 0xff

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 310
    aput-byte v0, p1, v0

    .line 311
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v0, v1, p1}, Lcom/rfid/trans/BaseReader;->RetryTimes(B[B)I

    move-result p1

    return p1
.end method

.method public GetWritePower([B)I
    .locals 2

    .line 294
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/16 p1, 0xff

    return p1

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v0, v1, p1}, Lcom/rfid/trans/BaseReader;->GetWritePower(B[B)I

    move-result p1

    return p1
.end method

.method public InventoryMutiple_6B(BBB[B[B[I)I
    .locals 8

    .line 2075
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/rfid/trans/BaseReader;->InventoryMutiple_6B(BBBB[B[B[I)I

    move-result p1

    return p1
.end method

.method public InventoryOnce(BBBBBBBLjava/util/List;)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BBBBBBB",
            "Ljava/util/List<",
            "Lcom/rfid/trans/ReadTag;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    if-nez p8, :cond_0

    .line 1043
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v1

    goto :goto_0

    .line 1045
    :cond_0
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->clear()V

    move-object/from16 v15, p8

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v18, 0x0

    aput v18, v1, v18

    .line 1048
    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v3, v3, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    iget-object v4, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v11, v4, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v4, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v12, v4, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object v4, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v13, v4, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object v4, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v14, v4, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    const/16 v17, 0x0

    move/from16 v4, p2

    move/from16 v5, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p6

    move/from16 v9, p5

    move/from16 v10, p7

    move-object/from16 v16, v1

    invoke-virtual/range {v2 .. v17}, Lcom/rfid/trans/BaseReader;->Inventory_G2(BBBBBBBBB[BB[BLjava/util/List;[IZ)I

    move-result v2

    .line 1050
    sput-boolean v18, Lcom/rfid/trans/ReaderHelp;->isSound:Z

    .line 1051
    aget v1, v1, v18

    if-lez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/rfid/trans/ReaderHelp;->playSound()V

    :cond_1
    return v2
.end method

.method public InventorySingle_6B([B)I
    .locals 2

    .line 2062
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v0, v1, p1}, Lcom/rfid/trans/BaseReader;->InventorySingle_6B(B[B)I

    move-result p1

    return p1
.end method

.method public InventorySingle_G2()V
    .locals 23

    move-object/from16 v6, p0

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 2307
    iget-object v3, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v3, v3, Lcom/rfid/trans/ReaderParameter;->IvtType:I

    const/4 v4, 0x2

    if-nez v3, :cond_1

    aput v2, v1, v2

    .line 2310
    iput v2, v6, Lcom/rfid/trans/ReaderHelp;->CardCount:I

    .line 2311
    iput v2, v6, Lcom/rfid/trans/ReaderHelp;->ReadSpeed:I

    .line 2312
    iget-object v3, v6, Lcom/rfid/trans/ReaderHelp;->MaskList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2314
    iget-object v3, v6, Lcom/rfid/trans/ReaderHelp;->MaskList:Ljava/util/List;

    iget v5, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rfid/trans/MaskClass;

    .line 2315
    iget v5, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    add-int/2addr v5, v0

    iput v5, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    .line 2316
    iget v0, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    iget-object v5, v6, Lcom/rfid/trans/ReaderHelp;->MaskList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    rem-int/2addr v0, v5

    iput v0, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    .line 2317
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v5, v3, Lcom/rfid/trans/MaskClass;->MaskMem:B

    iput-byte v5, v0, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    .line 2318
    iget-object v0, v3, Lcom/rfid/trans/MaskClass;->MaskAdr:[B

    iget-object v5, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v5, v5, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    invoke-static {v0, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2319
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v4, v3, Lcom/rfid/trans/MaskClass;->MaskLen:B

    iput-byte v4, v0, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    .line 2320
    iget-object v0, v3, Lcom/rfid/trans/MaskClass;->MaskData:[B

    iget-object v4, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v4, v4, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    iget-byte v3, v3, Lcom/rfid/trans/MaskClass;->MaskLen:B

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    invoke-static {v0, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2322
    :cond_0
    iget-object v7, v6, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v8, v0, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    const/4 v9, 0x2

    const/4 v10, 0x0

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->WordPtr:I

    int-to-byte v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x3

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v0, v0, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v3, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v3, v3, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object v4, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v4, v4, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object v5, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v5, v5, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    const/16 v20, 0x0

    const/16 v22, 0x1

    const/16 v14, -0x80

    move/from16 v16, v0

    move-object/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v21, v1

    invoke-virtual/range {v7 .. v22}, Lcom/rfid/trans/BaseReader;->Inventory_G2(BBBBBBBBB[BB[BLjava/util/List;[IZ)I

    .line 2324
    sput-boolean v2, Lcom/rfid/trans/ReaderHelp;->isSound:Z

    goto/16 :goto_1

    .line 2326
    :cond_1
    iget-object v3, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v3, v3, Lcom/rfid/trans/ReaderParameter;->IvtType:I

    if-ne v3, v0, :cond_6

    .line 2328
    iget-object v3, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v3, v3, Lcom/rfid/trans/ReaderParameter;->QValue:I

    int-to-byte v3, v3

    iput-byte v3, v6, Lcom/rfid/trans/ReaderHelp;->QValue:B

    .line 2330
    iget-object v3, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v3, v3, Lcom/rfid/trans/ReaderParameter;->WordPtr:I

    .line 2331
    iget-object v3, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v3, v3, Lcom/rfid/trans/ReaderParameter;->WordPtr:I

    .line 2333
    iget-object v3, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v3, v3, Lcom/rfid/trans/ReaderParameter;->Length:I

    if-nez v3, :cond_2

    iget-object v3, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    const/4 v5, 0x6

    iput v5, v3, Lcom/rfid/trans/ReaderParameter;->Length:I

    .line 2334
    :cond_2
    iget-object v3, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v3, v3, Lcom/rfid/trans/ReaderParameter;->Length:I

    int-to-byte v5, v3

    .line 2335
    iget-object v3, v6, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v7, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v7, v7, Lcom/rfid/trans/ReaderParameter;->Password:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    .line 2337
    iput v2, v6, Lcom/rfid/trans/ReaderHelp;->Session:I

    .line 2338
    iget-object v3, v6, Lcom/rfid/trans/ReaderHelp;->MaskList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 2340
    iget-object v3, v6, Lcom/rfid/trans/ReaderHelp;->MaskList:Ljava/util/List;

    iget v7, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rfid/trans/MaskClass;

    .line 2341
    iget v7, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    add-int/2addr v7, v0

    iput v7, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    .line 2342
    iget v0, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    iget-object v7, v6, Lcom/rfid/trans/ReaderHelp;->MaskList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    rem-int/2addr v0, v7

    iput v0, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    .line 2343
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v7, v3, Lcom/rfid/trans/MaskClass;->MaskMem:B

    iput-byte v7, v0, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    .line 2344
    iget-object v0, v3, Lcom/rfid/trans/MaskClass;->MaskAdr:[B

    iget-object v7, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v7, v7, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    invoke-static {v0, v2, v7, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2345
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v4, v3, Lcom/rfid/trans/MaskClass;->MaskLen:B

    iput-byte v4, v0, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    .line 2346
    iget-object v0, v3, Lcom/rfid/trans/MaskClass;->MaskData:[B

    iget-object v4, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v4, v4, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    iget-byte v3, v3, Lcom/rfid/trans/MaskClass;->MaskLen:B

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    invoke-static {v0, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2349
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput v2, v1, v2

    .line 2351
    iget-object v7, v6, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v8, v0, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-byte v13, v6, Lcom/rfid/trans/ReaderHelp;->Target:B

    const/4 v15, 0x3

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v0, v0, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v3, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v3, v3, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object v14, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v14, v14, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object v2, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v2, v2, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    const/16 v22, 0x1

    const/16 v16, -0x80

    move/from16 v18, v14

    move/from16 v14, v16

    move/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v1

    invoke-virtual/range {v7 .. v22}, Lcom/rfid/trans/BaseReader;->Inventory_NoCallback(BBBBBBBBB[BB[BLjava/util/List;[IZ)I

    const/4 v0, 0x0

    .line 2353
    sput-boolean v0, Lcom/rfid/trans/ReaderHelp;->isSound:Z

    .line 2354
    aget v1, v1, v0

    if-lez v1, :cond_6

    const/4 v7, 0x0

    .line 2356
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_6

    .line 2358
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/rfid/trans/ReadTag;

    .line 2359
    iget-object v1, v8, Lcom/rfid/trans/ReadTag;->epcId:Ljava/lang/String;

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->Memory:I

    int-to-byte v2, v0

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->WordPtr:I

    int-to-byte v3, v0

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v9, v0, Lcom/rfid/trans/ReaderParameter;->Password:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v10, v4

    move v4, v5

    move v11, v5

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/rfid/trans/ReaderHelp;->ReadData_G2(Ljava/lang/String;BIBLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2360
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 2362
    iput-object v0, v8, Lcom/rfid/trans/ReadTag;->memId:Ljava/lang/String;

    .line 2363
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->callback:Lcom/rfid/trans/TagCallback;

    if-eqz v0, :cond_4

    .line 2365
    invoke-interface {v0, v8}, Lcom/rfid/trans/TagCallback;->tagCallback(Lcom/rfid/trans/ReadTag;)V

    .line 2367
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/rfid/trans/ReaderHelp;->playSound()V

    goto :goto_1

    :cond_5
    add-int/lit8 v7, v7, 0x1

    move-object v4, v10

    move v5, v11

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method public Inventory_GB(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rfid/trans/ReadTag;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 2055
    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v0, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    const/16 v3, -0x80

    const/16 v4, 0xa

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/rfid/trans/BaseReader;->Inventory_GB(BBBLjava/util/List;[I)I

    move-result p1

    return p1
.end method

.method public Inventory_GJB(BLjava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/List<",
            "Lcom/rfid/trans/ReadTag;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v7, v0, [I

    .line 2047
    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v0, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    const/16 v4, -0x80

    const/16 v5, 0xa

    move v3, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/rfid/trans/BaseReader;->Inventory_GJB(BBBBLjava/util/List;[I)I

    move-result p1

    return p1
.end method

.method public Kill_G2(B[B[B[B)I
    .locals 9

    and-int/lit16 v0, p1, 0xff

    const/16 v1, 0xff

    const/16 v2, 0xf

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    .line 1298
    :cond_1
    array-length v2, p2

    mul-int/lit8 v0, v0, 0x2

    if-ge v2, v0, :cond_2

    return v1

    :cond_2
    :goto_0
    if-eqz p3, :cond_7

    .line 1299
    array-length v0, p3

    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    goto :goto_3

    :cond_3
    if-eqz p4, :cond_7

    .line 1300
    array-length v0, p4

    const/4 v2, 0x1

    if-ge v0, v2, :cond_4

    goto :goto_3

    :cond_4
    const/16 v0, 0x30

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0xa

    if-ge v1, v2, :cond_6

    .line 1304
    iget-object v3, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v4, v0, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/rfid/trans/BaseReader;->Kill_G2(BB[B[B[B)I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return v0

    :cond_7
    :goto_3
    return v1
.end method

.method public Kill_GB(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    if-eqz p2, :cond_2

    .line 1891
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 1892
    :cond_0
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v0, p2}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1895
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1897
    iget-object p2, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {p2, p1}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 1898
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    move v3, p1

    move-object v4, p2

    goto :goto_0

    :cond_1
    move-object v4, v0

    const/4 v3, 0x0

    :goto_0
    const/4 p1, 0x1

    new-array v6, p1, [B

    .line 1902
    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, p1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual/range {v1 .. v6}, Lcom/rfid/trans/BaseReader;->Kill_GB(BB[B[B[B)I

    move-result p1

    return p1

    :cond_2
    :goto_1
    const/16 p1, 0xff

    return p1
.end method

.method public Kill_GJB(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    if-eqz p2, :cond_2

    .line 2003
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2004
    :cond_0
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v0, p2}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2007
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 2009
    iget-object p2, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {p2, p1}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 2010
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    move v3, p1

    move-object v4, p2

    goto :goto_0

    :cond_1
    move-object v4, v0

    const/4 v3, 0x0

    :goto_0
    const/4 p1, 0x1

    new-array v6, p1, [B

    .line 2014
    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, p1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual/range {v1 .. v6}, Lcom/rfid/trans/BaseReader;->Kill_GJB(BB[B[B[B)I

    move-result p1

    return p1

    :cond_2
    :goto_1
    const/16 p1, 0xff

    return p1
.end method

.method public KillbyTID(B[B[B[B)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    const/16 v13, 0xff

    if-eqz v2, :cond_5

    .line 1312
    array-length v3, v2

    mul-int/lit8 v4, v1, 0x2

    if-ge v3, v4, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v11, :cond_5

    .line 1313
    array-length v3, v11

    const/4 v5, 0x4

    if-ge v3, v5, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v12, :cond_5

    .line 1314
    array-length v3, v12

    const/4 v5, 0x1

    if-ge v3, v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v14, 0x2

    const/4 v3, 0x2

    new-array v15, v3, [B

    .line 1316
    fill-array-data v15, :array_0

    and-int/2addr v1, v13

    mul-int/lit8 v1, v1, 0x10

    int-to-byte v10, v1

    const/16 v1, 0x64

    new-array v9, v1, [B

    const/4 v1, 0x0

    .line 1320
    invoke-static {v2, v1, v9, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x30

    const/4 v8, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v8, v1, :cond_4

    .line 1324
    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    int-to-byte v3, v13

    const/4 v4, 0x0

    move-object/from16 v5, p3

    move v6, v14

    move-object v7, v15

    move/from16 v16, v8

    move v8, v10

    move-object/from16 v17, v9

    move/from16 v18, v10

    move-object/from16 v10, p4

    invoke-virtual/range {v1 .. v10}, Lcom/rfid/trans/BaseReader;->Kill_G2(BB[B[BB[BB[B[B)I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v16, 0x1

    move-object/from16 v9, v17

    move/from16 v10, v18

    goto :goto_0

    :cond_4
    :goto_1
    return v2

    :cond_5
    :goto_2
    return v13

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public LedOn_kx2005x(Ljava/lang/String;Ljava/lang/String;B)I
    .locals 12

    const/16 v0, 0xff

    if-eqz p2, :cond_3

    .line 1536
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 1537
    :cond_0
    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v1, p2}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    if-eqz p1, :cond_2

    .line 1538
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 1540
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    rem-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_1

    return v0

    .line 1546
    :cond_1
    iget-object p2, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {p2, p1}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1547
    array-length p2, p1

    div-int/lit8 p2, p2, 0x2

    int-to-byte p2, p2

    move-object v5, p1

    move v4, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const/4 p2, 0x0

    move-object v5, p2

    const/4 v4, 0x0

    .line 1550
    :goto_0
    iget-object v2, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v3, p1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v8, p1, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v9, p1, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v10, p1, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v11, p1, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    move v6, p3

    invoke-virtual/range {v2 .. v11}, Lcom/rfid/trans/BaseReader;->LedOn_kx2005x(BB[BB[BB[BB[B)I

    move-result p1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method public Lock_6B(B[B)I
    .locals 2

    .line 2103
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v0, v1, p1, p2}, Lcom/rfid/trans/BaseReader;->Lock_6B(BB[B)I

    move-result p1

    return p1
.end method

.method public Lock_G2(B[BBB[B[B)I
    .locals 14

    move-object v0, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move v12, p1

    and-int/lit16 v1, v12, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xf

    if-le v1, v3, :cond_0

    return v2

    :cond_0
    if-nez v9, :cond_1

    goto :goto_0

    .line 1256
    :cond_1
    array-length v3, v9

    mul-int/lit8 v1, v1, 0x2

    if-ge v3, v1, :cond_2

    return v2

    :cond_2
    :goto_0
    if-eqz v10, :cond_7

    .line 1258
    array-length v1, v10

    const/4 v3, 0x4

    if-ge v1, v3, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v11, :cond_7

    .line 1259
    array-length v1, v11

    const/4 v3, 0x1

    if-ge v1, v3, :cond_4

    goto :goto_3

    :cond_4
    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v13, 0x0

    :goto_1
    const/16 v2, 0xa

    if-ge v13, v2, :cond_6

    .line 1263
    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/rfid/trans/BaseReader;->Lock_G2(BB[BBB[B[B)I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return v1

    :cond_7
    :goto_3
    return v2
.end method

.method public Lock_GB(Ljava/lang/String;BBBLjava/lang/String;)I
    .locals 10

    if-eqz p5, :cond_2

    .line 1875
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 1876
    :cond_0
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v0, p5}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v8

    const/4 p5, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1879
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1881
    iget-object p5, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {p5, p1}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p5

    .line 1882
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    move v3, p1

    move-object v4, p5

    goto :goto_0

    :cond_1
    move-object v4, v0

    const/4 v3, 0x0

    :goto_0
    const/4 p1, 0x1

    new-array v9, p1, [B

    .line 1886
    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, p1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v9}, Lcom/rfid/trans/BaseReader;->Lock_GB(BB[BBBB[B[B)I

    move-result p1

    return p1

    :cond_2
    :goto_1
    const/16 p1, 0xff

    return p1
.end method

.method public Lock_GJB(Ljava/lang/String;BBBLjava/lang/String;)I
    .locals 10

    if-eqz p5, :cond_2

    .line 1987
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 1988
    :cond_0
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v0, p5}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v8

    const/4 p5, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1991
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1993
    iget-object p5, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {p5, p1}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p5

    .line 1994
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    move v3, p1

    move-object v4, p5

    goto :goto_0

    :cond_1
    move-object v4, v0

    const/4 v3, 0x0

    :goto_0
    const/4 p1, 0x1

    new-array v9, p1, [B

    .line 1998
    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, p1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v9}, Lcom/rfid/trans/BaseReader;->Lock_GJB(BB[BBBB[B[B)I

    move-result p1

    return p1

    :cond_2
    :goto_1
    const/16 p1, 0xff

    return p1
.end method

.method public LockbyTID(B[BBB[B[B)I
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    const/16 v15, 0xff

    if-eqz v2, :cond_5

    .line 1272
    array-length v3, v2

    mul-int/lit8 v4, v1, 0x2

    if-ge v3, v4, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v13, :cond_5

    .line 1273
    array-length v3, v13

    const/4 v5, 0x4

    if-ge v3, v5, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v14, :cond_5

    .line 1274
    array-length v3, v14

    const/4 v5, 0x1

    if-ge v3, v5, :cond_2

    goto :goto_2

    :cond_2
    const/16 v16, 0x2

    const/4 v3, 0x2

    new-array v12, v3, [B

    .line 1276
    fill-array-data v12, :array_0

    and-int/2addr v1, v15

    mul-int/lit8 v1, v1, 0x10

    int-to-byte v11, v1

    const/16 v1, 0x64

    new-array v10, v1, [B

    const/4 v1, 0x0

    .line 1280
    invoke-static {v2, v1, v10, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x30

    const/4 v9, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v9, v1, :cond_4

    .line 1284
    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    int-to-byte v3, v15

    const/4 v4, 0x0

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, v16

    move/from16 v17, v9

    move-object v9, v12

    move-object/from16 v18, v10

    move v10, v11

    move/from16 v19, v11

    move-object/from16 v11, v18

    move-object/from16 v20, v12

    move-object/from16 v12, p6

    invoke-virtual/range {v1 .. v12}, Lcom/rfid/trans/BaseReader;->Lock_G2(BB[BBB[BB[BB[B[B)I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v9, v17, 0x1

    move-object/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v20

    goto :goto_0

    :cond_4
    :goto_1
    return v2

    :cond_5
    :goto_2
    return v15

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public MeasureReturnLoss([BB[B)I
    .locals 2

    .line 2132
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/rfid/trans/BaseReader;->MeasureReturnLoss(B[BB[B)I

    move-result p1

    return p1
.end method

.method public PowerControll(Landroid/content/Context;Z)V
    .locals 0

    .line 79
    invoke-static {p2}, Lcom/rfid/trans/OtgUtils;->set53GPIOEnabled(Z)Z

    return-void
.end method

.method public ReadDataByTID(Ljava/lang/String;BBB[B)Ljava/lang/String;
    .locals 24

    move-object/from16 v0, p0

    .line 1148
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, -0x1

    const/16 v3, 0xc

    new-array v15, v3, [B

    .line 1151
    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/16 v17, 0x2

    const/4 v5, 0x2

    new-array v14, v5, [B

    .line 1153
    fill-array-data v14, :array_0

    .line 1155
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    int-to-byte v13, v6

    .line 1156
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    new-array v12, v4, [B

    .line 1157
    array-length v4, v3

    const/4 v11, 0x0

    invoke-static {v3, v11, v12, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v10, p4

    and-int/lit16 v3, v10, 0xff

    mul-int/lit8 v9, v3, 0x2

    .line 1159
    new-array v8, v9, [B

    const/4 v3, 0x1

    new-array v7, v3, [B

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v4, 0xa

    if-ge v6, v4, :cond_2

    .line 1164
    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v4, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v4, v4, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move v5, v1

    move/from16 v18, v6

    move-object v6, v15

    move-object/from16 v19, v7

    move/from16 v7, p2

    move-object/from16 p1, v8

    move/from16 v8, p3

    move v1, v9

    move/from16 v9, p4

    move-object/from16 v10, p5

    const/4 v2, 0x0

    move/from16 v11, v17

    move-object/from16 v20, v12

    move-object v12, v14

    move/from16 v21, v13

    move-object/from16 v22, v14

    move-object/from16 v14, v20

    move-object/from16 v23, v15

    move-object/from16 v15, p1

    move-object/from16 v16, v19

    invoke-virtual/range {v3 .. v16}, Lcom/rfid/trans/BaseReader;->ReadData_G2(BB[BBBB[BB[BB[B[B[B)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v18, 0x1

    move-object/from16 v8, p1

    move/from16 v10, p4

    move v9, v1

    move-object/from16 v7, v19

    move-object/from16 v12, v20

    move/from16 v13, v21

    move-object/from16 v14, v22

    move-object/from16 v15, v23

    const/4 v1, -0x1

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 p1, v8

    move v1, v9

    const/4 v2, 0x0

    :goto_1
    if-nez v3, :cond_3

    .line 1169
    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4, v2, v1}, Lcom/rfid/trans/BaseReader;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    const/4 v1, 0x0

    return-object v1

    :cond_4
    :goto_2
    const/4 v1, 0x0

    return-object v1

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public ReadData_6B(B[BB[B)I
    .locals 6

    .line 2085
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/rfid/trans/BaseReader;->ReadData_6B(BB[BB[B)I

    move-result p1

    return p1
.end method

.method public ReadData_G2(B[BBIB[B[B[B)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v15, p2

    move-object/from16 v14, p6

    move-object/from16 v13, p7

    move-object/from16 v12, p8

    move/from16 v11, p1

    and-int/lit16 v1, v11, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xf

    if-le v1, v3, :cond_0

    if-ge v1, v2, :cond_0

    return v2

    :cond_0
    if-eq v1, v2, :cond_1

    if-nez v15, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x10

    if-ge v1, v3, :cond_2

    .line 1130
    array-length v3, v15

    mul-int/lit8 v1, v1, 0x2

    if-ge v3, v1, :cond_2

    return v2

    :cond_2
    :goto_0
    if-eqz v13, :cond_8

    .line 1132
    array-length v1, v13

    move/from16 v10, p5

    and-int/lit16 v3, v10, 0xff

    mul-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_3

    goto/16 :goto_3

    :cond_3
    if-eqz v14, :cond_8

    .line 1133
    array-length v1, v14

    const/4 v3, 0x4

    if-ge v1, v3, :cond_4

    goto/16 :goto_3

    :cond_4
    if-eqz v12, :cond_8

    .line 1134
    array-length v1, v12

    const/4 v3, 0x1

    if-ge v1, v3, :cond_5

    goto :goto_3

    :cond_5
    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_1
    const/16 v2, 0xa

    if-ge v9, v2, :cond_7

    .line 1138
    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move/from16 v8, p4

    int-to-byte v6, v8

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v7, v3, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v5, v3, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v4, v3, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v3, v3, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    move-object/from16 v16, v3

    move/from16 v3, p1

    move/from16 v17, v4

    move-object/from16 v4, p2

    move-object/from16 v18, v5

    move/from16 v5, p3

    move/from16 v19, v7

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v20, v9

    move/from16 v9, v19

    move-object/from16 v10, v18

    move/from16 v11, v17

    move-object/from16 v12, v16

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    invoke-virtual/range {v1 .. v14}, Lcom/rfid/trans/BaseReader;->ReadData_G2(BB[BBBB[BB[BB[B[B[B)I

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v9, v20, 0x1

    move/from16 v11, p1

    move/from16 v10, p5

    move-object/from16 v14, p6

    move-object/from16 v13, p7

    move-object/from16 v12, p8

    goto :goto_1

    :cond_7
    :goto_2
    return v1

    :cond_8
    :goto_3
    return v2
.end method

.method public ReadData_G2(Ljava/lang/String;BIBLjava/lang/String;)Ljava/lang/String;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 1361
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    goto/16 :goto_3

    .line 1362
    :cond_0
    iget-object v4, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v4, v2}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v1, :cond_2

    .line 1363
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 1365
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    rem-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1

    return-object v3

    .line 1371
    :cond_1
    iget-object v5, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v5, v1}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1372
    array-length v5, v1

    div-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    move/from16 v19, v5

    goto :goto_0

    :cond_2
    move-object v1, v3

    const/16 v19, 0x0

    :goto_0
    mul-int/lit8 v15, p4, 0x2

    .line 1376
    new-array v14, v15, [B

    const/4 v5, 0x1

    new-array v13, v5, [B

    const/16 v5, 0x30

    const/4 v12, 0x0

    :goto_1
    const/16 v6, 0xa

    if-ge v12, v6, :cond_4

    .line 1381
    iget-object v5, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v6, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v6, v6, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move/from16 v11, p3

    int-to-byte v10, v11

    iget-object v7, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v9, v7, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v7, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v8, v7, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object v7, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v7, v7, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object v4, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v4, v4, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    move/from16 v16, v7

    move/from16 v7, v19

    move-object/from16 v17, v8

    move-object v8, v1

    move/from16 v18, v9

    move/from16 v9, p2

    move/from16 v11, p4

    move/from16 v20, v12

    move-object v12, v2

    move-object/from16 v21, v13

    move/from16 v13, v18

    move-object/from16 p1, v14

    move-object/from16 v14, v17

    move/from16 v22, v15

    move/from16 v15, v16

    move-object/from16 v16, v4

    move-object/from16 v17, p1

    move-object/from16 v18, v21

    invoke-virtual/range {v5 .. v18}, Lcom/rfid/trans/BaseReader;->ReadData_G2(BB[BBBB[BB[BB[B[B[B)I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v12, v20, 0x1

    move-object/from16 v14, p1

    move-object/from16 v13, v21

    move/from16 v15, v22

    goto :goto_1

    :cond_4
    move-object/from16 p1, v14

    move/from16 v22, v15

    :goto_2
    if-eqz v5, :cond_5

    return-object v3

    .line 1390
    :cond_5
    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    move-object/from16 v3, p1

    move/from16 v2, v22

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/rfid/trans/BaseReader;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_6
    :goto_3
    return-object v3
.end method

.method public ReadData_GB(Ljava/lang/String;BIBLjava/lang/String;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p5

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 1821
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    goto :goto_1

    .line 1822
    :cond_0
    iget-object v5, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v5, v3}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1825
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 1827
    iget-object v5, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v5, v1}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 1828
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    move v8, v1

    move-object v9, v5

    goto :goto_0

    :cond_1
    move-object v9, v4

    const/4 v8, 0x0

    :goto_0
    mul-int/lit8 v1, p4, 0x2

    .line 1831
    new-array v5, v1, [B

    const/4 v6, 0x1

    new-array v15, v6, [B

    const/4 v7, 0x2

    new-array v11, v7, [B

    shr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    aput-byte v7, v11, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v11, v6

    .line 1838
    iget-object v6, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v7, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move/from16 v10, p2

    move/from16 v12, p4

    move-object v14, v5

    invoke-virtual/range {v6 .. v15}, Lcom/rfid/trans/BaseReader;->ReadData_GB(BB[BB[BB[B[B[B)I

    move-result v2

    if-nez v2, :cond_2

    .line 1841
    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v2, v5, v3, v1}, Lcom/rfid/trans/BaseReader;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    :goto_1
    return-object v4
.end method

.method public ReadData_GJB(Ljava/lang/String;BIBLjava/lang/String;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p5

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 1932
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    goto :goto_1

    .line 1933
    :cond_0
    iget-object v5, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v5, v3}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1936
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 1938
    iget-object v5, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v5, v1}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 1939
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    move v8, v1

    move-object v9, v5

    goto :goto_0

    :cond_1
    move-object v9, v4

    const/4 v8, 0x0

    :goto_0
    mul-int/lit8 v1, p4, 0x2

    .line 1942
    new-array v5, v1, [B

    const/4 v6, 0x1

    new-array v15, v6, [B

    const/4 v7, 0x2

    new-array v11, v7, [B

    shr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    aput-byte v7, v11, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v11, v6

    .line 1949
    iget-object v6, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v7, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move/from16 v10, p2

    move/from16 v12, p4

    move-object v14, v5

    invoke-virtual/range {v6 .. v15}, Lcom/rfid/trans/BaseReader;->ReadData_GJB(BB[BB[BB[B[B[B)I

    move-result v2

    if-nez v2, :cond_2

    .line 1952
    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v2, v5, v3, v1}, Lcom/rfid/trans/BaseReader;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    :goto_1
    return-object v4
.end method

.method public RfOutput(B)I
    .locals 2

    .line 2117
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v0, v1, p1}, Lcom/rfid/trans/BaseReader;->RfOutput(BB)I

    move-result p1

    return p1
.end method

.method public ScanRfid()V
    .locals 26

    move-object/from16 v6, p0

    .line 912
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->Session:I

    const/4 v1, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_0

    .line 913
    iput-byte v7, v6, Lcom/rfid/trans/ReaderHelp;->Target:B

    iput v7, v6, Lcom/rfid/trans/ReaderHelp;->NoCardCOunt:I

    goto :goto_0

    .line 914
    :cond_0
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->Session:I

    if-ne v0, v1, :cond_1

    .line 915
    iput-byte v7, v6, Lcom/rfid/trans/ReaderHelp;->Target:B

    :cond_1
    :goto_0
    new-array v5, v1, [I

    .line 917
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->QValue:I

    int-to-byte v0, v0

    iput-byte v0, v6, Lcom/rfid/trans/ReaderHelp;->QValue:B

    .line 918
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->IvtType:I

    if-nez v0, :cond_3

    aput v7, v5, v7

    .line 922
    iget-object v8, v6, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v9, v0, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    iget-byte v10, v6, Lcom/rfid/trans/ReaderHelp;->QValue:B

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->Session:I

    int-to-byte v11, v0

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->WordPtr:I

    int-to-byte v12, v0

    const/4 v13, 0x0

    iget-byte v14, v6, Lcom/rfid/trans/ReaderHelp;->Target:B

    const/16 v16, 0xa

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v0, v0, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v1, v1, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object v2, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v2, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object v3, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v3, v3, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v15, -0x80

    move/from16 v17, v0

    move-object/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v5

    invoke-virtual/range {v8 .. v23}, Lcom/rfid/trans/BaseReader;->Inventory_G2(BBBBBBBBB[BB[BLjava/util/List;[IZ)I

    :cond_2
    move-object/from16 v25, v5

    goto/16 :goto_4

    .line 925
    :cond_3
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->IvtType:I

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/16 v4, 0xff

    if-ne v0, v1, :cond_b

    .line 927
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->QValue:I

    int-to-byte v0, v0

    iput-byte v0, v6, Lcom/rfid/trans/ReaderHelp;->QValue:B

    new-array v0, v2, [B

    .line 929
    iget-object v8, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v8, v8, Lcom/rfid/trans/ReaderParameter;->WordPtr:I

    shr-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 930
    iget-object v8, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v8, v8, Lcom/rfid/trans/ReaderParameter;->WordPtr:I

    and-int/2addr v8, v4

    int-to-byte v8, v8

    aput-byte v8, v0, v1

    .line 932
    iget-object v8, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v8, v8, Lcom/rfid/trans/ReaderParameter;->Length:I

    if-nez v8, :cond_4

    iget-object v8, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    const/4 v9, 0x6

    iput v9, v8, Lcom/rfid/trans/ReaderParameter;->Length:I

    .line 933
    :cond_4
    iget-object v8, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v8, v8, Lcom/rfid/trans/ReaderParameter;->Length:I

    int-to-byte v15, v8

    .line 934
    iget-object v8, v6, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v9, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v9, v9, Lcom/rfid/trans/ReaderParameter;->Password:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v19

    .line 936
    iget-object v8, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v8, v8, Lcom/rfid/trans/ReaderParameter;->Session:I

    if-ne v8, v4, :cond_5

    .line 937
    iput v7, v6, Lcom/rfid/trans/ReaderHelp;->Session:I

    .line 938
    :cond_5
    iget-object v8, v6, Lcom/rfid/trans/ReaderHelp;->MaskList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 940
    iget-object v8, v6, Lcom/rfid/trans/ReaderHelp;->MaskList:Ljava/util/List;

    iget v9, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/rfid/trans/MaskClass;

    .line 941
    iget v9, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    add-int/2addr v9, v1

    iput v9, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    .line 942
    iget v9, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    iget-object v10, v6, Lcom/rfid/trans/ReaderHelp;->MaskList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    rem-int/2addr v9, v10

    iput v9, v6, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    .line 943
    iget-object v9, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v10, v8, Lcom/rfid/trans/MaskClass;->MaskMem:B

    iput-byte v10, v9, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    .line 944
    iget-object v9, v8, Lcom/rfid/trans/MaskClass;->MaskAdr:[B

    iget-object v10, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v10, v10, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    invoke-static {v9, v7, v10, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 945
    iget-object v2, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v9, v8, Lcom/rfid/trans/MaskClass;->MaskLen:B

    iput-byte v9, v2, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    .line 946
    iget-object v2, v8, Lcom/rfid/trans/MaskClass;->MaskData:[B

    iget-object v9, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v9, v9, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    iget-byte v8, v8, Lcom/rfid/trans/MaskClass;->MaskLen:B

    and-int/2addr v8, v4

    add-int/lit8 v8, v8, 0x7

    div-int/2addr v8, v3

    invoke-static {v2, v7, v9, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 949
    :cond_6
    iget v2, v6, Lcom/rfid/trans/ReaderHelp;->ModuleType:I

    if-ne v2, v1, :cond_a

    .line 951
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput v7, v5, v7

    .line 954
    iget v0, v6, Lcom/rfid/trans/ReaderHelp;->Session:I

    if-ne v0, v4, :cond_7

    const/16 v16, 0x0

    goto :goto_1

    .line 960
    :cond_7
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->ScanTime:I

    int-to-byte v0, v0

    move/from16 v16, v0

    .line 962
    :goto_1
    iget-object v8, v6, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v9, v0, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    iget-byte v10, v6, Lcom/rfid/trans/ReaderHelp;->QValue:B

    iget v0, v6, Lcom/rfid/trans/ReaderHelp;->Session:I

    int-to-byte v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-byte v14, v6, Lcom/rfid/trans/ReaderHelp;->Target:B

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v0, v0, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v1, v1, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object v2, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v2, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object v4, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v4, v4, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    const/16 v23, 0x0

    const/16 v17, -0x80

    move/from16 v24, v15

    move/from16 v15, v17

    move/from16 v17, v0

    move-object/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    invoke-virtual/range {v8 .. v23}, Lcom/rfid/trans/BaseReader;->Inventory_NoCallback(BBBBBBBBB[BB[BLjava/util/List;[IZ)I

    .line 964
    sput-boolean v7, Lcom/rfid/trans/ReaderHelp;->isSound:Z

    .line 965
    aget v0, v5, v7

    if-lez v0, :cond_2

    const/4 v8, 0x0

    .line 967
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 969
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/rfid/trans/ReadTag;

    .line 970
    iget-object v1, v9, Lcom/rfid/trans/ReadTag;->epcId:Ljava/lang/String;

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->Memory:I

    int-to-byte v2, v0

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->WordPtr:I

    int-to-byte v4, v0

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v10, v0, Lcom/rfid/trans/ReaderParameter;->Password:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v11, v3

    move v3, v4

    move/from16 v4, v24

    move-object/from16 v25, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/rfid/trans/ReaderHelp;->ReadData_G2(Ljava/lang/String;BIBLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 971
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 973
    iput-object v0, v9, Lcom/rfid/trans/ReadTag;->memId:Ljava/lang/String;

    .line 974
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->callback:Lcom/rfid/trans/TagCallback;

    if-eqz v0, :cond_8

    .line 976
    invoke-interface {v0, v9}, Lcom/rfid/trans/TagCallback;->tagCallback(Lcom/rfid/trans/ReadTag;)V

    .line 978
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/rfid/trans/ReaderHelp;->playSound()V

    :cond_9
    add-int/lit8 v8, v8, 0x1

    move-object v3, v11

    move-object/from16 v5, v25

    goto :goto_2

    :cond_a
    move-object/from16 v25, v5

    move/from16 v24, v15

    .line 985
    iget-object v8, v6, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v9, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    iget-byte v10, v6, Lcom/rfid/trans/ReaderHelp;->QValue:B

    iget v1, v6, Lcom/rfid/trans/ReaderHelp;->Session:I

    int-to-byte v11, v1

    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v12, v1, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v13, v1, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v14, v1, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v15, v1, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v1, v1, Lcom/rfid/trans/ReaderParameter;->Memory:I

    int-to-byte v1, v1

    move/from16 v16, v1

    iget-byte v1, v6, Lcom/rfid/trans/ReaderHelp;->Target:B

    move/from16 v20, v1

    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v1, v1, Lcom/rfid/trans/ReaderParameter;->ScanTime:I

    int-to-byte v1, v1

    move/from16 v22, v1

    const/16 v23, 0x0

    const/16 v21, -0x80

    move-object/from16 v17, v0

    move/from16 v18, v24

    move-object/from16 v24, v25

    invoke-virtual/range {v8 .. v24}, Lcom/rfid/trans/BaseReader;->Inventory_Mix(BBBB[BB[BB[BB[BBBBLjava/util/List;[I)I

    goto/16 :goto_4

    :cond_b
    move-object/from16 v25, v5

    .line 991
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->IvtType:I

    if-ne v0, v2, :cond_c

    aput v7, v25, v7

    .line 994
    iget-object v8, v6, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v9, v0, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    iget-byte v0, v6, Lcom/rfid/trans/ReaderHelp;->QValue:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v10, v0

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->Session:I

    int-to-byte v11, v0

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->WordPtr:I

    int-to-byte v12, v0

    const/4 v13, 0x0

    iget-byte v14, v6, Lcom/rfid/trans/ReaderHelp;->Target:B

    const/16 v16, 0xa

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v0, v0, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v1, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v1, v1, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object v2, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v2, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object v3, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v3, v3, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v15, -0x80

    move/from16 v17, v0

    move-object/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v25

    invoke-virtual/range {v8 .. v23}, Lcom/rfid/trans/BaseReader;->Inventory_G2(BBBBBBBBB[BB[BLjava/util/List;[IZ)I

    goto/16 :goto_4

    .line 997
    :cond_c
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->IvtType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_d

    .line 999
    iget-object v8, v6, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v9, v0, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    const/16 v11, 0xa

    const/4 v12, 0x0

    const/16 v10, -0x80

    move-object/from16 v13, v25

    invoke-virtual/range {v8 .. v13}, Lcom/rfid/trans/BaseReader;->Inventory_GB(BBBLjava/util/List;[I)I

    goto :goto_4

    .line 1001
    :cond_d
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->IvtType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_e

    .line 1003
    iget-object v8, v6, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v9, v0, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    const/4 v10, 0x0

    const/16 v12, 0xa

    const/4 v13, 0x0

    const/16 v11, -0x80

    move-object/from16 v14, v25

    invoke-virtual/range {v8 .. v14}, Lcom/rfid/trans/BaseReader;->Inventory_GJB(BBBBLjava/util/List;[I)I

    goto :goto_4

    .line 1005
    :cond_e
    iget-object v0, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->IvtType:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_10

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, -0x1

    new-array v13, v3, [B

    .line 1010
    fill-array-data v13, :array_0

    const/16 v0, 0x100

    new-array v0, v0, [B

    aput v7, v25, v7

    .line 1014
    iget-object v8, v6, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, v6, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v9, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move-object v14, v0

    move-object/from16 v15, v25

    invoke-virtual/range {v8 .. v15}, Lcom/rfid/trans/BaseReader;->InventoryMutiple_6B(BBBB[B[B[I)I

    .line 1015
    aget v2, v25, v7

    if-lez v2, :cond_10

    const/4 v2, 0x0

    .line 1017
    :goto_3
    aget v5, v25, v7

    if-ge v2, v5, :cond_f

    .line 1019
    iget-object v5, v6, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    mul-int/lit8 v8, v2, 0xa

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v5, v0, v9, v3}, Lcom/rfid/trans/BaseReader;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v8, v8, 0x9

    .line 1020
    aget-byte v8, v0, v8

    .line 1021
    new-instance v9, Lcom/rfid/trans/ReadTag;

    invoke-direct {v9}, Lcom/rfid/trans/ReadTag;-><init>()V

    .line 1022
    iput-object v5, v9, Lcom/rfid/trans/ReadTag;->epcId:Ljava/lang/String;

    const-string v5, ""

    .line 1023
    iput-object v5, v9, Lcom/rfid/trans/ReadTag;->memId:Ljava/lang/String;

    and-int/lit16 v5, v8, 0xff

    .line 1024
    iput v5, v9, Lcom/rfid/trans/ReadTag;->rssi:I

    .line 1025
    iput v7, v9, Lcom/rfid/trans/ReadTag;->phase:I

    .line 1026
    iput v1, v9, Lcom/rfid/trans/ReadTag;->antId:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1028
    :cond_f
    sput-boolean v1, Lcom/rfid/trans/ReaderHelp;->isSound:Z

    .line 1031
    :cond_10
    :goto_4
    sput-boolean v7, Lcom/rfid/trans/ReaderHelp;->isSound:Z

    .line 1032
    aget v0, v25, v7

    if-lez v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/rfid/trans/ReaderHelp;->playSound()V

    :cond_11
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public SetAddress(B)I
    .locals 2

    .line 1076
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v0, v1, p1}, Lcom/rfid/trans/BaseReader;->SetAddress(BB)I

    move-result v0

    if-nez v0, :cond_0

    .line 1079
    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iput-byte p1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    :cond_0
    return v0
.end method

.method public SetBaudRate(I)I
    .locals 4

    const/16 v0, 0x2580

    const/4 v1, 0x5

    if-eq p1, v0, :cond_3

    const/16 v0, 0x4b00

    if-eq p1, v0, :cond_2

    const v0, 0x9600

    if-eq p1, v0, :cond_1

    const v0, 0xe100

    if-eq p1, v0, :cond_4

    const v0, 0x1c200

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 1109
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v0, v2, v1}, Lcom/rfid/trans/BaseReader;->SetBaudRate(BB)I

    move-result v0

    if-nez v0, :cond_5

    .line 1112
    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v1}, Lcom/rfid/trans/BaseReader;->DisConnect()I

    .line 1113
    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, p0, Lcom/rfid/trans/ReaderHelp;->devName:Ljava/lang/String;

    iget v3, p0, Lcom/rfid/trans/ReaderHelp;->logswitch:I

    invoke-virtual {v1, v2, p1, v3}, Lcom/rfid/trans/BaseReader;->Connect(Ljava/lang/String;II)I

    :cond_5
    return v0
.end method

.method public SetCallBack(Lcom/rfid/trans/TagCallback;)V
    .locals 1

    .line 378
    iput-object p1, p0, Lcom/rfid/trans/ReaderHelp;->callback:Lcom/rfid/trans/TagCallback;

    .line 379
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v0, p1}, Lcom/rfid/trans/BaseReader;->SetCallBack(Lcom/rfid/trans/TagCallback;)V

    return-void
.end method

.method public SetCfgParameter(BB[BI)I
    .locals 6

    .line 2122
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/rfid/trans/BaseReader;->SetCfgParameter(BBB[BI)I

    move-result p1

    return p1
.end method

.method public SetCheckAnt(B)I
    .locals 2

    .line 2281
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v0, v1, p1}, Lcom/rfid/trans/BaseReader;->SetCheckAnt(BB)I

    move-result p1

    return p1
.end method

.method public SetCustomRegion(BIIII)I
    .locals 7

    .line 2137
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/rfid/trans/BaseReader;->SetCustomRegion(BBIIII)I

    move-result p1

    return p1
.end method

.method public SetDRM(B)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 1482
    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {p1, v1, v0}, Lcom/rfid/trans/BaseReader;->ConfigDRM(B[B)I

    move-result p1

    return p1
.end method

.method public SetGPIO(B)I
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v0, v1, p1}, Lcom/rfid/trans/BaseReader;->SetGPIO(BB)I

    move-result p1

    return p1
.end method

.method public SetInventoryPatameter(Lcom/rfid/trans/ReaderParameter;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    return-void
.end method

.method public SetLogSwitch(I)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v0, p1}, Lcom/rfid/trans/BaseReader;->SetLogSwitch(I)V

    return-void
.end method

.method public SetMessageBack(Lcom/rfid/trans/RFIDLogCallBack;)V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v0, p1}, Lcom/rfid/trans/BaseReader;->SetMsgCallBack(Lcom/rfid/trans/RFIDLogCallBack;)V

    return-void
.end method

.method public SetProfile(B)I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 339
    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {p1, v2, v0}, Lcom/rfid/trans/BaseReader;->SetProfile(B[B)I

    move-result p1

    if-nez p1, :cond_0

    .line 342
    aget-byte v2, v0, v1

    iput v2, p0, Lcom/rfid/trans/ReaderHelp;->RF_Ctrl:I

    .line 343
    aget-byte v0, v0, v1

    iput v0, p0, Lcom/rfid/trans/ReaderHelp;->Cur_Ctrl:I

    :cond_0
    return p1
.end method

.method public SetProtocol([B)I
    .locals 2

    .line 2151
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v0, v1, p1}, Lcom/rfid/trans/BaseReader;->SetProtocol(B[B)I

    move-result p1

    return p1
.end method

.method public SetRegion(BBB)I
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/rfid/trans/BaseReader;->SetRegion(BIII)I

    move-result p1

    return p1
.end method

.method public SetRegion(IIII)I
    .locals 6

    .line 253
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/rfid/trans/BaseReader;->SetRegion(BIIII)I

    move-result p1

    return p1
.end method

.method public SetRetryTimes(B)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 303
    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {p1, v1, v0}, Lcom/rfid/trans/BaseReader;->RetryTimes(B[B)I

    move-result p1

    return p1
.end method

.method public SetRfPower(B)I
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v0, v1, p1}, Lcom/rfid/trans/BaseReader;->SetRfPower(BB)I

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iput p1, p0, Lcom/rfid/trans/ReaderHelp;->Cfg_Power:I

    :cond_0
    return v0
.end method

.method public SetSoundID(ILandroid/media/SoundPool;)V
    .locals 0

    .line 317
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/rfid/trans/ReaderHelp;->soundid:Ljava/lang/Integer;

    .line 318
    iput-object p2, p0, Lcom/rfid/trans/ReaderHelp;->soundPool:Landroid/media/SoundPool;

    return-void
.end method

.method public SetWritePower(B)I
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v0, v1, p1}, Lcom/rfid/trans/BaseReader;->SetWritePower(BB)I

    move-result p1

    return p1
.end method

.method public StartInventoryLed(ILjava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/rfid/trans/MaskClass;",
            ">;)I"
        }
    .end annotation

    .line 2158
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_4

    .line 2160
    iput p1, p0, Lcom/rfid/trans/ReaderHelp;->readledType:I

    .line 2161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rfid/trans/ReaderHelp;->ledMaskList:Ljava/util/List;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 2162
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 2185
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 2187
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rfid/trans/MaskClass;

    .line 2188
    iget-object v3, p0, Lcom/rfid/trans/ReaderHelp;->ledMaskList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2164
    :cond_1
    :goto_1
    new-instance p2, Lcom/rfid/trans/MaskClass;

    invoke-direct {p2}, Lcom/rfid/trans/MaskClass;-><init>()V

    const/4 v2, 0x2

    .line 2165
    iput-byte v2, p2, Lcom/rfid/trans/MaskClass;->MaskMem:B

    const/16 v3, 0x18

    .line 2166
    iput-byte v3, p2, Lcom/rfid/trans/MaskClass;->MaskLen:B

    .line 2167
    iget-object v3, p2, Lcom/rfid/trans/MaskClass;->MaskAdr:[B

    aput-byte v1, v3, v1

    .line 2168
    iget-object v3, p2, Lcom/rfid/trans/MaskClass;->MaskAdr:[B

    aput-byte v1, v3, v0

    const/16 v3, -0x1e

    if-nez p1, :cond_2

    .line 2171
    iget-object p1, p2, Lcom/rfid/trans/MaskClass;->MaskData:[B

    aput-byte v3, p1, v1

    .line 2172
    iget-object p1, p2, Lcom/rfid/trans/MaskClass;->MaskData:[B

    const/16 v3, -0x7f

    aput-byte v3, p1, v0

    .line 2173
    iget-object p1, p2, Lcom/rfid/trans/MaskClass;->MaskData:[B

    const/16 v3, -0x30

    aput-byte v3, p1, v2

    goto :goto_2

    .line 2177
    :cond_2
    iget-object p1, p2, Lcom/rfid/trans/MaskClass;->MaskData:[B

    aput-byte v3, p1, v1

    .line 2178
    iget-object p1, p2, Lcom/rfid/trans/MaskClass;->MaskData:[B

    aput-byte v0, p1, v0

    .line 2179
    iget-object p1, p2, Lcom/rfid/trans/MaskClass;->MaskData:[B

    aput-byte v3, p1, v2

    .line 2181
    :goto_2
    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->ledMaskList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2192
    :cond_3
    iput-boolean v0, p0, Lcom/rfid/trans/ReaderHelp;->mWorking:Z

    .line 2193
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/rfid/trans/ReaderHelp$3;

    invoke-direct {p2, p0}, Lcom/rfid/trans/ReaderHelp$3;-><init>(Lcom/rfid/trans/ReaderHelp;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/rfid/trans/ReaderHelp;->mThread:Ljava/lang/Thread;

    .line 2206
    iget-object p1, p0, Lcom/rfid/trans/ReaderHelp;->mThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return v1

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method public StartRead()I
    .locals 23

    move-object/from16 v0, p0

    .line 406
    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->mThread:Ljava/lang/Thread;

    if-nez v1, :cond_f

    .line 408
    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v1, v1, Lcom/rfid/trans/ReaderParameter;->Session:I

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/rfid/trans/ReaderHelp;->CurSession:B

    const/4 v1, 0x0

    .line 409
    iput-boolean v1, v0, Lcom/rfid/trans/ReaderHelp;->PermitControl:Z

    .line 410
    iget v2, v0, Lcom/rfid/trans/ReaderHelp;->ModuleType:I

    const/16 v3, 0xfc

    const/16 v4, 0xfb

    const/16 v5, 0xfd

    const/4 v6, 0x2

    const/16 v7, 0xfe

    const/4 v8, 0x1

    if-ne v2, v6, :cond_4

    .line 412
    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v2, v2, Lcom/rfid/trans/ReaderParameter;->Session:I

    if-eq v2, v7, :cond_1

    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v2, v2, Lcom/rfid/trans/ReaderParameter;->Session:I

    if-eq v2, v5, :cond_1

    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v2, v2, Lcom/rfid/trans/ReaderParameter;->Session:I

    if-eq v2, v3, :cond_1

    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v2, v2, Lcom/rfid/trans/ReaderParameter;->Session:I

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 431
    :cond_0
    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v2, v2, Lcom/rfid/trans/ReaderParameter;->Session:I

    iput v2, v0, Lcom/rfid/trans/ReaderHelp;->Session:I

    int-to-byte v9, v2

    .line 432
    iput-byte v9, v0, Lcom/rfid/trans/ReaderHelp;->CurSession:B

    if-ne v2, v8, :cond_5

    .line 435
    iput-boolean v8, v0, Lcom/rfid/trans/ReaderHelp;->PermitControl:Z

    goto :goto_2

    .line 414
    :cond_1
    :goto_0
    iget v2, v0, Lcom/rfid/trans/ReaderHelp;->Session:I

    if-ne v2, v7, :cond_2

    .line 415
    iput v5, v0, Lcom/rfid/trans/ReaderHelp;->Session:I

    .line 416
    iput-byte v6, v0, Lcom/rfid/trans/ReaderHelp;->CurSession:B

    goto :goto_1

    .line 418
    :cond_2
    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v2, v2, Lcom/rfid/trans/ReaderParameter;->Session:I

    if-ne v2, v4, :cond_3

    .line 420
    iput v8, v0, Lcom/rfid/trans/ReaderHelp;->Session:I

    .line 421
    iput-byte v8, v0, Lcom/rfid/trans/ReaderHelp;->CurSession:B

    goto :goto_1

    .line 424
    :cond_3
    iput v7, v0, Lcom/rfid/trans/ReaderHelp;->Session:I

    const/4 v2, 0x3

    .line 425
    iput-byte v2, v0, Lcom/rfid/trans/ReaderHelp;->CurSession:B

    .line 427
    :goto_1
    iput-boolean v8, v0, Lcom/rfid/trans/ReaderHelp;->PermitControl:Z

    goto :goto_2

    .line 441
    :cond_4
    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v2, v2, Lcom/rfid/trans/ReaderParameter;->Session:I

    iput v2, v0, Lcom/rfid/trans/ReaderHelp;->Session:I

    int-to-byte v2, v2

    .line 442
    iput-byte v2, v0, Lcom/rfid/trans/ReaderHelp;->CurSession:B

    .line 445
    :cond_5
    :goto_2
    iget-byte v2, v0, Lcom/rfid/trans/ReaderHelp;->CurSession:B

    if-lez v2, :cond_6

    .line 446
    iget-object v9, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v10, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    const/16 v11, -0x80

    iget-byte v12, v0, Lcom/rfid/trans/ReaderHelp;->CurSession:B

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/rfid/trans/BaseReader;->SelectCMDByTime(BBBBBB)I

    .line 447
    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v9, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v9, v9, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    const/16 v18, -0x80

    iget-byte v10, v0, Lcom/rfid/trans/ReaderHelp;->CurSession:B

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v2

    move/from16 v17, v9

    move/from16 v19, v10

    invoke-virtual/range {v16 .. v22}, Lcom/rfid/trans/BaseReader;->SelectCMDByTime(BBBBBB)I

    .line 448
    iget-object v11, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v12, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    const/16 v13, -0x80

    iget-byte v14, v0, Lcom/rfid/trans/ReaderHelp;->CurSession:B

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v11 .. v17}, Lcom/rfid/trans/BaseReader;->SelectCMDByTime(BBBBBB)I

    .line 450
    :cond_6
    iget v2, v0, Lcom/rfid/trans/ReaderHelp;->ModuleType:I

    if-ne v2, v6, :cond_e

    .line 452
    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v2, v2, Lcom/rfid/trans/ReaderParameter;->Session:I

    if-eq v2, v3, :cond_8

    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v2, v2, Lcom/rfid/trans/ReaderParameter;->Session:I

    if-ne v2, v7, :cond_7

    goto :goto_3

    .line 458
    :cond_7
    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v6, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v6, v6, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v2, v6, v1}, Lcom/rfid/trans/BaseReader;->SetRegionTable(BB)I

    goto :goto_4

    .line 454
    :cond_8
    :goto_3
    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v6, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v6, v6, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v2, v6, v8}, Lcom/rfid/trans/BaseReader;->SetRegionTable(BB)I

    :goto_4
    new-array v2, v8, [B

    .line 461
    iget-boolean v6, v0, Lcom/rfid/trans/ReaderHelp;->PermitControl:Z

    if-eqz v6, :cond_d

    .line 463
    iget-object v6, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v6, v6, Lcom/rfid/trans/ReaderParameter;->Session:I

    if-ne v6, v7, :cond_9

    const/16 v3, -0x3b

    aput-byte v3, v2, v1

    goto :goto_5

    .line 467
    :cond_9
    iget-object v6, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v6, v6, Lcom/rfid/trans/ReaderParameter;->Session:I

    if-ne v6, v5, :cond_a

    const/16 v3, -0x3f

    aput-byte v3, v2, v1

    goto :goto_5

    .line 471
    :cond_a
    iget-object v5, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v5, v5, Lcom/rfid/trans/ReaderParameter;->Session:I

    if-eq v5, v4, :cond_b

    iget-object v4, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget v4, v4, Lcom/rfid/trans/ReaderParameter;->Session:I

    if-ne v4, v3, :cond_c

    :cond_b
    const/16 v3, -0xd

    aput-byte v3, v2, v1

    .line 475
    :cond_c
    :goto_5
    iput-boolean v8, v0, Lcom/rfid/trans/ReaderHelp;->firstTime:Z

    goto :goto_6

    .line 479
    :cond_d
    iget v3, v0, Lcom/rfid/trans/ReaderHelp;->RF_Ctrl:I

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 481
    :goto_6
    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v4, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v4, v4, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v3, v4, v2}, Lcom/rfid/trans/BaseReader;->OperateControl(B[B)I

    move-result v3

    if-nez v3, :cond_e

    .line 482
    aget-byte v2, v2, v1

    iput v2, v0, Lcom/rfid/trans/ReaderHelp;->Cur_Ctrl:I

    .line 491
    :cond_e
    iput v1, v0, Lcom/rfid/trans/ReaderHelp;->maskIndex:I

    .line 492
    iput-boolean v8, v0, Lcom/rfid/trans/ReaderHelp;->mWorking:Z

    .line 493
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/rfid/trans/ReaderHelp$2;

    invoke-direct {v3, v0}, Lcom/rfid/trans/ReaderHelp$2;-><init>(Lcom/rfid/trans/ReaderHelp;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, v0, Lcom/rfid/trans/ReaderHelp;->mThread:Ljava/lang/Thread;

    .line 622
    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return v1

    :cond_f
    const/4 v1, -0x1

    return v1
.end method

.method public StopInventoryLed()V
    .locals 2

    .line 2273
    iget v0, p0, Lcom/rfid/trans/ReaderHelp;->ModuleType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2274
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v0, v1}, Lcom/rfid/trans/BaseReader;->StopInventory(B)V

    :cond_0
    const/4 v0, 0x0

    .line 2275
    iput-boolean v0, p0, Lcom/rfid/trans/ReaderHelp;->mWorking:Z

    .line 2276
    sput-boolean v0, Lcom/rfid/trans/ReaderHelp;->isSound:Z

    return-void
.end method

.method public StopRead()V
    .locals 2

    .line 903
    iget v0, p0, Lcom/rfid/trans/ReaderHelp;->ModuleType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 904
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    invoke-virtual {v0, v1}, Lcom/rfid/trans/BaseReader;->StopInventory(B)V

    :cond_0
    const/4 v0, 0x0

    .line 905
    iput-boolean v0, p0, Lcom/rfid/trans/ReaderHelp;->mWorking:Z

    .line 906
    sput-boolean v0, Lcom/rfid/trans/ReaderHelp;->isSound:Z

    return-void
.end method

.method public WriteDataByTID(Ljava/lang/String;BB[BLjava/lang/String;)I
    .locals 25

    move-object/from16 v0, p0

    .line 1205
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xff

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 1206
    :cond_0
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v1, -0x1

    .line 1208
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    const/16 v3, 0xc

    new-array v15, v3, [B

    .line 1210
    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    move-object/from16 v4, p5

    invoke-virtual {v3, v4}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v17

    .line 1211
    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/16 v18, 0x2

    const/4 v5, 0x2

    new-array v14, v5, [B

    .line 1214
    fill-array-data v14, :array_0

    .line 1216
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    int-to-byte v13, v5

    .line 1217
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    new-array v12, v4, [B

    .line 1218
    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v12, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    new-array v11, v3, [B

    const/16 v3, 0x30

    const/4 v10, 0x0

    :goto_0
    const/16 v4, 0xa

    if-ge v10, v4, :cond_3

    .line 1224
    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v4, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v4, v4, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move v5, v2

    move v6, v1

    move-object v7, v15

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v19, v10

    move-object/from16 v10, v17

    move-object/from16 v20, v11

    move-object/from16 v11, p4

    move-object/from16 v21, v12

    move/from16 v12, v18

    move/from16 v22, v13

    move-object v13, v14

    move-object/from16 v23, v14

    move/from16 v14, v22

    move-object/from16 v24, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v20

    invoke-virtual/range {v3 .. v16}, Lcom/rfid/trans/BaseReader;->WriteData_G2(BBB[BBB[B[BB[BB[B[B)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v10, v19, 0x1

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    move/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v15, v24

    goto :goto_0

    :cond_3
    :goto_1
    return v3

    :cond_4
    :goto_2
    return v2

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public WriteData_6B(B[BB[B)I
    .locals 6

    .line 2095
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v1, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/rfid/trans/BaseReader;->WriteData_6B(BB[BB[B)I

    move-result p1

    return p1
.end method

.method public WriteData_G2(BB[BBI[B[B[B)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v15, p3

    move-object/from16 v14, p6

    move-object/from16 v13, p7

    move-object/from16 v12, p8

    move/from16 v11, p2

    and-int/lit16 v1, v11, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xf

    if-le v1, v3, :cond_0

    if-ge v1, v2, :cond_0

    return v2

    :cond_0
    if-eq v1, v2, :cond_1

    if-nez v15, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x10

    if-ge v1, v3, :cond_2

    .line 1189
    array-length v3, v15

    mul-int/lit8 v1, v1, 0x2

    if-ge v3, v1, :cond_2

    return v2

    :cond_2
    :goto_0
    if-eqz v14, :cond_8

    .line 1190
    array-length v1, v14

    move/from16 v10, p1

    and-int/lit16 v3, v10, 0xff

    mul-int/lit8 v3, v3, 0x2

    if-eq v1, v3, :cond_3

    goto/16 :goto_3

    :cond_3
    if-eqz v13, :cond_8

    .line 1191
    array-length v1, v13

    const/4 v3, 0x4

    if-ge v1, v3, :cond_4

    goto/16 :goto_3

    :cond_4
    if-eqz v12, :cond_8

    .line 1192
    array-length v1, v12

    const/4 v3, 0x1

    if-ge v1, v3, :cond_5

    goto :goto_3

    :cond_5
    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_1
    const/16 v2, 0xa

    if-ge v9, v2, :cond_7

    .line 1196
    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v2, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v2, v2, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move/from16 v8, p5

    int-to-byte v7, v8

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v6, v3, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v5, v3, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v4, v3, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v3, v3, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    move-object/from16 v16, v3

    move/from16 v3, p1

    move/from16 v17, v4

    move/from16 v4, p2

    move-object/from16 v18, v5

    move-object/from16 v5, p3

    move/from16 v19, v6

    move/from16 v6, p4

    move-object/from16 v8, p6

    move/from16 v20, v9

    move-object/from16 v9, p7

    move/from16 v10, v19

    move-object/from16 v11, v18

    move/from16 v12, v17

    move-object/from16 v13, v16

    move-object/from16 v14, p8

    invoke-virtual/range {v1 .. v14}, Lcom/rfid/trans/BaseReader;->WriteData_G2(BBB[BBB[B[BB[BB[B[B)I

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v9, v20, 0x1

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v14, p6

    move-object/from16 v13, p7

    move-object/from16 v12, p8

    goto :goto_1

    :cond_7
    :goto_2
    return v1

    :cond_8
    :goto_3
    return v2
.end method

.method public WriteData_G2(Ljava/lang/String;Ljava/lang/String;BILjava/lang/String;)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    const/16 v4, 0xff

    if-eqz v3, :cond_6

    .line 1403
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    goto/16 :goto_3

    .line 1404
    :cond_0
    iget-object v5, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v5, v3}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 1405
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1407
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_1

    return v4

    .line 1413
    :cond_1
    iget-object v6, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v6, v2}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1414
    array-length v6, v2

    div-int/lit8 v6, v6, 0x2

    int-to-byte v6, v6

    move/from16 v20, v6

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/16 v20, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 1417
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 1419
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_3

    return v4

    .line 1425
    :cond_3
    iget-object v4, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v4, v1}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [B

    .line 1433
    array-length v6, v1

    div-int/lit8 v6, v6, 0x2

    int-to-byte v15, v6

    const/16 v6, 0x30

    :goto_1
    const/16 v7, 0xa

    if-ge v5, v7, :cond_5

    .line 1437
    iget-object v6, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v7, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v7, v7, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move/from16 v14, p4

    int-to-byte v12, v14

    iget-object v8, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v13, v8, Lcom/rfid/trans/ReaderParameter;->MaskMem:B

    iget-object v8, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v11, v8, Lcom/rfid/trans/ReaderParameter;->MaskAdr:[B

    iget-object v8, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v10, v8, Lcom/rfid/trans/ReaderParameter;->MaskLen:B

    iget-object v8, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-object v9, v8, Lcom/rfid/trans/ReaderParameter;->MaskData:[B

    move v8, v15

    move-object/from16 v18, v9

    move/from16 v9, v20

    move/from16 v17, v10

    move-object v10, v2

    move-object/from16 v16, v11

    move/from16 v11, p3

    move/from16 v19, v13

    move-object v13, v1

    move-object v14, v3

    move/from16 v21, v15

    move/from16 v15, v19

    move-object/from16 v19, v4

    invoke-virtual/range {v6 .. v19}, Lcom/rfid/trans/BaseReader;->WriteData_G2(BBB[BBB[B[BB[BB[B[B)I

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v21

    goto :goto_1

    :cond_5
    :goto_2
    return v6

    :cond_6
    :goto_3
    return v4
.end method

.method public WriteData_GB(Ljava/lang/String;BILjava/lang/String;Ljava/lang/String;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const/16 v5, 0xff

    if-eqz v3, :cond_5

    .line 1851
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    goto :goto_1

    .line 1852
    :cond_0
    iget-object v6, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v6, v3}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v15

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    .line 1855
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 1857
    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v3, v1}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1858
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    move v10, v1

    move-object v11, v3

    goto :goto_0

    :cond_1
    move-object v11, v3

    const/4 v10, 0x0

    :goto_0
    if-nez v4, :cond_2

    return v5

    .line 1861
    :cond_2
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    return v5

    .line 1862
    :cond_3
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    return v5

    .line 1864
    :cond_4
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    int-to-byte v9, v1

    .line 1865
    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v1, v4}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v1, 0x1

    new-array v3, v1, [B

    const/4 v4, 0x2

    new-array v13, v4, [B

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v13, v6

    and-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v13, v1

    .line 1870
    iget-object v7, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v8, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move/from16 v12, p2

    move-object/from16 v16, v3

    invoke-virtual/range {v7 .. v16}, Lcom/rfid/trans/BaseReader;->WriteData_GB(BBB[BB[B[B[B[B)I

    move-result v1

    return v1

    :cond_5
    :goto_1
    return v5
.end method

.method public WriteData_GJB(Ljava/lang/String;BILjava/lang/String;Ljava/lang/String;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const/16 v5, 0xff

    if-eqz v3, :cond_5

    .line 1963
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    goto :goto_1

    .line 1964
    :cond_0
    iget-object v6, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v6, v3}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v15

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    .line 1967
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 1969
    iget-object v3, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v3, v1}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1970
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    move v10, v1

    move-object v11, v3

    goto :goto_0

    :cond_1
    move-object v11, v3

    const/4 v10, 0x0

    :goto_0
    if-nez v4, :cond_2

    return v5

    .line 1973
    :cond_2
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    return v5

    .line 1974
    :cond_3
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    return v5

    .line 1976
    :cond_4
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    int-to-byte v9, v1

    .line 1977
    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v1, v4}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v1, 0x1

    new-array v3, v1, [B

    const/4 v4, 0x2

    new-array v13, v4, [B

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v13, v6

    and-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v13, v1

    .line 1982
    iget-object v7, v0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v1, v0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v8, v1, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move/from16 v12, p2

    move-object/from16 v16, v3

    invoke-virtual/range {v7 .. v16}, Lcom/rfid/trans/BaseReader;->WriteData_GJB(BBB[BB[B[B[B[B)I

    move-result v1

    return v1

    :cond_5
    :goto_1
    return v5
.end method

.method public WriteEPC_G2(B[B[B[B)I
    .locals 9

    and-int/lit16 v0, p1, 0xff

    const/16 v1, 0xff

    const/16 v2, 0x1f

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_6

    .line 1236
    array-length v2, p2

    mul-int/lit8 v0, v0, 0x2

    if-eq v2, v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_6

    .line 1237
    array-length v0, p3

    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p4, :cond_6

    .line 1238
    array-length v0, p4

    const/4 v2, 0x1

    if-ge v0, v2, :cond_3

    goto :goto_2

    :cond_3
    const/16 v0, 0x30

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_5

    .line 1242
    iget-object v3, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v4, v0, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move v5, p1

    move-object v6, p3

    move-object v7, p2

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/rfid/trans/BaseReader;->WriteEPC_G2(BB[B[B[B)I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public WriteEPC_G2(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    const/16 v0, 0xff

    if-eqz p2, :cond_4

    .line 1449
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 1450
    :cond_0
    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v1, p2}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p2

    if-eqz p1, :cond_4

    .line 1451
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 1453
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    return v0

    .line 1459
    :cond_1
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    invoke-virtual {v0, p1}, Lcom/rfid/trans/BaseReader;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1460
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v8, v3, :cond_3

    .line 1471
    iget-object v2, p0, Lcom/rfid/trans/ReaderHelp;->reader:Lcom/rfid/trans/BaseReader;

    iget-object v3, p0, Lcom/rfid/trans/ReaderHelp;->param:Lcom/rfid/trans/ReaderParameter;

    iget-byte v3, v3, Lcom/rfid/trans/ReaderParameter;->ComAddr:B

    move v4, v0

    move-object v5, p2

    move-object v6, p1

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/rfid/trans/BaseReader;->WriteEPC_G2(BB[B[B[B)I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2

    :cond_4
    :goto_2
    return v0
.end method

.method public isConnect()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/rfid/trans/ReaderHelp;->isOpen:Z

    return v0
.end method

.method public playSound()V
    .locals 8

    .line 362
    iget-object v0, p0, Lcom/rfid/trans/ReaderHelp;->soundid:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/rfid/trans/ReaderHelp;->soundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 371
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
