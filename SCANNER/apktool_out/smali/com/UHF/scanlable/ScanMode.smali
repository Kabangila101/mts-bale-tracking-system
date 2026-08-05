.class public Lcom/UHF/scanlable/ScanMode;
.super Landroid/app/Activity;
.source "ScanMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/UHF/scanlable/ScanMode$MsgCallback;,
        Lcom/UHF/scanlable/ScanMode$RgInventoryCheckedListener;,
        Lcom/UHF/scanlable/ScanMode$FilterLed;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_LISTVIEW:I = 0x0

.field private static final MSG_UPDATE_SPEED:I = 0x2

.field private static final MSG_UPDATE_STOP:I = 0x3

.field private static final MSG_UPDATE_TIME:I = 0x1

.field public static epc:Ljava/lang/String;

.field public static ledlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static runtime:I


# instance fields
.field BtClear:Landroid/widget/Button;

.field BtInventory:Landroid/widget/Button;

.field Btfilter:Landroid/widget/Button;

.field Btimport:Landroid/widget/Button;

.field public CardNumber:J

.field LvTags:Landroid/widget/ListView;

.field RbInventoryLoop:Landroid/widget/RadioButton;

.field RbInventorySingle:Landroid/widget/RadioButton;

.field RgInventory:Landroid/widget/RadioGroup;

.field adapter:Landroid/widget/SimpleAdapter;

.field public beginTime:J

.field callback:Lcom/UHF/scanlable/ScanMode$MsgCallback;

