.class public Lcom/UHF/scanlable/ScanView;
.super Landroid/app/Activity;
.source "ScanView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SacnView"


# instance fields
.field Getparam:Landroid/widget/Button;

.field private ModuleType:I

.field private ReaderCode:I

.field private ReaderType:I

.field Setparam:Landroid/widget/Button;

.field private addr:B

.field private bRead:Landroid/widget/Button;

.field private bSetting:Landroid/widget/Button;

.field btActive:Landroid/widget/Button;

.field btAnswer:Landroid/widget/Button;

.field btCloserf:Landroid/widget/Button;

.field btGetAntCheck:Landroid/widget/Button;

.field btGetFocus:Landroid/widget/Button;

.field btOpenrf:Landroid/widget/Button;

.field btReadLoss:Landroid/widget/Button;

.field btReadTemp:Landroid/widget/Button;

.field btSetAntCheck:Landroid/widget/Button;

.field btSetBaud:Landroid/widget/Button;

.field btSetFocus:Landroid/widget/Button;

.field btSetPro:Landroid/widget/Button;

.field private curband:I

.field private dwelltime:[Ljava/lang/String;

.field private getRange:Landroid/widget/Button;

.field jgTime:Landroid/widget/Spinner;

.field private lineantcheck:Landroid/widget/LinearLayout;

.field private linefocus:Landroid/widget/LinearLayout;

.field private lineloss:Landroid/widget/LinearLayout;

.field private lineprofile:Landroid/widget/LinearLayout;

.field private linerange:Landroid/widget/LinearLayout;

.field private measure_loss:Landroid/widget/Button;

.field private paramRead:Landroid/widget/Button;

.field private paramSet:Landroid/widget/Button;

.field private setRange:Landroid/widget/Button;

.field private soundid:I

.field spAntCheck:Landroid/widget/Spinner;

.field spBand:Landroid/widget/Spinner;

.field spDwell:Landroid/widget/Spinner;

.field private spMem:Landroid/widget/Spinner;

.field spProfilr:Landroid/widget/Spinner;

.field spRange:Landroid/widget/Spinner;

.field spTagfocus:Landroid/widget/Spinner;

.field private spType:Landroid/widget/Spinner;

.field private spada_Band:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spada_baudrate:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spada_dwell:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spada_jgTime:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spada_lowPwr:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spada_maxFrm:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spada_minFrm:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spada_profile:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spada_qvalue:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spada_range:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spada_session:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spada_tagfocus:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spada_tidaddr:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spada_tidlen:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spada_time:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field spbaudRate:Landroid/widget/Spinner;

.field spmaxFrm:Landroid/widget/Spinner;

.field spminFrm:Landroid/widget/Spinner;

.field spqvalue:Landroid/widget/Spinner;

.field spsession:Landroid/widget/Spinner;

.field sptidaddr:Landroid/widget/Spinner;

.field sptidlen:Landroid/widget/Spinner;

.field sptime:Landroid/widget/Spinner;

.field private strBand:[Ljava/lang/String;

.field private strBaudRate:[Ljava/lang/String;

.field private strProfile:[Ljava/lang/String;

.field private strRange:[Ljava/lang/String;

.field private strjtTime:[Ljava/lang/String;

.field private strmaxFrm:[Ljava/lang/String;

.field private strminFrm:[Ljava/lang/String;

.field private strtime:[Ljava/lang/String;

.field private tty_speed:I

.field private tvLoss:Landroid/widget/TextView;

.field private tvResult:Landroid/widget/TextView;

.field tvRun:Landroid/widget/EditText;

.field private tvTemp:Landroid/widget/TextView;

.field private tvVersion:Landroid/widget/TextView;

.field private tvpowerdBm:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const v0, 0xe100

    .line 44
    iput v0, p0, Lcom/UHF/scanlable/ScanView;->tty_speed:I

    const/4 v0, -0x1

    .line 45
    iput-byte v0, p0, Lcom/UHF/scanlable/ScanView;->addr:B

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/UHF/scanlable/ScanView;->strBand:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/UHF/scanlable/ScanView;->strmaxFrm:[Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/UHF/scanlable/ScanView;->strminFrm:[Ljava/lang/String;

    const/16 v1, 0x100

    new-array v1, v1, [Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/UHF/scanlable/ScanView;->strtime:[Ljava/lang/String;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/UHF/scanlable/ScanView;->strjtTime:[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/UHF/scanlable/ScanView;->strBaudRate:[Ljava/lang/String;

    const/16 v1, 0xfe

    new-array v1, v1, [Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/UHF/scanlable/ScanView;->dwelltime:[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/UHF/scanlable/ScanView;->strProfile:[Ljava/lang/String;

    const/16 v1, 0x65

    new-array v1, v1, [Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/UHF/scanlable/ScanView;->strRange:[Ljava/lang/String;

    .line 109
    iput v0, p0, Lcom/UHF/scanlable/ScanView;->ReaderType:I

    .line 110
    iput v0, p0, Lcom/UHF/scanlable/ScanView;->ModuleType:I

    const/4 v0, 0x0

    .line 511
    iput v0, p0, Lcom/UHF/scanlable/ScanView;->ReaderCode:I

    .line 512
    iput v0, p0, Lcom/UHF/scanlable/ScanView;->curband:I

    return-void
.end method

.method private ReadCheckAnt()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 590
    sget-object v2, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v2, v1}, Lcom/rfid/trans/ReaderHelp;->GetCheckAnt([B)I

    move-result v2

    if-nez v2, :cond_0

    .line 593
    iget-object v2, p0, Lcom/UHF/scanlable/ScanView;->spAntCheck:Landroid/widget/Spinner;

    const/4 v3, 0x0

    aget-byte v1, v1, v3

    invoke-virtual {v2, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    const v0, 0x7f0d007e

    .line 594
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0d007d

    .line 598
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method

.method private ReadFocus()V
    .locals 5

    const/16 v0, 0xfa

    new-array v0, v0, [B

    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 575
    sget-object v3, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    const/16 v4, 0x8

    invoke-virtual {v3, v4, v0, v2}, Lcom/rfid/trans/ReaderHelp;->GetCfgParameter(B[B[I)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 576
    aget v2, v2, v3

    if-ne v2, v1, :cond_0

    .line 578
    iget-object v2, p0, Lcom/UHF/scanlable/ScanView;->spTagfocus:Landroid/widget/Spinner;

    aget-byte v0, v0, v3

    invoke-virtual {v2, v0, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    const v0, 0x7f0d007e

    .line 579
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0d007d

    .line 583
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method

.method private ReadInformation()V
    .locals 14

    const/4 v0, 0x2

    new-array v7, v0, [B

    const/4 v8, 0x1

    new-array v9, v8, [B

    new-array v10, v8, [B

    new-array v11, v8, [B

    new-array v12, v8, [B

    .line 520
    sget-object v1, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    move-object v2, v7

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Lcom/rfid/trans/ReaderHelp;->GetReaderInformation([B[B[B[B[B)I

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x0

    .line 523
    aget-byte v2, v7, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 524
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "0"

    if-ne v3, v8, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 525
    :cond_0
    aget-byte v3, v7, v8

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 526
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v8, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 527
    :cond_1
    sget-object v4, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v4}, Lcom/rfid/trans/ReaderHelp;->GetReaderType()I

    move-result v4

    iput v4, p0, Lcom/UHF/scanlable/ScanView;->ReaderCode:I

    const/16 v5, 0x70

    const-string v6, ")"

    const-string v7, " ("

    const-string v13, "."

    if-eq v4, v5, :cond_3

    const/16 v5, 0x71

    if-eq v4, v5, :cond_3

    const/16 v5, 0x31

    if-ne v4, v5, :cond_2

    goto :goto_0

    .line 542
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/UHF/scanlable/ScanView;->ReaderCode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    :goto_0
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 531
    sget-object v5, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v5, v4}, Lcom/rfid/trans/ReaderHelp;->GetModuleDescribe([B)I

    .line 533
    aget-byte v5, v4, v1

    if-nez v5, :cond_4

    const-string v0, "S"

    goto :goto_1

    .line 535
    :cond_4
    aget-byte v5, v4, v1

    if-ne v5, v8, :cond_5

    const-string v0, "Plus"

    goto :goto_1

    .line 537
    :cond_5
    aget-byte v4, v4, v1

    if-ne v4, v0, :cond_6

    const-string v0, "Pro"

    goto :goto_1

    :cond_6
    const-string v0, ""

    .line 539
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/UHF/scanlable/ScanView;->ReaderCode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 543
    :goto_2
    iget-object v2, p0, Lcom/UHF/scanlable/ScanView;->tvVersion:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->tvpowerdBm:Landroid/widget/Spinner;

    aget-byte v2, v9, v1

    invoke-virtual {v0, v2, v8}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 545
    aget-byte v0, v10, v1

    iput v0, p0, Lcom/UHF/scanlable/ScanView;->curband:I

    .line 546
    aget-byte v0, v10, v1

    invoke-direct {p0, v0}, Lcom/UHF/scanlable/ScanView;->SetFre(I)V

    .line 547
    aget-byte v0, v10, v1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_7

    add-int/lit8 v0, v0, -0x4

    goto :goto_3

    :cond_7
    if-nez v0, :cond_8

    const/4 v0, 0x5

    goto :goto_3

    :cond_8
    sub-int/2addr v0, v8

    .line 560
    :goto_3
    iget-object v2, p0, Lcom/UHF/scanlable/ScanView;->spBand:Landroid/widget/Spinner;

    invoke-virtual {v2, v0, v8}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 561
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->spminFrm:Landroid/widget/Spinner;

    aget-byte v2, v12, v1

    invoke-virtual {v0, v2, v8}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 562
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->spmaxFrm:Landroid/widget/Spinner;

    aget-byte v1, v11, v1

    invoke-virtual {v0, v1, v8}, Landroid/widget/Spinner;->setSelection(IZ)V

    const v0, 0x7f0d007e

    .line 564
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto :goto_4

    :cond_9
    const v0, 0x7f0d007d

    .line 568
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    :goto_4
    return-void
.end method

.method private ReadParam()V
    .locals 6

    .line 481
    sget-object v0, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v0}, Lcom/rfid/trans/ReaderHelp;->GetInventoryPatameter()Lcom/rfid/trans/ReaderParameter;

    move-result-object v0

    .line 482
    iget-object v1, p0, Lcom/UHF/scanlable/ScanView;->sptidlen:Landroid/widget/Spinner;

    iget v2, v0, Lcom/rfid/trans/ReaderParameter;->Length:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 483
    iget-object v1, p0, Lcom/UHF/scanlable/ScanView;->sptidaddr:Landroid/widget/Spinner;

    iget v2, v0, Lcom/rfid/trans/ReaderParameter;->WordPtr:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 484
    iget-object v1, p0, Lcom/UHF/scanlable/ScanView;->spqvalue:Landroid/widget/Spinner;

    iget v2, v0, Lcom/rfid/trans/ReaderParameter;->QValue:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 485
    iget-object v1, p0, Lcom/UHF/scanlable/ScanView;->sptime:Landroid/widget/Spinner;

    iget v2, v0, Lcom/rfid/trans/ReaderParameter;->ScanTime:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 486
    iget-object v1, p0, Lcom/UHF/scanlable/ScanView;->spType:Landroid/widget/Spinner;

    iget v2, v0, Lcom/rfid/trans/ReaderParameter;->IvtType:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 487
    iget-object v1, p0, Lcom/UHF/scanlable/ScanView;->spMem:Landroid/widget/Spinner;

    iget v2, v0, Lcom/rfid/trans/ReaderParameter;->Memory:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 489
    iget v0, v0, Lcom/rfid/trans/ReaderParameter;->Session:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    const/16 v1, 0xfe

    if-ne v0, v1, :cond_1

    const/4 v0, 0x5

    :cond_1
    const/16 v1, 0xfd

    if-ne v0, v1, :cond_2

    const/4 v0, 0x6

    :cond_2
    const/16 v1, 0xfc

    const/4 v2, 0x7

    if-ne v0, v1, :cond_3

    const/4 v0, 0x7

    :cond_3
    const/16 v1, 0xfb

    if-ne v0, v1, :cond_4

    const/16 v0, 0x8

    .line 495
    :cond_4
    iget-object v1, p0, Lcom/UHF/scanlable/ScanView;->spsession:Landroid/widget/Spinner;

    invoke-virtual {v1, v0, v3}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 496
    sget-object v0, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    iget v0, v0, Lcom/rfid/trans/ReaderHelp;->ModuleType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const/16 v0, 0x1e

    new-array v0, v0, [B

    new-array v4, v3, [I

    .line 500
    sget-object v5, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v5, v2, v0, v4}, Lcom/rfid/trans/ReaderHelp;->GetCfgParameter(B[B[I)I

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    .line 501
    aget v4, v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 503
    iget-object v4, p0, Lcom/UHF/scanlable/ScanView;->jgTime:Landroid/widget/Spinner;

    aget-byte v2, v0, v2

    invoke-virtual {v4, v2, v3}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 504
    iget-object v2, p0, Lcom/UHF/scanlable/ScanView;->spDwell:Landroid/widget/Spinner;

    aget-byte v0, v0, v3

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0, v3}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 507
    :cond_5
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->tvRun:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/UHF/scanlable/ScanMode;->runtime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d007e

    .line 508
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    return-void
.end method

.method private ReadProfile()V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 620
    sget-object v2, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v2, v1}, Lcom/rfid/trans/ReaderHelp;->GetProfile([B)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-nez v2, :cond_6

    .line 624
    iget v2, p0, Lcom/UHF/scanlable/ScanView;->ModuleType:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    .line 626
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x7

    const/4 v6, 0x5

    if-eq v1, v0, :cond_4

    if-eq v1, v3, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v2, :cond_1

    const/16 v6, 0xf

    if-eq v1, v6, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    :pswitch_0
    const/4 v3, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v3, 0xb

    goto :goto_0

    :pswitch_2
    const/16 v3, 0xa

    goto :goto_0

    :pswitch_3
    const/16 v3, 0x9

    goto :goto_0

    :pswitch_4
    const/16 v3, 0x8

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x7

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    .line 665
    :goto_0
    :pswitch_6
    iget-object v1, p0, Lcom/UHF/scanlable/ScanView;->spProfilr:Landroid/widget/Spinner;

    invoke-virtual {v1, v3, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_1

    .line 670
    :cond_5
    iget-object v2, p0, Lcom/UHF/scanlable/ScanView;->spProfilr:Landroid/widget/Spinner;

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v2, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    :goto_1
    const v0, 0x7f0d00be

    .line 672
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto :goto_2

    .line 674
    :cond_6
    iget v2, p0, Lcom/UHF/scanlable/ScanView;->ModuleType:I

    if-ne v2, v3, :cond_7

    .line 676
    iget-object v2, p0, Lcom/UHF/scanlable/ScanView;->spProfilr:Landroid/widget/Spinner;

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x10

    invoke-virtual {v2, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_2

    :cond_7
    const v0, 0x7f0d00bd

    .line 680
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private SetFre(I)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p1

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    const/16 v4, 0x13

    const-string v5, "MHz"

    const v6, 0x7f0800a7

    const v7, 0x7f0800a2

    const/16 v8, 0x14

    const/4 v9, 0x1

    const v10, 0x1090009

    const v11, 0x1090008

    const/4 v12, 0x0

    if-ne v1, v9, :cond_1

    new-array v1, v8, [Ljava/lang/String;

    .line 953
    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->strmaxFrm:[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    .line 954
    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->strminFrm:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_0

    const-wide v13, 0x408cc10000000000L    # 920.125

    int-to-double v8, v1

    mul-double v8, v8, v2

    add-double/2addr v8, v13

    double-to-float v8, v8

    .line 958
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 959
    iget-object v9, v0, Lcom/UHF/scanlable/ScanView;->strminFrm:[Ljava/lang/String;

    aput-object v8, v9, v1

    .line 960
    iget-object v9, v0, Lcom/UHF/scanlable/ScanView;->strmaxFrm:[Ljava/lang/String;

    aput-object v8, v9, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v8, 0x14

    goto :goto_0

    .line 962
    :cond_0
    invoke-virtual {p0, v7}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->spmaxFrm:Landroid/widget/Spinner;

    .line 963
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->strmaxFrm:[Ljava/lang/String;

    invoke-direct {v1, p0, v11, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->spada_maxFrm:Landroid/widget/ArrayAdapter;

    .line 965
    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 966
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->spmaxFrm:Landroid/widget/Spinner;

    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->spada_maxFrm:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 967
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->spmaxFrm:Landroid/widget/Spinner;

    invoke-virtual {v1, v4, v12}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 969
    invoke-virtual {p0, v6}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->spminFrm:Landroid/widget/Spinner;

    .line 970
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->strminFrm:[Ljava/lang/String;

    invoke-direct {v1, p0, v11, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->spada_minFrm:Landroid/widget/ArrayAdapter;

    .line 972
    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 973
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->spminFrm:Landroid/widget/Spinner;

    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->spada_minFrm:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 974
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->spminFrm:Landroid/widget/Spinner;

    invoke-virtual {v1, v12, v12}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto/16 :goto_6

    :cond_1
    const/4 v8, 0x2

    if-ne v1, v8, :cond_3

    const/16 v1, 0x32

    new-array v2, v1, [Ljava/lang/String;

    .line 976
    iput-object v2, v0, Lcom/UHF/scanlable/ScanView;->strmaxFrm:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    .line 977
    iput-object v2, v0, Lcom/UHF/scanlable/ScanView;->strminFrm:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    const-wide v3, 0x408c360000000000L    # 902.75

    int-to-double v8, v2

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    mul-double v8, v8, v13

    add-double/2addr v8, v3

    double-to-float v3, v8

    .line 981
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 982
    iget-object v4, v0, Lcom/UHF/scanlable/ScanView;->strminFrm:[Ljava/lang/String;

    aput-object v3, v4, v2

    .line 983
    iget-object v4, v0, Lcom/UHF/scanlable/ScanView;->strmaxFrm:[Ljava/lang/String;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 985
    :cond_2
    invoke-virtual {p0, v7}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->spmaxFrm:Landroid/widget/Spinner;

    .line 986
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->strmaxFrm:[Ljava/lang/String;

    invoke-direct {v1, p0, v11, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->spada_maxFrm:Landroid/widget/ArrayAdapter;

    .line 988
    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 989
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->spmaxFrm:Landroid/widget/Spinner;

    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->spada_maxFrm:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 990
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->spmaxFrm:Landroid/widget/Spinner;

    const/16 v2, 0x31

    invoke-virtual {v1, v2, v12}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 992
    invoke-virtual {p0, v6}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->spminFrm:Landroid/widget/Spinner;

    .line 993
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->strminFrm:[Ljava/lang/String;

    invoke-direct {v1, p0, v11, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->spada_minFrm:Landroid/widget/ArrayAdapter;

    .line 995
    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 996
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->spminFrm:Landroid/widget/Spinner;

    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->spada_minFrm:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 997
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->spminFrm:Landroid/widget/Spinner;

    invoke-virtual {v1, v12, v12}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto/16 :goto_6

    :cond_3
    const/4 v8, 0x3

    const-wide v13, 0x3fc999999999999aL    # 0.2

    if-ne v1, v8, :cond_5

    const/16 v1, 0x20

    new-array v2, v1, [Ljava/lang/String;

    .line 999
    iput-object v2, v0, Lcom/UHF/scanlable/ScanView;->strmaxFrm:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    .line 1000
    iput-object v2, v0, Lcom/UHF/scanlable/ScanView;->strminFrm:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    const-wide v3, 0x408ca8cccccccccdL    # 917.1

    int-to-double v8, v2

    mul-double v8, v8, v13

    add-double/2addr v8, v3

    double-to-float v3, v8

    .line 1004
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1005
    iget-object v4, v0, Lcom/UHF/scanlable/ScanView;->strminFrm:[Ljava/lang/String;

    aput-object v3, v4, v2

    .line 1006
    iget-object v4, v0, Lcom/UHF/scanlable/ScanView;->strmaxFrm:[Ljava/lang/String;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1008
    :cond_4
    invoke-virtual {p0, v7}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->spmaxFrm:Landroid/widget/Spinner;

    .line 1009
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->strmaxFrm:[Ljava/lang/String;

    invoke-direct {v1, p0, v11, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->spada_maxFrm:Landroid/widget/ArrayAdapter;

    .line 1011
    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1012
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->spmaxFrm:Landroid/widget/Spinner;

    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->spada_maxFrm:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1013
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->spmaxFrm:Landroid/widget/Spinner;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2, v12}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 1015
    invoke-virtual {p0, v6}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->spminFrm:Landroid/widget/Spinner;

    .line 1016
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->strminFrm:[Ljava/lang/String;

    invoke-direct {v1, p0, v11, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->spada_minFrm:Landroid/widget/ArrayAdapter;

    .line 1018
    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1019
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->spminFrm:Landroid/widget/Spinner;

    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->spada_minFrm:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1020
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->spminFrm:Landroid/widget/Spinner;

    invoke-virtual {v1, v12, v12}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto/16 :goto_6

    :cond_5
    const/4 v8, 0x4

    if-ne v1, v8, :cond_7

    const/16 v1, 0xf

    new-array v2, v1, [Ljava/lang/String;

    .line 1022
    iput-object v2, v0, Lcom/UHF/scanlable/ScanView;->strmaxFrm:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    .line 1023
    iput-object v2, v0, Lcom/UHF/scanlable/ScanView;->strminFrm:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_6

    const-wide v3, 0x408b08cccccccccdL    # 865.1

    int-to-double v8, v2

    mul-double v8, v8, v13

    add-double/2addr v8, v3

    double-to-float v3, v8

    .line 1027
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1028
    iget-object v4, v0, Lcom/UHF/scanlable/ScanView;->strminFrm:[Ljava/lang/String;

    aput-object v3, v4, v2

    .line 1029
    iget-object v4, v0, Lcom/UHF/scanlable/ScanView;->strmaxFrm:[Ljava/lang/String;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1031
    :cond_6
    invoke-virtual {p0, v7}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->spmaxFrm:Landroid/widget/Spinner;

    .line 1032
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->strmaxFrm:[Ljava/lang/String;

    invoke-direct {v1, p0, v11, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->spada_maxFrm:Landroid/widget/ArrayAdapter;

    .line 1034
    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1035
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->spmaxFrm:Landroid/widget/Spinner;

    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->spada_maxFrm:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1036
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->spmaxFrm:Landroid/widget/Spinner;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v12}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 1038
    invoke-virtual {p0, v6}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->spminFrm:Landroid/widget/Spinner;

    .line 1039
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->strminFrm:[Ljava/lang/String;

    invoke-direct {v1, p0, v11, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->spada_minFrm:Landroid/widget/ArrayAdapter;

    .line 1041
    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1042
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->spminFrm:Landroid/widget/Spinner;

    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->spada_minFrm:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1043
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->spminFrm:Landroid/widget/Spinner;

    invoke-virtual {v1, v12, v12}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto/16 :goto_6

    :cond_7
    const/16 v8, 0x8

    if-ne v1, v8, :cond_9

    const/16 v8, 0x14

    new-array v1, v8, [Ljava/lang/String;

    .line 1045
    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->strmaxFrm:[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    .line 1046
    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->strminFrm:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v8, :cond_8

    const-wide v13, 0x408a410000000000L    # 840.125

    int-to-double v8, v1

    mul-double v8, v8, v2

    add-double/2addr v8, v13

    double-to-float v8, v8

    .line 1050
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1051
    iget-object v9, v0, Lcom/UHF/scanlable/ScanView;->strminFrm:[Ljava/lang/String;

    aput-object v8, v9, v1

    .line 1052
    iget-object v9, v0, Lcom/UHF/scanlable/ScanView;->strmaxFrm:[Ljava/lang/String;

    aput-object v8, v9, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v8, 0x14

    goto :goto_4

    .line 1054
    :cond_8
    invoke-virtual {p0, v7}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->spmaxFrm:Landroid/widget/Spinner;

    .line 1055
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->strmaxFrm:[Ljava/lang/String;

    invoke-direct {v1, p0, v11, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->spada_maxFrm:Landroid/widget/ArrayAdapter;

    .line 1057
    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1058
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->spmaxFrm:Landroid/widget/Spinner;

    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->spada_maxFrm:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1059
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->spmaxFrm:Landroid/widget/Spinner;

    invoke-virtual {v1, v4, v12}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 1061
    invoke-virtual {p0, v6}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->spminFrm:Landroid/widget/Spinner;

    .line 1062
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->strminFrm:[Ljava/lang/String;

    invoke-direct {v1, p0, v11, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->spada_minFrm:Landroid/widget/ArrayAdapter;

    .line 1064
    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1065
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->spminFrm:Landroid/widget/Spinner;

    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->spada_minFrm:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1066
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->spminFrm:Landroid/widget/Spinner;

    invoke-virtual {v1, v12, v12}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_6

    :cond_9
    if-nez v1, :cond_b

    const/16 v1, 0x3d

    new-array v2, v1, [Ljava/lang/String;

    .line 1069
    iput-object v2, v0, Lcom/UHF/scanlable/ScanView;->strmaxFrm:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    .line 1070
    iput-object v2, v0, Lcom/UHF/scanlable/ScanView;->strminFrm:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_a

    mul-int/lit8 v3, v2, 0x2

    add-int/lit16 v3, v3, 0x348

    int-to-float v3, v3

    .line 1074
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1075
    iget-object v4, v0, Lcom/UHF/scanlable/ScanView;->strminFrm:[Ljava/lang/String;

    aput-object v3, v4, v2

    .line 1076
    iget-object v4, v0, Lcom/UHF/scanlable/ScanView;->strmaxFrm:[Ljava/lang/String;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1078
    :cond_a
    invoke-virtual {p0, v7}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->spmaxFrm:Landroid/widget/Spinner;

    .line 1079
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->strmaxFrm:[Ljava/lang/String;

    invoke-direct {v1, p0, v11, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->spada_maxFrm:Landroid/widget/ArrayAdapter;

    .line 1081
    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1082
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->spmaxFrm:Landroid/widget/Spinner;

    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->spada_maxFrm:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1083
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->spmaxFrm:Landroid/widget/Spinner;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2, v12}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 1085
    invoke-virtual {p0, v6}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->spminFrm:Landroid/widget/Spinner;

    .line 1086
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->strminFrm:[Ljava/lang/String;

    invoke-direct {v1, p0, v11, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->spada_minFrm:Landroid/widget/ArrayAdapter;

    .line 1088
    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1089
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->spminFrm:Landroid/widget/Spinner;

    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->spada_minFrm:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1090
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->spminFrm:Landroid/widget/Spinner;

    invoke-virtual {v1, v12, v12}, Landroid/widget/Spinner;->setSelection(IZ)V

    :cond_b
    :goto_6
    return-void
.end method

.method static synthetic access$000(Lcom/UHF/scanlable/ScanView;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/UHF/scanlable/ScanView;->SetFre(I)V

    return-void
.end method

.method private getRangeControll()V
    .locals 5

    const/16 v0, 0xfa

    new-array v0, v0, [B

    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 605
    sget-object v3, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    const/16 v4, 0x10

    invoke-virtual {v3, v4, v0, v2}, Lcom/rfid/trans/ReaderHelp;->GetCfgParameter(B[B[I)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 606
    aget v2, v2, v3

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 608
    iget-object v2, p0, Lcom/UHF/scanlable/ScanView;->spRange:Landroid/widget/Spinner;

    const/4 v3, 0x3

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v2, v0, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    const v0, 0x7f0d007e

    .line 609
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0d007d

    .line 613
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 18

    move-object/from16 v0, p0

    const v1, 0x7f08010b

    .line 203
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->tvTemp:Landroid/widget/TextView;

    const v1, 0x7f080109

    .line 204
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->tvLoss:Landroid/widget/TextView;

    const v1, 0x7f080106

    .line 205
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->tvRun:Landroid/widget/EditText;

    const v1, 0x7f080037

    .line 207
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->btReadTemp:Landroid/widget/Button;

    const v1, 0x7f080036

    .line 208
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->btReadLoss:Landroid/widget/Button;

    const v1, 0x7f08010f

    .line 211
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->tvVersion:Landroid/widget/TextView;

    const v1, 0x7f0800b1

    .line 212
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    const v1, 0x7f0800b5

    .line 214
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->tvpowerdBm:Landroid/widget/Spinner;

    const v1, 0x7f020002

    const v2, 0x1090008

    .line 215
    invoke-static {v0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    const v3, 0x1090009

    .line 216
    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 217
    iget-object v4, v0, Lcom/UHF/scanlable/ScanView;->tvpowerdBm:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 219
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->tvpowerdBm:Landroid/widget/Spinner;

    const/16 v4, 0x21

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    const v1, 0x7f0800b7

    .line 221
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->bSetting:Landroid/widget/Button;

    const v1, 0x7f0800b6

    .line 222
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->bRead:Landroid/widget/Button;

    const v1, 0x7f08008a

    .line 223
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->paramRead:Landroid/widget/Button;

    const v1, 0x7f08008b

    .line 224
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->paramSet:Landroid/widget/Button;

    const v1, 0x7f080089

    .line 225
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->btOpenrf:Landroid/widget/Button;

    const v1, 0x7f080088

    .line 226
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->btCloserf:Landroid/widget/Button;

    const v1, 0x7f08003d

    .line 227
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->btAnswer:Landroid/widget/Button;

    const v1, 0x7f08003c

    .line 228
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->btActive:Landroid/widget/Button;

    const v1, 0x7f080038

    .line 229
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->btSetBaud:Landroid/widget/Button;

    const v1, 0x7f08003f

    .line 230
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->btSetAntCheck:Landroid/widget/Button;

    const v1, 0x7f08003e

    .line 231
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->btGetAntCheck:Landroid/widget/Button;

    const v1, 0x7f080039

    .line 232
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->btSetFocus:Landroid/widget/Button;

    const v1, 0x7f080034

    .line 233
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->btGetFocus:Landroid/widget/Button;

    const v1, 0x7f08003a

    .line 234
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->btSetPro:Landroid/widget/Button;

    const v1, 0x7f080035

    .line 235
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->getRange:Landroid/widget/Button;

    const v1, 0x7f08003b

    .line 236
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->setRange:Landroid/widget/Button;

    .line 238
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->btSetAntCheck:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->btGetAntCheck:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->bSetting:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->bRead:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->paramRead:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->paramSet:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->btOpenrf:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->btCloserf:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->btAnswer:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->btActive:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->btSetBaud:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->btReadLoss:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->btReadTemp:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->getRange:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->setRange:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->btSetFocus:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->btGetFocus:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->btSetPro:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f08009b

    .line 258
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->linefocus:Landroid/widget/LinearLayout;

    const v1, 0x7f080099

    .line 259
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->lineprofile:Landroid/widget/LinearLayout;

    const v1, 0x7f08009a

    .line 260
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->linerange:Landroid/widget/LinearLayout;

    const v1, 0x7f080098

    .line 261
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->lineloss:Landroid/widget/LinearLayout;

    const v1, 0x7f080097

    .line 262
    invoke-virtual {v0, v1}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/UHF/scanlable/ScanView;->lineantcheck:Landroid/widget/LinearLayout;

    .line 263
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->linefocus:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 264
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->linerange:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 265
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->lineprofile:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->lineloss:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    iget-object v1, v0, Lcom/UHF/scanlable/ScanView;->lineantcheck:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_0
    const/16 v8, 0x100

    if-ge v7, v8, :cond_0

    .line 271
    iget-object v8, v0, Lcom/UHF/scanlable/ScanView;->strtime:[Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "*100ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const v7, 0x7f0800fc

    .line 273
    invoke-virtual {v0, v7}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, v0, Lcom/UHF/scanlable/ScanView;->sptime:Landroid/widget/Spinner;

    .line 274
    new-instance v7, Landroid/widget/ArrayAdapter;

    iget-object v9, v0, Lcom/UHF/scanlable/ScanView;->strtime:[Ljava/lang/String;

    invoke-direct {v7, v0, v2, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v7, v0, Lcom/UHF/scanlable/ScanView;->spada_time:Landroid/widget/ArrayAdapter;

    .line 276
    invoke-virtual {v7, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 277
    iget-object v7, v0, Lcom/UHF/scanlable/ScanView;->sptime:Landroid/widget/Spinner;

    iget-object v9, v0, Lcom/UHF/scanlable/ScanView;->spada_time:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 278
    iget-object v7, v0, Lcom/UHF/scanlable/ScanView;->sptime:Landroid/widget/Spinner;

    const/16 v9, 0x32

    invoke-virtual {v7, v9, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 281
    iget-object v7, v0, Lcom/UHF/scanlable/ScanView;->strBand:[Ljava/lang/String;

    const-string v9, "Chinese band2"

    aput-object v9, v7, v1

    const-string v9, "US band"

    .line 282
    aput-object v9, v7, v5

    const-string v9, "Korean band"

    const/4 v10, 0x2

    .line 283
    aput-object v9, v7, v10

    const-string v9, "EU band"

    const/4 v11, 0x3

    .line 284
    aput-object v9, v7, v11

    const-string v9, "Chinese band1"

    const/4 v12, 0x4

    .line 285
    aput-object v9, v7, v12

    const-string v9, "ALL band"

    const/4 v13, 0x5

    .line 286
    aput-object v9, v7, v13

    .line 288
    iget-object v7, v0, Lcom/UHF/scanlable/ScanView;->strBaudRate:[Ljava/lang/String;

    const-string v9, "57600bps"

    aput-object v9, v7, v1

    const-string v9, "115200bps"

    .line 289
    aput-object v9, v7, v5

    const v7, 0x7f08002c

    .line 292
    invoke-virtual {v0, v7}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, v0, Lcom/UHF/scanlable/ScanView;->spBand:Landroid/widget/Spinner;

    .line 293
    new-instance v7, Landroid/widget/ArrayAdapter;

    iget-object v9, v0, Lcom/UHF/scanlable/ScanView;->strBand:[Ljava/lang/String;

    invoke-direct {v7, v0, v2, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v7, v0, Lcom/UHF/scanlable/ScanView;->spada_Band:Landroid/widget/ArrayAdapter;

    .line 295
    invoke-virtual {v7, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 296
    iget-object v7, v0, Lcom/UHF/scanlable/ScanView;->spBand:Landroid/widget/Spinner;

    iget-object v9, v0, Lcom/UHF/scanlable/ScanView;->spada_Band:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 297
    iget-object v7, v0, Lcom/UHF/scanlable/ScanView;->spBand:Landroid/widget/Spinner;

    invoke-virtual {v7, v5, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 298
    invoke-direct {v0, v10}, Lcom/UHF/scanlable/ScanView;->SetFre(I)V

    .line 300
    iget-object v7, v0, Lcom/UHF/scanlable/ScanView;->spBand:Landroid/widget/Spinner;

    new-instance v9, Lcom/UHF/scanlable/ScanView$1;

    invoke-direct {v9, v0}, Lcom/UHF/scanlable/ScanView$1;-><init>(Lcom/UHF/scanlable/ScanView;)V

    invoke-virtual {v7, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/4 v7, 0x0

    :goto_1
    const-string v9, "ms"

    const/4 v14, 0x7

    if-ge v7, v14, :cond_1

    .line 323
    iget-object v14, v0, Lcom/UHF/scanlable/ScanView;->strjtTime:[Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v16, v7, 0xa

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v6, 0x8

    goto :goto_1

    :cond_1
    const v6, 0x7f08008c

    .line 325
    invoke-virtual {v0, v6}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, v0, Lcom/UHF/scanlable/ScanView;->jgTime:Landroid/widget/Spinner;

    .line 326
    new-instance v6, Landroid/widget/ArrayAdapter;

    iget-object v7, v0, Lcom/UHF/scanlable/ScanView;->strjtTime:[Ljava/lang/String;

    invoke-direct {v6, v0, v2, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v6, v0, Lcom/UHF/scanlable/ScanView;->spada_jgTime:Landroid/widget/ArrayAdapter;

    .line 328
    invoke-virtual {v6, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 329
    iget-object v6, v0, Lcom/UHF/scanlable/ScanView;->jgTime:Landroid/widget/Spinner;

    iget-object v7, v0, Lcom/UHF/scanlable/ScanView;->spada_jgTime:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 330
    iget-object v6, v0, Lcom/UHF/scanlable/ScanView;->jgTime:Landroid/widget/Spinner;

    invoke-virtual {v6, v11, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    const v6, 0x7f0800bb

    .line 332
    invoke-virtual {v0, v6}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, v0, Lcom/UHF/scanlable/ScanView;->spqvalue:Landroid/widget/Spinner;

    const v6, 0x7f02000c

    .line 333
    invoke-static {v0, v6, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v6

    .line 334
    invoke-virtual {v6, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 335
    iget-object v7, v0, Lcom/UHF/scanlable/ScanView;->spqvalue:Landroid/widget/Spinner;

    invoke-virtual {v7, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 336
    iget-object v6, v0, Lcom/UHF/scanlable/ScanView;->spqvalue:Landroid/widget/Spinner;

    const/4 v7, 0x6

    invoke-virtual {v6, v7, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    const v6, 0x7f0800de

    .line 339
    invoke-virtual {v0, v6}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, v0, Lcom/UHF/scanlable/ScanView;->spsession:Landroid/widget/Spinner;

    const v6, 0x7f02000d

    .line 340
    invoke-static {v0, v6, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v6

    .line 341
    invoke-virtual {v6, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 342
    iget-object v15, v0, Lcom/UHF/scanlable/ScanView;->spsession:Landroid/widget/Spinner;

    invoke-virtual {v15, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 343
    iget-object v6, v0, Lcom/UHF/scanlable/ScanView;->spsession:Landroid/widget/Spinner;

    invoke-virtual {v6, v13, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    const v6, 0x7f0800fa

    .line 345
    invoke-virtual {v0, v6}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, v0, Lcom/UHF/scanlable/ScanView;->sptidaddr:Landroid/widget/Spinner;

    const v6, 0x7f0800f9

    .line 346
    invoke-virtual {v0, v6}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, v0, Lcom/UHF/scanlable/ScanView;->sptidlen:Landroid/widget/Spinner;

    const v6, 0x7f02000f

    .line 347
    invoke-static {v0, v6, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v6

    .line 348
    invoke-virtual {v6, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 349
    iget-object v15, v0, Lcom/UHF/scanlable/ScanView;->sptidaddr:Landroid/widget/Spinner;

    invoke-virtual {v15, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 350
    iget-object v15, v0, Lcom/UHF/scanlable/ScanView;->sptidaddr:Landroid/widget/Spinner;

    invoke-virtual {v15, v1, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 351
    iget-object v15, v0, Lcom/UHF/scanlable/ScanView;->sptidlen:Landroid/widget/Spinner;

    invoke-virtual {v15, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 352
    iget-object v6, v0, Lcom/UHF/scanlable/ScanView;->sptidlen:Landroid/widget/Spinner;

    invoke-virtual {v6, v7, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    const v6, 0x7f080030

    .line 354
    invoke-virtual {v0, v6}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, v0, Lcom/UHF/scanlable/ScanView;->spbaudRate:Landroid/widget/Spinner;

    .line 355
    new-instance v6, Landroid/widget/ArrayAdapter;

    iget-object v15, v0, Lcom/UHF/scanlable/ScanView;->strBaudRate:[Ljava/lang/String;

    invoke-direct {v6, v0, v2, v15}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v6, v0, Lcom/UHF/scanlable/ScanView;->spada_baudrate:Landroid/widget/ArrayAdapter;

    .line 357
    invoke-virtual {v6, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 358
    iget-object v6, v0, Lcom/UHF/scanlable/ScanView;->spbaudRate:Landroid/widget/Spinner;

    iget-object v15, v0, Lcom/UHF/scanlable/ScanView;->spada_baudrate:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v15}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v6, 0x7f080007

    .line 363
    invoke-virtual {v0, v6}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, v0, Lcom/UHF/scanlable/ScanView;->spType:Landroid/widget/Spinner;

    const v6, 0x7f020001

    .line 364
    invoke-static {v0, v6, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v6

    .line 365
    invoke-virtual {v6, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 366
    iget-object v15, v0, Lcom/UHF/scanlable/ScanView;->spType:Landroid/widget/Spinner;

    invoke-virtual {v15, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 367
    iget-object v6, v0, Lcom/UHF/scanlable/ScanView;->spType:Landroid/widget/Spinner;

    invoke-virtual {v6, v1, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    const v6, 0x7f0800a8

    .line 371
    invoke-virtual {v0, v6}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, v0, Lcom/UHF/scanlable/ScanView;->spMem:Landroid/widget/Spinner;

    const v6, 0x7f020011

    .line 372
    invoke-static {v0, v6, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v6

    .line 373
    invoke-virtual {v6, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 374
    iget-object v15, v0, Lcom/UHF/scanlable/ScanView;->spMem:Landroid/widget/Spinner;

    invoke-virtual {v15, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 375
    iget-object v6, v0, Lcom/UHF/scanlable/ScanView;->spMem:Landroid/widget/Spinner;

    invoke-virtual {v6, v5, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    const/4 v6, 0x2

    :goto_2
    if-ge v6, v8, :cond_2

    .line 380
    iget-object v15, v0, Lcom/UHF/scanlable/ScanView;->dwelltime:[Ljava/lang/String;

    add-int/lit8 v16, v6, -0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v17, v6, 0x64

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v15, v16

    add-int/lit8 v6, v6, 0x1

    const/16 v8, 0x100

    const/4 v14, 0x7

    goto :goto_2

    :cond_2
    const v6, 0x7f080063

    .line 382
    invoke-virtual {v0, v6}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, v0, Lcom/UHF/scanlable/ScanView;->spDwell:Landroid/widget/Spinner;

    .line 383
    new-instance v6, Landroid/widget/ArrayAdapter;

    iget-object v8, v0, Lcom/UHF/scanlable/ScanView;->dwelltime:[Ljava/lang/String;

    invoke-direct {v6, v0, v2, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v6, v0, Lcom/UHF/scanlable/ScanView;->spada_dwell:Landroid/widget/ArrayAdapter;

    .line 385
    invoke-virtual {v6, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 386
    iget-object v6, v0, Lcom/UHF/scanlable/ScanView;->spDwell:Landroid/widget/Spinner;

    iget-object v8, v0, Lcom/UHF/scanlable/ScanView;->spada_dwell:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 387
    iget-object v6, v0, Lcom/UHF/scanlable/ScanView;->spDwell:Landroid/widget/Spinner;

    const/16 v8, 0x30

    invoke-virtual {v6, v8, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    const v6, 0x7f080076

    .line 390
    invoke-virtual {v0, v6}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, v0, Lcom/UHF/scanlable/ScanView;->spTagfocus:Landroid/widget/Spinner;

    const v6, 0x7f02000a

    .line 391
    invoke-static {v0, v6, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v8

    .line 392
    invoke-virtual {v8, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 393
    iget-object v9, v0, Lcom/UHF/scanlable/ScanView;->spTagfocus:Landroid/widget/Spinner;

    invoke-virtual {v9, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 394
    iget-object v8, v0, Lcom/UHF/scanlable/ScanView;->spTagfocus:Landroid/widget/Spinner;

    invoke-virtual {v8, v1, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    const v8, 0x7f080051

    .line 396
    invoke-virtual {v0, v8}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, v0, Lcom/UHF/scanlable/ScanView;->spAntCheck:Landroid/widget/Spinner;

    .line 397
    invoke-static {v0, v6, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v6

    .line 398
    invoke-virtual {v6, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 399
    iget-object v8, v0, Lcom/UHF/scanlable/ScanView;->spAntCheck:Landroid/widget/Spinner;

    invoke-virtual {v8, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 400
    iget-object v6, v0, Lcom/UHF/scanlable/ScanView;->spAntCheck:Landroid/widget/Spinner;

    invoke-virtual {v6, v5, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 403
    sget-object v6, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v6}, Lcom/rfid/trans/ReaderHelp;->GetReaderType()I

    move-result v6

    iput v6, v0, Lcom/UHF/scanlable/ScanView;->ReaderType:I

    if-eq v6, v4, :cond_8

    const/16 v4, 0x28

    if-eq v6, v4, :cond_8

    const/16 v4, 0x23

    if-eq v6, v4, :cond_8

    const/16 v4, 0x37

    if-eq v6, v4, :cond_8

    const/16 v4, 0x36

    if-ne v6, v4, :cond_3

    goto/16 :goto_5

    :cond_3
    const/16 v4, 0x70

    if-eq v6, v4, :cond_7

    const/16 v4, 0x71

    if-eq v6, v4, :cond_7

    const/16 v4, 0x31

    if-ne v6, v4, :cond_4

    goto :goto_4

    :cond_4
    const/16 v4, 0x61

    if-eq v6, v4, :cond_6

    const/16 v4, 0x63

    if-eq v6, v4, :cond_6

    const/16 v4, 0x65

    if-eq v6, v4, :cond_6

    const/16 v4, 0x66

    if-ne v6, v4, :cond_5

    goto :goto_3

    .line 450
    :cond_5
    iput v1, v0, Lcom/UHF/scanlable/ScanView;->ModuleType:I

    .line 451
    iget-object v4, v0, Lcom/UHF/scanlable/ScanView;->linerange:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 438
    :cond_6
    :goto_3
    iput v11, v0, Lcom/UHF/scanlable/ScanView;->ModuleType:I

    new-array v4, v13, [Ljava/lang/String;

    .line 439
    iput-object v4, v0, Lcom/UHF/scanlable/ScanView;->strProfile:[Ljava/lang/String;

    const-string v6, " 0:160K,FM0,12.5us"

    aput-object v6, v4, v1

    const-string v6, " 1:160K, M8,12.5us"

    aput-object v6, v4, v5

    const-string v6, " 2:250K,FM0,12.5us"

    aput-object v6, v4, v10

    const-string v6, " 3:320K, M4,6.25us"

    aput-object v6, v4, v11

    const-string v6, " 4:160K, M4,12.5us"

    aput-object v6, v4, v12

    .line 445
    iput v5, v0, Lcom/UHF/scanlable/ScanView;->ModuleType:I

    .line 446
    iget-object v4, v0, Lcom/UHF/scanlable/ScanView;->lineprofile:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    :cond_7
    :goto_4
    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/String;

    .line 417
    iput-object v4, v0, Lcom/UHF/scanlable/ScanView;->strProfile:[Ljava/lang/String;

    const-string v6, "11:640K,FM0,7.5us"

    aput-object v6, v4, v1

    const-string v6, " 1:640K, M2,7.5us"

    aput-object v6, v4, v5

    const-string v6, "15:640K, M4,7.5us"

    aput-object v6, v4, v10

    const-string v6, "12:320K, M2, 15us"

    aput-object v6, v4, v11

    const-string v6, " 3:320K, M2, 20us"

    aput-object v6, v4, v12

    const-string v6, " 5:320K, M4, 20us"

    aput-object v6, v4, v13

    const-string v6, " 7:250K, M4, 20us"

    aput-object v6, v4, v7

    const-string v6, "13:160K, M8, 20us"

    const/4 v7, 0x7

    aput-object v6, v4, v7

    const-string v6, "103:640K,FM0,6.25us"

    const/16 v7, 0x8

    aput-object v6, v4, v7

    const/16 v6, 0x9

    const-string v7, "120:640K, M2,6.25us"

    aput-object v7, v4, v6

    const-string v6, "202:426K,FM0, 15us"

    const/16 v7, 0xa

    aput-object v6, v4, v7

    const/16 v6, 0xb

    const-string v7, "345:640K, M4,7.5us"

    aput-object v7, v4, v6

    .line 430
    iput v10, v0, Lcom/UHF/scanlable/ScanView;->ModuleType:I

    .line 431
    iget-object v4, v0, Lcom/UHF/scanlable/ScanView;->linefocus:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 432
    iget-object v4, v0, Lcom/UHF/scanlable/ScanView;->lineprofile:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 433
    iget-object v4, v0, Lcom/UHF/scanlable/ScanView;->lineloss:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 434
    iget-object v4, v0, Lcom/UHF/scanlable/ScanView;->lineantcheck:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    :cond_8
    :goto_5
    new-array v4, v12, [Ljava/lang/String;

    .line 407
    iput-object v4, v0, Lcom/UHF/scanlable/ScanView;->strProfile:[Ljava/lang/String;

    const-string v6, " 0:40K, FM0,25us"

    aput-object v6, v4, v1

    const-string v6, " 1:250K,M4, 25us"

    aput-object v6, v4, v5

    const-string v6, " 2:300K,M4, 25us"

    aput-object v6, v4, v10

    const-string v6, " 3:400K,FM0,6.25us"

    aput-object v6, v4, v11

    .line 412
    iput v5, v0, Lcom/UHF/scanlable/ScanView;->ModuleType:I

    .line 413
    iget-object v4, v0, Lcom/UHF/scanlable/ScanView;->lineprofile:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_6
    const v4, 0x7f0800b8

    .line 454
    invoke-virtual {v0, v4}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, v0, Lcom/UHF/scanlable/ScanView;->spProfilr:Landroid/widget/Spinner;

    .line 455
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v6, v0, Lcom/UHF/scanlable/ScanView;->strProfile:[Ljava/lang/String;

    invoke-direct {v4, v0, v2, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v4, v0, Lcom/UHF/scanlable/ScanView;->spada_profile:Landroid/widget/ArrayAdapter;

    .line 457
    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 458
    iget-object v4, v0, Lcom/UHF/scanlable/ScanView;->spProfilr:Landroid/widget/Spinner;

    iget-object v6, v0, Lcom/UHF/scanlable/ScanView;->spada_profile:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 459
    iget v4, v0, Lcom/UHF/scanlable/ScanView;->ModuleType:I

    if-ne v4, v10, :cond_9

    .line 460
    iget-object v4, v0, Lcom/UHF/scanlable/ScanView;->spProfilr:Landroid/widget/Spinner;

    invoke-virtual {v4, v13, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_7

    .line 462
    :cond_9
    iget-object v4, v0, Lcom/UHF/scanlable/ScanView;->spProfilr:Landroid/widget/Spinner;

    invoke-virtual {v4, v5, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    :goto_7
    const/4 v4, 0x0

    :goto_8
    const/16 v5, 0x64

    if-gt v4, v5, :cond_a

    .line 468
    iget-object v5, v0, Lcom/UHF/scanlable/ScanView;->strRange:[Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_a
    const v4, 0x7f0800bd

    .line 470
    invoke-virtual {v0, v4}, Lcom/UHF/scanlable/ScanView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, v0, Lcom/UHF/scanlable/ScanView;->spRange:Landroid/widget/Spinner;

    .line 471
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, v0, Lcom/UHF/scanlable/ScanView;->strRange:[Ljava/lang/String;

    invoke-direct {v4, v0, v2, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v4, v0, Lcom/UHF/scanlable/ScanView;->spada_range:Landroid/widget/ArrayAdapter;

    .line 473
    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 474
    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->spRange:Landroid/widget/Spinner;

    iget-object v3, v0, Lcom/UHF/scanlable/ScanView;->spada_range:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 475
    iget-object v2, v0, Lcom/UHF/scanlable/ScanView;->spRange:Landroid/widget/Spinner;

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->paramRead:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 688
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->ReadParam()V

    goto/16 :goto_8

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->paramSet:Landroid/widget/Button;

    const/4 v1, 0x7

    const/16 v2, 0x8

    const/4 v3, 0x5

    const v4, 0x7f0d00be

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne p1, v0, :cond_7

    .line 692
    iget-object p1, p0, Lcom/UHF/scanlable/ScanView;->tvRun:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/UHF/scanlable/ScanMode;->runtime:I

    .line 693
    sget-object p1, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {p1}, Lcom/rfid/trans/ReaderHelp;->GetInventoryPatameter()Lcom/rfid/trans/ReaderParameter;

    move-result-object p1

    .line 694
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->sptidlen:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, p1, Lcom/rfid/trans/ReaderParameter;->Length:I

    .line 695
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->sptidaddr:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, p1, Lcom/rfid/trans/ReaderParameter;->WordPtr:I

    .line 696
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->spqvalue:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, p1, Lcom/rfid/trans/ReaderParameter;->QValue:I

    .line 697
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->sptime:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, p1, Lcom/rfid/trans/ReaderParameter;->ScanTime:I

    .line 698
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->spType:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, p1, Lcom/rfid/trans/ReaderParameter;->IvtType:I

    .line 699
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->spMem:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/2addr v0, v8

    iput v0, p1, Lcom/rfid/trans/ReaderParameter;->Memory:I

    .line 700
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->spsession:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v5, :cond_1

    const/16 v0, 0xff

    :cond_1
    if-ne v0, v3, :cond_2

    const/16 v0, 0xfe

    :cond_2
    const/4 v3, 0x6

    if-ne v0, v3, :cond_3

    const/16 v0, 0xfd

    :cond_3
    if-ne v0, v1, :cond_4

    const/16 v0, 0xfc

    :cond_4
    if-ne v0, v2, :cond_5

    const/16 v0, 0xfb

    .line 706
    :cond_5
    iput v0, p1, Lcom/rfid/trans/ReaderParameter;->Session:I

    .line 708
    iput v9, p1, Lcom/rfid/trans/ReaderParameter;->Interval:I

    .line 709
    sget-object v0, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v0, p1}, Lcom/rfid/trans/ReaderHelp;->SetInventoryPatameter(Lcom/rfid/trans/ReaderParameter;)V

    .line 710
    sget-object v0, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    iget v0, v0, Lcom/rfid/trans/ReaderHelp;->ModuleType:I

    if-ne v0, v7, :cond_6

    .line 712
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->jgTime:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 713
    iget-object v2, p0, Lcom/UHF/scanlable/ScanView;->spDwell:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 714
    iput v9, p1, Lcom/rfid/trans/ReaderParameter;->Interval:I

    .line 715
    sget-object v3, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v3, p1}, Lcom/rfid/trans/ReaderHelp;->SetInventoryPatameter(Lcom/rfid/trans/ReaderParameter;)V

    new-array p1, v6, [B

    int-to-byte v0, v0

    aput-byte v0, p1, v9

    add-int/2addr v2, v7

    int-to-byte v0, v2

    aput-byte v0, p1, v8

    aput-byte v7, p1, v7

    .line 721
    sget-object v0, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v0, v9, v1, p1, v6}, Lcom/rfid/trans/ReaderHelp;->SetCfgParameter(BB[BI)I

    .line 723
    :cond_6
    invoke-virtual {p0, v4}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto/16 :goto_8

    .line 725
    :cond_7
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->bSetting:Landroid/widget/Button;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, ""

    if-ne p1, v0, :cond_12

    .line 729
    :try_start_1
    iget-object p1, p0, Lcom/UHF/scanlable/ScanView;->tvpowerdBm:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    .line 730
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->spBand:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v1, 0x1

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    if-ne v0, v8, :cond_9

    const/4 v1, 0x2

    :cond_9
    if-ne v0, v7, :cond_a

    const/4 v1, 0x3

    :cond_a
    if-ne v0, v6, :cond_b

    const/4 v1, 0x4

    :cond_b
    if-ne v0, v5, :cond_c

    goto :goto_1

    :cond_c
    move v2, v1

    :goto_1
    if-ne v0, v3, :cond_d

    goto :goto_2

    :cond_d
    move v9, v2

    .line 738
    :goto_2
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->spminFrm:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 740
    iget-object v1, p0, Lcom/UHF/scanlable/ScanView;->spmaxFrm:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 745
    sget-object v2, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    int-to-byte p1, p1

    invoke-virtual {v2, p1}, Lcom/rfid/trans/ReaderHelp;->SetRfPower(B)I

    move-result p1

    if-eqz p1, :cond_e

    const p1, 0x7f0d00ae

    .line 748
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_e
    move-object p1, v10

    .line 750
    :goto_3
    sget-object v2, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    int-to-byte v3, v9

    int-to-byte v1, v1

    int-to-byte v0, v0

    invoke-virtual {v2, v3, v1, v0}, Lcom/rfid/trans/ReaderHelp;->SetRegion(BBB)I

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f0d007c

    if-ne p1, v10, :cond_f

    .line 754
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 756
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",\r\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_10
    :goto_4
    if-eq p1, v10, :cond_11

    .line 760
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto/16 :goto_8

    .line 764
    :cond_11
    invoke-virtual {p0, v4}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto/16 :goto_8

    .line 767
    :cond_12
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->setRange:Landroid/widget/Button;

    const v11, 0x7f0d00bd

    if-ne p1, v0, :cond_14

    .line 768
    iget-object p1, p0, Lcom/UHF/scanlable/ScanView;->spRange:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    new-array v0, v5, [B

    aput-byte v9, v0, v7

    aput-byte v9, v0, v8

    aput-byte v9, v0, v9

    int-to-byte p1, p1

    aput-byte p1, v0, v6

    .line 773
    sget-object p1, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    const/16 v1, 0x10

    invoke-virtual {p1, v9, v1, v0, v5}, Lcom/rfid/trans/ReaderHelp;->SetCfgParameter(BB[BI)I

    move-result p1

    if-nez p1, :cond_13

    .line 776
    invoke-virtual {p0, v4}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto/16 :goto_8

    .line 780
    :cond_13
    invoke-virtual {p0, v11}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto/16 :goto_8

    .line 782
    :cond_14
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->getRange:Landroid/widget/Button;

    if-ne p1, v0, :cond_15

    .line 783
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->getRangeControll()V

    goto/16 :goto_8

    .line 785
    :cond_15
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->btGetAntCheck:Landroid/widget/Button;

    if-ne p1, v0, :cond_16

    .line 787
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->ReadCheckAnt()V

    goto/16 :goto_8

    .line 789
    :cond_16
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->btSetAntCheck:Landroid/widget/Button;

    if-ne p1, v0, :cond_18

    .line 791
    iget-object p1, p0, Lcom/UHF/scanlable/ScanView;->spAntCheck:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    int-to-byte p1, p1

    .line 792
    sget-object v0, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v0, p1}, Lcom/rfid/trans/ReaderHelp;->SetCheckAnt(B)I

    move-result p1

    if-nez p1, :cond_17

    .line 795
    invoke-virtual {p0, v4}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto/16 :goto_8

    .line 799
    :cond_17
    invoke-virtual {p0, v11}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto/16 :goto_8

    .line 802
    :cond_18
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->bRead:Landroid/widget/Button;

    if-ne p1, v0, :cond_19

    .line 805
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->ReadInformation()V

    goto/16 :goto_8

    .line 810
    :cond_19
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->btSetBaud:Landroid/widget/Button;

    if-ne p1, v0, :cond_1d

    .line 812
    iget-object p1, p0, Lcom/UHF/scanlable/ScanView;->spbaudRate:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    const v0, 0xe100

    if-eqz p1, :cond_1b

    if-eq p1, v8, :cond_1a

    goto :goto_5

    :cond_1a
    const v0, 0x1c200

    .line 823
    :cond_1b
    :goto_5
    sget-object p1, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {p1, v0}, Lcom/rfid/trans/ReaderHelp;->SetBaudRate(I)I

    move-result p1

    if-nez p1, :cond_1c

    .line 826
    invoke-virtual {p0, v4}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto/16 :goto_8

    .line 830
    :cond_1c
    invoke-virtual {p0, v11}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto/16 :goto_8

    .line 833
    :cond_1d
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->btSetFocus:Landroid/widget/Button;

    if-ne p1, v0, :cond_1f

    .line 835
    iget-object p1, p0, Lcom/UHF/scanlable/ScanView;->spTagfocus:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    new-array v0, v8, [B

    int-to-byte p1, p1

    aput-byte p1, v0, v9

    .line 839
    sget-object p1, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {p1, v9, v2, v0, v8}, Lcom/rfid/trans/ReaderHelp;->SetCfgParameter(BB[BI)I

    move-result p1

    if-nez p1, :cond_1e

    .line 842
    invoke-virtual {p0, v4}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto/16 :goto_8

    .line 846
    :cond_1e
    invoke-virtual {p0, v11}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto/16 :goto_8

    .line 849
    :cond_1f
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->btGetFocus:Landroid/widget/Button;

    if-ne p1, v0, :cond_20

    .line 851
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->ReadFocus()V

    goto/16 :goto_8

    .line 854
    :cond_20
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->btReadLoss:Landroid/widget/Button;

    const/16 v2, 0x32

    const/16 v12, 0x33

    const/16 v13, 0xd

    if-ne p1, v0, :cond_23

    new-array p1, v5, [B

    new-array v0, v8, [B

    .line 858
    iget v1, p0, Lcom/UHF/scanlable/ScanView;->curband:I

    if-ne v1, v5, :cond_21

    aput-byte v9, p1, v9

    aput-byte v13, p1, v8

    aput-byte v12, p1, v7

    const/16 v1, 0x4c

    aput-byte v1, p1, v6

    goto :goto_6

    :cond_21
    aput-byte v9, p1, v9

    aput-byte v13, p1, v8

    const/16 v1, -0x9

    aput-byte v1, p1, v7

    aput-byte v2, p1, v6

    .line 873
    :goto_6
    sget-object v1, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v1, p1, v9, v0}, Lcom/rfid/trans/ReaderHelp;->MeasureReturnLoss([BB[B)I

    move-result p1

    if-nez p1, :cond_22

    .line 876
    iget-object p1, p0, Lcom/UHF/scanlable/ScanView;->tvLoss:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v0, v0, v9

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0d007e

    .line 877
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto :goto_8

    :cond_22
    const p1, 0x7f0d007d

    .line 881
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto :goto_8

    .line 884
    :cond_23
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->btSetPro:Landroid/widget/Button;

    if-ne p1, v0, :cond_26

    .line 886
    iget-object p1, p0, Lcom/UHF/scanlable/ScanView;->spProfilr:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    .line 888
    iget v0, p0, Lcom/UHF/scanlable/ScanView;->ModuleType:I

    if-ne v0, v7, :cond_24

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x5

    goto :goto_7

    :pswitch_1
    const/16 v1, 0x35

    goto :goto_7

    :pswitch_2
    const/16 v1, 0x34

    goto :goto_7

    :pswitch_3
    const/16 v1, 0x33

    goto :goto_7

    :pswitch_4
    const/16 v1, 0x32

    goto :goto_7

    :pswitch_5
    const/16 v1, 0xd

    goto :goto_7

    :pswitch_6
    const/4 v1, 0x3

    goto :goto_7

    :pswitch_7
    const/16 v1, 0xc

    goto :goto_7

    :pswitch_8
    const/16 v1, 0xf

    goto :goto_7

    :pswitch_9
    const/4 v1, 0x1

    goto :goto_7

    :pswitch_a
    const/16 v1, 0xb

    :goto_7
    :pswitch_b
    move p1, v1

    .line 935
    :cond_24
    sget-object v0, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lcom/rfid/trans/ReaderHelp;->SetProfile(B)I

    move-result p1

    if-nez p1, :cond_25

    .line 938
    invoke-virtual {p0, v4}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto :goto_8

    .line 942
    :cond_25
    invoke-virtual {p0, v11}, Lcom/UHF/scanlable/ScanView;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_26
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_b
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/UHF/scanlable/ScanView;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0a002c

    .line 125
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ScanView;->setContentView(I)V

    .line 126
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->initView()V

    .line 127
    iget p1, p0, Lcom/UHF/scanlable/ScanView;->ModuleType:I

    if-nez p1, :cond_0

    .line 129
    sget-object p1, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {p1}, Lcom/rfid/trans/ReaderHelp;->GetInventoryPatameter()Lcom/rfid/trans/ReaderParameter;

    move-result-object p1

    const/4 v0, 0x0

    .line 130
    iput v0, p1, Lcom/rfid/trans/ReaderParameter;->Session:I

    .line 131
    sget-object v0, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v0, p1}, Lcom/rfid/trans/ReaderHelp;->SetInventoryPatameter(Lcom/rfid/trans/ReaderParameter;)V

    .line 132
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->ReadParam()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 136
    sget-object p1, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {p1}, Lcom/rfid/trans/ReaderHelp;->GetInventoryPatameter()Lcom/rfid/trans/ReaderParameter;

    move-result-object p1

    .line 137
    iput v0, p1, Lcom/rfid/trans/ReaderParameter;->Session:I

    .line 138
    sget-object v0, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v0, p1}, Lcom/rfid/trans/ReaderHelp;->SetInventoryPatameter(Lcom/rfid/trans/ReaderParameter;)V

    .line 139
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->ReadParam()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 143
    sget-object p1, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {p1}, Lcom/rfid/trans/ReaderHelp;->GetInventoryPatameter()Lcom/rfid/trans/ReaderParameter;

    move-result-object p1

    const/16 v0, 0xfe

    .line 144
    iput v0, p1, Lcom/rfid/trans/ReaderParameter;->Session:I

    .line 145
    sget-object v0, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v0, p1}, Lcom/rfid/trans/ReaderHelp;->SetInventoryPatameter(Lcom/rfid/trans/ReaderParameter;)V

    .line 146
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->ReadParam()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 150
    sget-object p1, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {p1}, Lcom/rfid/trans/ReaderHelp;->GetInventoryPatameter()Lcom/rfid/trans/ReaderParameter;

    move-result-object p1

    .line 151
    iput v0, p1, Lcom/rfid/trans/ReaderParameter;->Session:I

    .line 152
    sget-object v0, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v0, p1}, Lcom/rfid/trans/ReaderHelp;->SetInventoryPatameter(Lcom/rfid/trans/ReaderParameter;)V

    .line 153
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->ReadParam()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 163
    sget v0, Lcom/UHF/scanlable/Connect232;->baud:I

    const v1, 0xe100

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x1c200

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->spbaudRate:Landroid/widget/Spinner;

    invoke-virtual {v0, v2, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/UHF/scanlable/ScanView;->spbaudRate:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 172
    :goto_0
    iget v0, p0, Lcom/UHF/scanlable/ScanView;->ModuleType:I

    if-nez v0, :cond_2

    .line 174
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->ReadParam()V

    .line 175
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->ReadInformation()V

    .line 176
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->getRangeControll()V

    goto :goto_1

    :cond_2
    if-ne v0, v2, :cond_3

    .line 180
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->ReadParam()V

    .line 181
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->ReadInformation()V

    .line 182
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->ReadProfile()V

    .line 183
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->ReadCheckAnt()V

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 187
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->ReadParam()V

    .line 188
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->ReadInformation()V

    .line 189
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->ReadFocus()V

    .line 190
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->ReadProfile()V

    .line 191
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->ReadCheckAnt()V

    goto :goto_1

    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 195
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->ReadParam()V

    .line 196
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->ReadInformation()V

    .line 197
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanView;->ReadProfile()V

    :cond_5
    :goto_1
    return-void
.end method
