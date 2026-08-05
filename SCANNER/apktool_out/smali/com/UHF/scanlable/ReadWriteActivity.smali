.class public Lcom/UHF/scanlable/ReadWriteActivity;
.super Landroid/app/Activity;
.source "ReadWriteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final CHECK_R_6B:I = 0x1

.field private static final CHECK_R_6C:I = 0x3

.field private static final CHECK_W_6B:I = 0x0

.field private static final CHECK_W_6C:I = 0x2


# instance fields
.field b_addr:Landroid/widget/EditText;

.field b_id:Landroid/widget/EditText;

.field b_num:Landroid/widget/EditText;

.field btKill:Landroid/widget/Button;

.field btLed:Landroid/widget/Button;

.field btLock:Landroid/widget/Button;

.field btWriteEPC:Landroid/widget/Button;

.field c_kwd:Landroid/widget/EditText;

.field c_len:Landroid/widget/EditText;

.field c_mem:Landroid/widget/Spinner;

.field c_ptr:Landroid/widget/EditText;

.field c_pwd:Landroid/widget/EditText;

.field c_wordPtr:Landroid/widget/EditText;

.field content:Landroid/widget/EditText;

.field edENum0:Landroid/widget/EditText;

.field epcText:Landroid/widget/TextView;

.field lock_mem:Landroid/widget/Spinner;

.field lock_type:Landroid/widget/Spinner;

.field private mode:I

.field rButton:Landroid/widget/Button;

.field readContent:Landroid/widget/EditText;

.field selectedEd:I

.field selectedWhenPause:I

.field tvResult:Landroid/widget/TextView;

.field u9lock:Landroid/widget/CheckBox;

.field wButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x3

    .line 47
    iput v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->selectedEd:I

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->selectedWhenPause:I

    return-void
.end method

