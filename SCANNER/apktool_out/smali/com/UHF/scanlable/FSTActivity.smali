.class public Lcom/UHF/scanlable/FSTActivity;
.super Landroid/app/Activity;
.source "FSTActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field ShowButton:Landroid/widget/Button;

.field TranButton:Landroid/widget/Button;

.field TranData:[B

.field handler:Landroid/os/Handler;

.field mThread:Ljava/lang/Thread;

.field selectButton:Landroid/widget/Button;

.field private spada_epc:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field spepc:Landroid/widget/Spinner;

.field tvResult:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/UHF/scanlable/FSTActivity;->TranData:[B

    .line 44
    iput-object v0, p0, Lcom/UHF/scanlable/FSTActivity;->mThread:Ljava/lang/Thread;

    return-void
.end method

.method private SendMessage(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "msgdata",
            "mtype"
        }
    .end annotation

    .line 307
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 308
    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 310
    iget-object v0, p0, Lcom/UHF/scanlable/FSTActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 311
    iput p2, v0, Landroid/os/Message;->what:I

    .line 312
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 313
    iget-object p1, p0, Lcom/UHF/scanlable/FSTActivity;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private TranImage()Z
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x17

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ge v3, v4, :cond_3

    const/16 v2, 0xc8

    new-array v4, v2, [B

    .line 206
    iget-object v7, p0, Lcom/UHF/scanlable/FSTActivity;->TranData:[B

    mul-int/lit16 v8, v3, 0xc8

    invoke-static {v7, v8, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shr-int/lit8 v2, v8, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    and-int/lit16 v2, v8, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    .line 212
    sget-object v7, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    const/16 v8, -0x38

    invoke-virtual {v7, v8, v0, v4}, Lcom/rfid/trans/ReaderHelp;->FST_TranImage(B[B[B)I

    move-result v7

    if-nez v7, :cond_0

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6587\u4ef6\u5df2\u4f20\u8f93: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x1

    mul-int/lit8 v5, v5, 0x64

    div-int/lit8 v5, v5, 0x18

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\uff05"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-direct {p0, v2, v6}, Lcom/UHF/scanlable/FSTActivity;->SendMessage(Ljava/lang/String;I)V

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move-object v2, v4

    goto :goto_0

    :cond_3
    const/16 v3, 0x11

    aput-byte v3, v0, v1

    const/4 v3, -0x8

    aput-byte v3, v0, v6

    .line 230
    iget-object v3, p0, Lcom/UHF/scanlable/FSTActivity;->TranData:[B

    const/16 v4, 0x11f8

    const/16 v7, 0x88

    invoke-static {v3, v4, v2, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_5

    .line 233
    sget-object v4, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    const/16 v7, -0x78

    invoke-virtual {v4, v7, v0, v2}, Lcom/rfid/trans/ReaderHelp;->FST_TranImage(B[B[B)I

    move-result v4

    if-nez v4, :cond_4

    const-string v0, "\u6587\u4ef6\u5df2\u4f20\u8f93: 100\uff05"

    .line 237
    invoke-direct {p0, v0, v6}, Lcom/UHF/scanlable/FSTActivity;->SendMessage(Ljava/lang/String;I)V

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return v1
.end method

.method static synthetic access$000(Lcom/UHF/scanlable/FSTActivity;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/UHF/scanlable/FSTActivity;->TranImage()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/UHF/scanlable/FSTActivity;Ljava/lang/String;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/UHF/scanlable/FSTActivity;->SendMessage(Ljava/lang/String;I)V

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f080079

    .line 79
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/FSTActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/UHF/scanlable/FSTActivity;->spepc:Landroid/widget/Spinner;

    const v0, 0x7f080078

    .line 80
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/FSTActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/UHF/scanlable/FSTActivity;->tvResult:Landroid/widget/TextView;

    const v0, 0x7f080044

    .line 84
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/FSTActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/UHF/scanlable/FSTActivity;->selectButton:Landroid/widget/Button;

    const v0, 0x7f080046

    .line 85
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/FSTActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/UHF/scanlable/FSTActivity;->TranButton:Landroid/widget/Button;

    const v0, 0x7f080045

    .line 86
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/FSTActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/UHF/scanlable/FSTActivity;->ShowButton:Landroid/widget/Button;

    .line 87
    iget-object v0, p0, Lcom/UHF/scanlable/FSTActivity;->selectButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/UHF/scanlable/FSTActivity;->TranButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/UHF/scanlable/FSTActivity;->ShowButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public checkAndRequestPermission()V
    .locals 3

    .line 244
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 247
    invoke-virtual {p0, v1}, Lcom/UHF/scanlable/FSTActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 255
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 256
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v0, 0x1

    .line 257
    invoke-static {p0, v1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    const-string v0, "\u56fe\u7247\u9009\u62e9\u5931\u8d25"

    .line 265
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x65

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_2

    .line 267
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 268
    array-length p2, p1

    const/4 p3, 0x2

    if-lt p2, p3, :cond_2

    const/4 p2, 0x1

    .line 269
    aget-object p1, p1, p2

    .line 270
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    :try_start_0
    new-instance p1, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 277
    new-instance p3, Ljava/io/BufferedReader;

    invoke-direct {p3, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    move-object v2, v1

    .line 280
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 281
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v2, "\\+"

    .line 282
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V

    .line 286
    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V

    .line 287
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 288
    invoke-static {v2}, Lcom/UHF/scanlable/Util;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/UHF/scanlable/FSTActivity;->TranData:[B

    const-string p1, "\u56fe\u7247\u5df2\u9009\u62e9"

    .line 289
    invoke-direct {p0, p1, p2}, Lcom/UHF/scanlable/FSTActivity;->SendMessage(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 295
    invoke-direct {p0, v0, p2}, Lcom/UHF/scanlable/FSTActivity;->SendMessage(Ljava/lang/String;I)V

    .line 296
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 292
    invoke-direct {p0, v0, p2}, Lcom/UHF/scanlable/FSTActivity;->SendMessage(Ljava/lang/String;I)V

    .line 293
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/UHF/scanlable/FSTActivity;->selectButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 121
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    .line 122
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "text/plain"

    .line 123
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.OPENABLE"

    .line 124
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "\u9009\u62e9\u6587\u4ef6"

    .line 125
    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x65

    invoke-virtual {p0, p1, v0}, Lcom/UHF/scanlable/FSTActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/UHF/scanlable/FSTActivity;->TranButton:Landroid/widget/Button;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 129
    iget-object p1, p0, Lcom/UHF/scanlable/FSTActivity;->TranData:[B

    if-eqz p1, :cond_2

    array-length p1, p1

    const/16 v2, 0x1280

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    iget-object p1, p0, Lcom/UHF/scanlable/FSTActivity;->mThread:Ljava/lang/Thread;

    if-nez p1, :cond_6

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 137
    iget-object p1, p0, Lcom/UHF/scanlable/FSTActivity;->ShowButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 138
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/UHF/scanlable/FSTActivity$2;

    invoke-direct {v0, p0}, Lcom/UHF/scanlable/FSTActivity$2;-><init>(Lcom/UHF/scanlable/FSTActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/UHF/scanlable/FSTActivity;->mThread:Ljava/lang/Thread;

    .line 154
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 131
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/UHF/scanlable/FSTActivity;->tvResult:Landroid/widget/TextView;

    const-string v0, "\u6ca1\u6709\u9009\u62e9\u6587\u4ef6"

    invoke-static {v0, p1}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    return-void

    .line 157
    :cond_3
    iget-object v2, p0, Lcom/UHF/scanlable/FSTActivity;->ShowButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_6

    .line 159
    iget-object p1, p0, Lcom/UHF/scanlable/FSTActivity;->mThread:Ljava/lang/Thread;

    if-nez p1, :cond_6

    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 162
    iget-object p1, p0, Lcom/UHF/scanlable/FSTActivity;->ShowButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 p1, 0x0

    .line 165
    iget-object v0, p0, Lcom/UHF/scanlable/FSTActivity;->spepc:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 166
    iget-object v0, p0, Lcom/UHF/scanlable/FSTActivity;->spepc:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, ""

    .line 167
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 169
    invoke-static {v0}, Lcom/UHF/scanlable/Util;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 172
    :cond_5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/UHF/scanlable/FSTActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/UHF/scanlable/FSTActivity$3;-><init>(Lcom/UHF/scanlable/FSTActivity;[B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/UHF/scanlable/FSTActivity;->mThread:Ljava/lang/Thread;

    .line 193
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_6
    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001e

    .line 48
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/FSTActivity;->setContentView(I)V

    .line 49
    invoke-direct {p0}, Lcom/UHF/scanlable/FSTActivity;->initView()V

    .line 50
    invoke-virtual {p0}, Lcom/UHF/scanlable/FSTActivity;->checkAndRequestPermission()V

    .line 52
    new-instance p1, Lcom/UHF/scanlable/FSTActivity$1;

    invoke-direct {p1, p0}, Lcom/UHF/scanlable/FSTActivity$1;-><init>(Lcom/UHF/scanlable/FSTActivity;)V

    iput-object p1, p0, Lcom/UHF/scanlable/FSTActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 322
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 326
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_3

    .line 327
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 329
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_2

    .line 330
    aget v2, p3, v1

    if-eqz v2, :cond_1

    .line 332
    aget-object v2, p2, v1

    .line 333
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 335
    :cond_1
    aget-object v2, p2, v1

    .line 336
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    :cond_3
    :goto_2
    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 96
    sget-object v0, Lcom/UHF/scanlable/ScanMode;->mlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 97
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 99
    :goto_0
    sget-object v4, Lcom/UHF/scanlable/ScanMode;->mlist:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 100
    sget-object v4, Lcom/UHF/scanlable/ScanMode;->mlist:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 101
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    :cond_0
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v3, p0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/UHF/scanlable/FSTActivity;->spada_epc:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    .line 108
    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 109
    iget-object v1, p0, Lcom/UHF/scanlable/FSTActivity;->spepc:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/UHF/scanlable/FSTActivity;->spada_epc:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    if-lez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/UHF/scanlable/FSTActivity;->spepc:Landroid/widget/Spinner;

    invoke-virtual {v0, v2, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 114
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