.field chk:[Z

.field chkled:Landroid/widget/CheckBox;

.field handler:Landroid/os/Handler;

.field private inventoryFlag:I

.field public isStopThread:Z

.field items:[Ljava/lang/String;

.field public keyPress:Z

.field public lastCount:I

.field public lastTime:J

.field private llContinuous:Landroid/widget/LinearLayout;

.field lvjzwOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field lyoutled:Landroid/widget/LinearLayout;

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field popFilter:Landroid/widget/PopupWindow;

.field private spfactory:Landroid/widget/Spinner;

.field private tagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private timer:Ljava/util/Timer;

.field tv_alltag:Landroid/widget/TextView;

.field tv_count:Landroid/widget/TextView;

.field tv_speed:Landroid/widget/TextView;

.field tv_time:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/UHF/scanlable/ScanMode;->mlist:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/UHF/scanlable/ScanMode;->ledlist:Ljava/util/List;

    const/4 v0, 0x0

    .line 110
    sput v0, Lcom/UHF/scanlable/ScanMode;->runtime:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 63
    iput v0, p0, Lcom/UHF/scanlable/ScanMode;->inventoryFlag:I

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/UHF/scanlable/ScanMode;->items:[Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/UHF/scanlable/ScanMode;->chk:[Z

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/UHF/scanlable/ScanMode;->isStopThread:Z

    .line 92
    new-instance v1, Lcom/UHF/scanlable/ScanMode$MsgCallback;

    invoke-direct {v1, p0}, Lcom/UHF/scanlable/ScanMode$MsgCallback;-><init>(Lcom/UHF/scanlable/ScanMode;)V

    iput-object v1, p0, Lcom/UHF/scanlable/ScanMode;->callback:Lcom/UHF/scanlable/ScanMode$MsgCallback;

    const-wide/16 v1, 0x0

    .line 101
    iput-wide v1, p0, Lcom/UHF/scanlable/ScanMode;->lastTime:J

    .line 102
    iput v0, p0, Lcom/UHF/scanlable/ScanMode;->lastCount:I

    .line 103
    iput-boolean v0, p0, Lcom/UHF/scanlable/ScanMode;->keyPress:Z

    .line 588
    new-instance v0, Lcom/UHF/scanlable/ScanMode$4;

    invoke-direct {v0, p0}, Lcom/UHF/scanlable/ScanMode$4;-><init>(Lcom/UHF/scanlable/ScanMode;)V

    iput-object v0, p0, Lcom/UHF/scanlable/ScanMode;->lvjzwOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    return-void
.end method

.method static synthetic access$000(Lcom/UHF/scanlable/ScanMode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/UHF/scanlable/ScanMode;->addEPCToList(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/UHF/scanlable/ScanMode;)Ljava/util/Timer;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/UHF/scanlable/ScanMode;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$102(Lcom/UHF/scanlable/ScanMode;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/UHF/scanlable/ScanMode;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/UHF/scanlable/ScanMode;->setViewEnabled(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/UHF/scanlable/ScanMode;)Ljava/util/ArrayList;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/UHF/scanlable/ScanMode;->tagList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$402(Lcom/UHF/scanlable/ScanMode;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/UHF/scanlable/ScanMode;->inventoryFlag:I

    return p1
.end method

.method static synthetic access$500(Lcom/UHF/scanlable/ScanMode;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanMode;->stopInventory()V

    return-void
.end method

.method private addEPCToList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rfid",
            "rssi"
        }
    .end annotation

    .line 301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ","

    .line 303
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 304
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 306
    aget-object v0, p1, v1

    goto :goto_0

    .line 310
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EPC:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\nMem:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    :goto_0
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ScanMode;->checkIsExist(Ljava/lang/String;)I

    move-result v3

    .line 314
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/UHF/scanlable/ScanMode;->map:Ljava/util/HashMap;

    const-string v5, "tagUii"

    .line 316
    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->map:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "tagCount"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->map:Ljava/util/HashMap;

    const-string v4, "tagRssi"

    invoke-virtual {v0, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-wide v6, p0, Lcom/UHF/scanlable/ScanMode;->CardNumber:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/UHF/scanlable/ScanMode;->CardNumber:J

    const/4 p2, -0x1

    if-ne v3, p2, :cond_1

    .line 321
    iget-object p2, p0, Lcom/UHF/scanlable/ScanMode;->tagList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->map:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object p2, p0, Lcom/UHF/scanlable/ScanMode;->LvTags:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 323
    iget-object p2, p0, Lcom/UHF/scanlable/ScanMode;->tv_count:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/UHF/scanlable/ScanMode;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v2}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    sget-object p2, Lcom/UHF/scanlable/ScanMode;->mlist:Ljava/util/List;

    aget-object p1, p1, v1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 326
    :cond_1
    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode;->tagList:Ljava/util/ArrayList;

    .line 327
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 p2, 0xa

    .line 326
    invoke-static {p1, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    add-int/2addr p1, v2

    .line 329
    iget-object p2, p0, Lcom/UHF/scanlable/ScanMode;->map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode;->tagList:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/UHF/scanlable/ScanMode;->map:Ljava/util/HashMap;

    invoke-virtual {p1, v3, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 334
    :goto_1
    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode;->tv_alltag:Landroid/widget/TextView;

    iget-wide v0, p0, Lcom/UHF/scanlable/ScanMode;->CardNumber:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {p1}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private clearData()V
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->tv_count:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->tv_time:Landroid/widget/TextView;

    const-string v2, "00:00:00"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->tv_alltag:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->tv_speed:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 287
    sget-object v0, Lcom/UHF/scanlable/ScanMode;->mlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/16 v0, 0x0

    .line 288
    iput-wide v0, p0, Lcom/UHF/scanlable/ScanMode;->CardNumber:J

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/UHF/scanlable/ScanMode;->items:[Ljava/lang/String;

    .line 290
    iput-object v0, p0, Lcom/UHF/scanlable/ScanMode;->chk:[Z

    .line 291
    sget-object v0, Lcom/UHF/scanlable/ScanMode;->ledlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tagList.size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/UHF/scanlable/ScanMode;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MY"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private readTag()V
    .locals 8

    const-string v0, ""

    .line 448
    sput-object v0, Lcom/UHF/scanlable/ScanMode;->epc:Ljava/lang/String;

    .line 449
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->BtInventory:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f0d0055

    invoke-virtual {p0, v1}, Lcom/UHF/scanlable/ScanMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 451
    iget v0, p0, Lcom/UHF/scanlable/ScanMode;->inventoryFlag:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->chkled:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 465
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->spfactory:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v3, 0x0

    .line 467
    sget-object v4, Lcom/UHF/scanlable/ScanMode;->ledlist:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 469
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 470
    :goto_0
    sget-object v5, Lcom/UHF/scanlable/ScanMode;->ledlist:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 472
    new-instance v5, Lcom/rfid/trans/MaskClass;

    invoke-direct {v5}, Lcom/rfid/trans/MaskClass;-><init>()V

    .line 473
    iget-object v6, v5, Lcom/rfid/trans/MaskClass;->MaskAdr:[B

    aput-byte v2, v6, v2

    .line 474
    iget-object v6, v5, Lcom/rfid/trans/MaskClass;->MaskAdr:[B

    const/16 v7, 0x20

    aput-byte v7, v6, v1

    .line 475
    iput-byte v1, v5, Lcom/rfid/trans/MaskClass;->MaskMem:B

    .line 476
    sget-object v6, Lcom/UHF/scanlable/ScanMode;->ledlist:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    int-to-byte v6, v6

    iput-byte v6, v5, Lcom/rfid/trans/MaskClass;->MaskLen:B

    .line 477
    sget-object v6, Lcom/UHF/scanlable/ScanMode;->ledlist:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/UHF/scanlable/Util;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, v5, Lcom/rfid/trans/MaskClass;->MaskData:[B

    .line 478
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 481
    :cond_1
    sget-object v1, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v1, v0, v3}, Lcom/rfid/trans/ReaderHelp;->StartInventoryLed(ILjava/util/List;)I

    move-result v0

    goto :goto_1

    .line 485
    :cond_2
    sget-object v0, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v0}, Lcom/rfid/trans/ReaderHelp;->StartRead()I

    move-result v0

    :goto_1
    if-nez v0, :cond_5

    .line 488
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->Btfilter:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/UHF/scanlable/ScanMode;->lastTime:J

    .line 490
    iput v2, p0, Lcom/UHF/scanlable/ScanMode;->lastCount:I

    .line 491
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->BtInventory:Landroid/widget/Button;

    const v1, 0x7f0d00e7

    invoke-virtual {p0, v1}, Lcom/UHF/scanlable/ScanMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 492
    invoke-direct {p0, v2}, Lcom/UHF/scanlable/ScanMode;->setViewEnabled(Z)V

    .line 493
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->timer:Ljava/util/Timer;

    if-nez v0, :cond_5

    .line 494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/UHF/scanlable/ScanMode;->beginTime:J

    .line 495
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/UHF/scanlable/ScanMode;->timer:Ljava/util/Timer;

    .line 496
    new-instance v3, Lcom/UHF/scanlable/ScanMode$3;

    invoke-direct {v3, p0}, Lcom/UHF/scanlable/ScanMode$3;-><init>(Lcom/UHF/scanlable/ScanMode;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xc8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_2

    .line 454
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 456
    sget-object v0, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v0}, Lcom/rfid/trans/ReaderHelp;->ScanRfid()V

    goto :goto_2

    .line 522
    :cond_4
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanMode;->stopInventory()V

    :cond_5
    :goto_2
    return-void
.end method

.method private setOpenScan523(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isopen"
        }
    .end annotation

    .line 346
    :try_start_0
    new-instance v0, Landroid/device/DeviceManager;

    invoke-direct {v0}, Landroid/device/DeviceManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "persist-persist.sys.scan.key"

    const-string v2, "0-"

    const-string v3, "persist-persist.sys.rfid.key"

    if-eqz p1, :cond_0

    .line 350
    :try_start_1
    invoke-virtual {v0, v3, v2}, Landroid/device/DeviceManager;->setSettingProperty(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "520-521-522-523-"

    .line 351
    invoke-virtual {v0, v1, p1}, Landroid/device/DeviceManager;->setSettingProperty(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 354
    :cond_0
    invoke-virtual {v0, v3, v2}, Landroid/device/DeviceManager;->setSettingProperty(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "520-521-522-"

    .line 355
    invoke-virtual {v0, v1, p1}, Landroid/device/DeviceManager;->setSettingProperty(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private setViewEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->RbInventorySingle:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 251
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->RbInventoryLoop:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 253
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->BtClear:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 254
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->chkled:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->Btfilter:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 258
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->BtInventory:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private stopInventory()V
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->chkled:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    sget-object v0, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v0}, Lcom/rfid/trans/ReaderHelp;->StopInventoryLed()V

    goto :goto_0

    .line 531
    :cond_0
    sget-object v0, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v0}, Lcom/rfid/trans/ReaderHelp;->StopRead()V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkIsExist(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strEPC"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 265
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 269
    :goto_0
    iget-object v2, p0, Lcom/UHF/scanlable/ScanMode;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 270
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 271
    iget-object v2, p0, Lcom/UHF/scanlable/ScanMode;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "tagUii"

    .line 272
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 273
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->BtInventory:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanMode;->readTag()V

    goto/16 :goto_0

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->BtClear:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 379
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanMode;->clearData()V

    goto/16 :goto_0

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->chkled:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 383
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 385
    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode;->lyoutled:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 389
    :cond_2
    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode;->lyoutled:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 392
    :cond_3
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->Btfilter:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 394
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d00d8

    .line 395
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ScanMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0d00c9

    .line 396
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ScanMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0d00d5

    .line 397
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ScanMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 400
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->items:[Ljava/lang/String;

    iget-object v1, p0, Lcom/UHF/scanlable/ScanMode;->chk:[Z

    new-instance v2, Lcom/UHF/scanlable/ScanMode$2;

    invoke-direct {v2, p0}, Lcom/UHF/scanlable/ScanMode$2;-><init>(Lcom/UHF/scanlable/ScanMode;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 422
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 424
    :cond_4
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->Btimport:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 426
    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode;->tagList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 427
    invoke-virtual {p0}, Lcom/UHF/scanlable/ScanMode;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0d0098

    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ScanMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_5
    const-string p1, ""

    .line 430
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->tagList:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/FileImport;->daochu(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 432
    invoke-virtual {p0}, Lcom/UHF/scanlable/ScanMode;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0d0097

    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ScanMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 437
    :cond_6
    invoke-virtual {p0}, Lcom/UHF/scanlable/ScanMode;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0d0096

    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ScanMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 443
    :catch_0
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanMode;->stopInventory()V

    :cond_7
    :goto_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 606
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 607
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 608
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 609
    iget-object v1, p0, Lcom/UHF/scanlable/ScanMode;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "tagUii"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/UHF/scanlable/ScanMode;->epc:Ljava/lang/String;

    .line 610
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 612
    sget-object p1, Lcom/UHF/scanlable/MainActivity;->myTabHost:Landroid/widget/TabHost;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 616
    :cond_0
    sget-object p1, Lcom/UHF/scanlable/MainActivity;->myTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/UHF/scanlable/ScanMode;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0a002a

    .line 120
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ScanMode;->setContentView(I)V

    const p1, 0x7f080054

    .line 121
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ScanMode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode;->chkled:Landroid/widget/CheckBox;

    .line 122
    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080091

    .line 123
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ScanMode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode;->lyoutled:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    .line 124
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p1, 0x7f0800e4

    .line 126
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ScanMode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode;->spfactory:Landroid/widget/Spinner;

    const p1, 0x7f020007

    const v0, 0x1090008

    .line 127
    invoke-static {p0, p1, v0}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p1

    const v0, 0x1090009

    .line 128
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 129
    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->spfactory:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 130
    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode;->spfactory:Landroid/widget/Spinner;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 132
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode;->tagList:Ljava/util/ArrayList;

    const p1, 0x7f080001

    .line 133
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ScanMode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode;->BtClear:Landroid/widget/Button;

    const p1, 0x7f080004

    .line 134
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ScanMode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode;->Btfilter:Landroid/widget/Button;

    const p1, 0x7f080002

    .line 135
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ScanMode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode;->Btimport:Landroid/widget/Button;

    const p1, 0x7f080105

    .line 136
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ScanMode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode;->tv_count:Landroid/widget/TextView;

    const p1, 0x7f080108

    .line 137
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ScanMode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode;->tv_time:Landroid/widget/TextView;

    const p1, 0x7f080103

    .line 138
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ScanMode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode;->tv_alltag:Landroid/widget/TextView;

    const p1, 0x7f080107

    .line 139
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ScanMode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode;->tv_speed:Landroid/widget/TextView;

    const p1, 0x7f08000c

    .line 140
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ScanMode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode;->RgInventory:Landroid/widget/RadioGroup;

    const p1, 0x7f08000b

    .line 142
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ScanMode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode;->RbInventorySingle:Landroid/widget/RadioButton;

    const p1, 0x7f08000a

    .line 143
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ScanMode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode;->RbInventoryLoop:Landroid/widget/RadioButton;

    const p1, 0x7f080003

    .line 145
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ScanMode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode;->BtInventory:Landroid/widget/Button;

    const p1, 0x7f080008

    .line 146
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ScanMode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode;->LvTags:Landroid/widget/ListView;

    .line 147
    iget-object v1, p0, Lcom/UHF/scanlable/ScanMode;->lvjzwOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    const p1, 0x7f08009e

    .line 148
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ScanMode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode;->llContinuous:Landroid/widget/LinearLayout;

    .line 150
    new-instance p1, Landroid/widget/SimpleAdapter;

    iget-object v3, p0, Lcom/UHF/scanlable/ScanMode;->tagList:Ljava/util/ArrayList;

    const v4, 0x7f0a0023

    const-string v1, "tagUii"

    const-string v2, "tagLen"

    const-string v5, "tagCount"

    const-string v6, "tagRssi"

    filled-new-array {v1, v2, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    new-array v6, v1, [I

    const v1, 0x7f080012

    aput v1, v6, v0

    const/4 v0, 0x1

    const v1, 0x7f080010

    aput v1, v6, v0

    const/4 v0, 0x2

    const v1, 0x7f08000f

    aput v1, v6, v0

    const/4 v0, 0x3

    const v1, 0x7f080011

    aput v1, v6, v0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode;->adapter:Landroid/widget/SimpleAdapter;

    .line 155
    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode;->Btfilter:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode;->BtClear:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode;->Btimport:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode;->RgInventory:Landroid/widget/RadioGroup;

    new-instance v0, Lcom/UHF/scanlable/ScanMode$RgInventoryCheckedListener;

    invoke-direct {v0, p0}, Lcom/UHF/scanlable/ScanMode$RgInventoryCheckedListener;-><init>(Lcom/UHF/scanlable/ScanMode;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 159
    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode;->BtInventory:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    sget-object p1, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->callback:Lcom/UHF/scanlable/ScanMode$MsgCallback;

    invoke-virtual {p1, v0}, Lcom/rfid/trans/ReaderHelp;->SetCallBack(Lcom/rfid/trans/TagCallback;)V

    .line 163
    iget-object p1, p0, Lcom/UHF/scanlable/ScanMode;->LvTags:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/UHF/scanlable/ScanMode;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanMode;->clearData()V

    const-string p1, "MY"

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UHFReadTagFragment.EtCountOfTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/UHF/scanlable/ScanMode;->tv_count:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance p1, Lcom/UHF/scanlable/ScanMode$1;

    invoke-direct {p1, p0}, Lcom/UHF/scanlable/ScanMode$1;-><init>(Lcom/UHF/scanlable/ScanMode;)V

    iput-object p1, p0, Lcom/UHF/scanlable/ScanMode;->handler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 634
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapterView",
            "view",
            "i",
            "l"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x20b

    if-ne p1, v1, :cond_0

    .line 642
    iget-boolean v1, p0, Lcom/UHF/scanlable/ScanMode;->keyPress:Z

    if-nez v1, :cond_0

    .line 644
    iput-boolean v0, p0, Lcom/UHF/scanlable/ScanMode;->keyPress:Z

    .line 645
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanMode;->readTag()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 648
    invoke-virtual {p0}, Lcom/UHF/scanlable/ScanMode;->finish()V

    return v0

    .line 651
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/16 v0, 0x20b

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 661
    iput-boolean v0, p0, Lcom/UHF/scanlable/ScanMode;->keyPress:Z

    .line 663
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 626
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    .line 627
    invoke-direct {p0, v0}, Lcom/UHF/scanlable/ScanMode;->setOpenScan523(Z)V

    .line 628
    invoke-direct {p0}, Lcom/UHF/scanlable/ScanMode;->stopInventory()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 364
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    .line 365
    invoke-direct {p0, v0}, Lcom/UHF/scanlable/ScanMode;->setOpenScan523(Z)V

    .line 366
    iput-boolean v0, p0, Lcom/UHF/scanlable/ScanMode;->isStopThread:Z

    return-void
.end method