.method private charToByte(C)B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    const-string v0, "0123456789ABCDEF"

    .line 388
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method private checkContent(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "check"
        }
    .end annotation

    const/4 v0, 0x2

    const v1, 0x7f0d00c7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    goto/16 :goto_0

    .line 335
    :cond_0
    iget-object p1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->content:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/UHF/scanlable/Util;->isEtEmpty(Landroid/widget/EditText;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0d006a

    invoke-static {p0, p1}, Lcom/UHF/scanlable/Util;->showWarning(Landroid/content/Context;I)Z

    move-result p1

    return p1

    .line 336
    :cond_1
    iget-object p1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->content:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    rem-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    const p1, 0x7f0d0089

    .line 337
    invoke-static {p0, p1}, Lcom/UHF/scanlable/Util;->showWarning(Landroid/content/Context;I)Z

    move-result p1

    return p1

    .line 338
    :cond_2
    iget-object p1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->content:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/UHF/scanlable/Util;->isLenLegal(Landroid/widget/EditText;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 339
    invoke-static {p0, v1}, Lcom/UHF/scanlable/Util;->showWarning(Landroid/content/Context;I)Z

    move-result p1

    return p1

    .line 340
    :cond_3
    iget-object p1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->c_pwd:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/UHF/scanlable/Util;->isLenLegal(Landroid/widget/EditText;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 341
    invoke-static {p0, v1}, Lcom/UHF/scanlable/Util;->showWarning(Landroid/content/Context;I)Z

    move-result p1

    return p1

    .line 343
    :cond_4
    iget-object p1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->c_wordPtr:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/UHF/scanlable/Util;->isEtEmpty(Landroid/widget/EditText;)Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f0d00fb

    invoke-static {p0, p1}, Lcom/UHF/scanlable/Util;->showWarning(Landroid/content/Context;I)Z

    move-result p1

    return p1

    .line 344
    :cond_5
    iget-object p1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->c_len:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/UHF/scanlable/Util;->isEtEmpty(Landroid/widget/EditText;)Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f0d008a

    invoke-static {p0, p1}, Lcom/UHF/scanlable/Util;->showWarning(Landroid/content/Context;I)Z

    move-result p1

    return p1

    .line 345
    :cond_6
    iget-object p1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->c_pwd:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/UHF/scanlable/Util;->isEtEmpty(Landroid/widget/EditText;)Z

    move-result p1

    if-eqz p1, :cond_7

    const p1, 0x7f0d00b0

    invoke-static {p0, p1}, Lcom/UHF/scanlable/Util;->showWarning(Landroid/content/Context;I)Z

    move-result p1

    return p1

    .line 347
    :cond_7
    iget-object p1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->c_pwd:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/UHF/scanlable/Util;->isLenLegal(Landroid/widget/EditText;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 348
    invoke-static {p0, v1}, Lcom/UHF/scanlable/Util;->showWarning(Landroid/content/Context;I)Z

    move-result p1

    return p1

    :cond_8
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private initView()V
    .locals 5

    const v0, 0x7f080067

    .line 112
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ReadWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->epcText:Landroid/widget/TextView;

    const v0, 0x7f0800c2

    .line 113
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ReadWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->tvResult:Landroid/widget/TextView;

    const v0, 0x7f0800a3

    .line 114
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ReadWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->c_mem:Landroid/widget/Spinner;

    const v0, 0x7f02000e

    const v1, 0x1090008

    .line 115
    invoke-static {p0, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    const v2, 0x1090009

    .line 116
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 117
    iget-object v3, p0, Lcom/UHF/scanlable/ReadWriteActivity;->c_mem:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 118
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->c_mem:Landroid/widget/Spinner;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 119
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->c_mem:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f08009f

    .line 121
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ReadWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->lock_mem:Landroid/widget/Spinner;

    const v0, 0x7f020005

    .line 122
    invoke-static {p0, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 123
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 124
    iget-object v3, p0, Lcom/UHF/scanlable/ReadWriteActivity;->lock_mem:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 125
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->lock_mem:Landroid/widget/Spinner;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/widget/Spinner;->setSelection(IZ)V

    const v0, 0x7f0800a0

    .line 127
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ReadWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->lock_type:Landroid/widget/Spinner;

    const v0, 0x7f020004

    .line 128
    invoke-static {p0, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 129
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 130
    iget-object v1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->lock_type:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 131
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->lock_type:Landroid/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/widget/Spinner;->setSelection(IZ)V

    const v0, 0x7f080053

    .line 132
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ReadWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->u9lock:Landroid/widget/CheckBox;

    const v0, 0x7f080070

    .line 136
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ReadWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->c_wordPtr:Landroid/widget/EditText;

    const-string v1, "0"

    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08006d

    .line 138
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ReadWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->c_len:Landroid/widget/EditText;

    const-string v1, "6"

    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08006e

    .line 140
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ReadWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->c_pwd:Landroid/widget/EditText;

    const-string v1, "00000000"

    .line 141
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08006b

    .line 142
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ReadWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->c_kwd:Landroid/widget/EditText;

    const v0, 0x7f080069

    .line 143
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ReadWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->content:Landroid/widget/EditText;

    const v0, 0x7f08006f

    .line 144
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ReadWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->readContent:Landroid/widget/EditText;

    const v0, 0x7f08004a

    .line 145
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ReadWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->rButton:Landroid/widget/Button;

    const v0, 0x7f08004b

    .line 146
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ReadWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->wButton:Landroid/widget/Button;

    const v0, 0x7f08004c

    .line 147
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ReadWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->btWriteEPC:Landroid/widget/Button;

    const v0, 0x7f080047

    .line 148
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ReadWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->btKill:Landroid/widget/Button;

    const v0, 0x7f080049

    .line 149
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ReadWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->btLock:Landroid/widget/Button;

    const v0, 0x7f080048

    .line 150
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ReadWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->btLed:Landroid/widget/Button;

    .line 151
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->rButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->wButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->btWriteEPC:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->btKill:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->btLock:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->btLed:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bytesToHexString([BII)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "offset",
            "length"
        }
    .end annotation

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 359
    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-ge p2, p3, :cond_2

    .line 363
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    .line 364
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 366
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 370
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public hexStringToBytes(Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hexString"
        }
    .end annotation

    if-eqz p1, :cond_2

    const-string v0, ""

    .line 374
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 377
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 378
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 379
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 380
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    mul-int/lit8 v3, v2, 0x2

    .line 383
    aget-char v4, p1, v3

    invoke-direct {p0, v4}, Lcom/UHF/scanlable/ReadWriteActivity;->charToByte(C)B

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-char v3, p1, v3

    invoke-direct {p0, v3}, Lcom/UHF/scanlable/ReadWriteActivity;->charToByte(C)B

    move-result v3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->wButton:Landroid/widget/Button;

    const v1, 0x7f0d00fd

    const/4 v2, 0x2

    const v3, 0x7f0d00fc

    const-string v4, ""

    if-ne p1, v0, :cond_4

    .line 164
    invoke-direct {p0, v2}, Lcom/UHF/scanlable/ReadWriteActivity;->checkContent(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 168
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->epcText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 170
    iget-object p1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->epcText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    move-object v7, v4

    .line 172
    iget-object p1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->content:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 173
    :cond_2
    iget-object p1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->c_mem:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    int-to-byte v8, p1

    .line 174
    iget-object p1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->c_wordPtr:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-byte v9, p1

    .line 175
    iget-object p1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->c_pwd:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 176
    iget-object p1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->content:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 177
    sget-object v5, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual/range {v5 .. v10}, Lcom/rfid/trans/ReaderHelp;->WriteData_G2(Ljava/lang/String;Ljava/lang/String;BILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 180
    invoke-virtual {p0, v3}, Lcom/UHF/scanlable/ReadWriteActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto/16 :goto_5

    .line 183
    :cond_3
    invoke-virtual {p0, v1}, Lcom/UHF/scanlable/ReadWriteActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 186
    :catch_0
    invoke-virtual {p0, v3}, Lcom/UHF/scanlable/ReadWriteActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto/16 :goto_5

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->rButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_8

    const/4 p1, 0x3

    .line 190
    invoke-direct {p0, p1}, Lcom/UHF/scanlable/ReadWriteActivity;->checkContent(I)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    const p1, 0x7f0d007d

    .line 195
    :try_start_1
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->epcText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 197
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->epcText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_6
    move-object v6, v4

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->c_mem:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    int-to-byte v7, v0

    .line 200
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->c_len:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-byte v9, v0

    .line 201
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->c_wordPtr:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 202
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->c_pwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 203
    sget-object v5, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual/range {v5 .. v10}, Lcom/rfid/trans/ReaderHelp;->ReadData_G2(Ljava/lang/String;BIBLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 206
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->readContent:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ReadWriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->tvResult:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto/16 :goto_5

    .line 210
    :cond_7
    iget-object v1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->readContent:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d007e

    .line 211
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ReadWriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->tvResult:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    .line 215
    :catch_1
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ReadWriteActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto/16 :goto_5

    .line 218
    :cond_8
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->btWriteEPC:Landroid/widget/Button;

    if-ne p1, v0, :cond_b

    .line 220
    invoke-direct {p0, v2}, Lcom/UHF/scanlable/ReadWriteActivity;->checkContent(I)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 223
    :cond_9
    :try_start_2
    iget-object p1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->c_pwd:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 224
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->content:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    sget-object v2, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v2, v0, p1}, Lcom/rfid/trans/ReaderHelp;->WriteEPC_G2(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_a

    .line 228
    invoke-virtual {p0, v3}, Lcom/UHF/scanlable/ReadWriteActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto/16 :goto_5

    .line 231
    :cond_a
    invoke-virtual {p0, v1}, Lcom/UHF/scanlable/ReadWriteActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_5

    .line 234
    :catch_2
    invoke-virtual {p0, v3}, Lcom/UHF/scanlable/ReadWriteActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto/16 :goto_5

    .line 236
    :cond_b
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->btKill:Landroid/widget/Button;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_10

    const p1, 0x7f0d0087

    .line 240
    :try_start_3
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->c_kwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 241
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_c

    goto :goto_1

    .line 242
    :cond_c
    invoke-static {v0}, Lcom/UHF/scanlable/Util;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x0

    .line 245
    iget-object v3, p0, Lcom/UHF/scanlable/ReadWriteActivity;->epcText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 247
    iget-object v3, p0, Lcom/UHF/scanlable/ReadWriteActivity;->epcText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 249
    :cond_d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    new-array v1, v1, [B

    .line 251
    sget-object v4, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v4, v3, v2, v0, v1}, Lcom/rfid/trans/ReaderHelp;->Kill_G2(B[B[B[B)I

    move-result v0

    if-eqz v0, :cond_e

    .line 253
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ReadWriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->tvResult:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto/16 :goto_5

    :cond_e
    const v0, 0x7f0d0088

    .line 256
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ReadWriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->tvResult:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_5

    :cond_f
    :goto_1
    return-void

    .line 259
    :catch_3
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ReadWriteActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto/16 :goto_5

    .line 261
    :cond_10
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->btLock:Landroid/widget/Button;

    if-ne p1, v0, :cond_14

    const p1, 0x7f0d0090

    .line 265
    :try_start_4
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->c_pwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    .line 268
    invoke-static {v0}, Lcom/UHF/scanlable/Util;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 269
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->epcText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 271
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->epcText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 273
    :cond_11
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    int-to-byte v6, v0

    new-array v11, v1, [B

    .line 275
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->lock_mem:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    int-to-byte v0, v0

    .line 276
    iget-object v1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->lock_type:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    int-to-byte v1, v1

    .line 277
    iget-object v2, p0, Lcom/UHF/scanlable/ReadWriteActivity;->u9lock:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_12

    const/4 v8, -0x1

    const/4 v9, -0x1

    goto :goto_2

    :cond_12
    move v8, v0

    move v9, v1

    .line 282
    :goto_2
    sget-object v5, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual/range {v5 .. v11}, Lcom/rfid/trans/ReaderHelp;->Lock_G2(B[BBB[B[B)I

    move-result v0

    if-eqz v0, :cond_13

    .line 284
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ReadWriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->tvResult:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto/16 :goto_5

    :cond_13
    const v0, 0x7f0d0091

    .line 287
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ReadWriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->tvResult:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    .line 290
    :catch_4
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ReadWriteActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto :goto_5

    .line 292
    :cond_14
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->btLed:Landroid/widget/Button;

    if-ne p1, v0, :cond_19

    const/16 p1, 0x30

    const v0, 0x7f0d000c

    .line 296
    :try_start_5
    iget-object v1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->c_pwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    iget-object v2, p0, Lcom/UHF/scanlable/ReadWriteActivity;->epcText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 300
    iget-object v2, p0, Lcom/UHF/scanlable/ReadWriteActivity;->epcText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_15
    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x5

    if-ge v2, v3, :cond_17

    .line 304
    sget-object p1, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    const/4 v3, 0x7

    invoke-virtual {p1, v4, v1, v3}, Lcom/rfid/trans/ReaderHelp;->LedOn_kx2005x(Ljava/lang/String;Ljava/lang/String;B)I

    move-result p1

    if-nez p1, :cond_16

    goto :goto_4

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_17
    :goto_4
    if-eqz p1, :cond_18

    .line 308
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ReadWriteActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    goto :goto_5

    :cond_18
    const p1, 0x7f0d000d

    .line 311
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ReadWriteActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/UHF/scanlable/ReadWriteActivity;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    .line 315
    :catch_5
    invoke-virtual {p0, v0}, Lcom/UHF/scanlable/ReadWriteActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->tvResult:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/UHF/scanlable/Reader;->writelog(Ljava/lang/String;Landroid/widget/TextView;)V

    :cond_19
    :goto_5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/UHF/scanlable/ReadWriteActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0a002b

    .line 87
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/ReadWriteActivity;->setContentView(I)V

    .line 88
    invoke-direct {p0}, Lcom/UHF/scanlable/ReadWriteActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1",
            "position",
            "arg3"
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

    .line 323
    iput p3, p0, Lcom/UHF/scanlable/ReadWriteActivity;->selectedEd:I

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/UHF/scanlable/ReadWriteActivity;->epcText:Landroid/widget/TextView;

    sget-object v1, Lcom/UHF/scanlable/ScanMode;->epc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
