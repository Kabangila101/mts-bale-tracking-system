.class public Lcom/UHF/scanlable/MaskActivity;
.super Landroid/app/Activity;
.source "MaskActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field MaskData:Ljava/lang/String;

.field private btAdd:Landroid/widget/Button;

.field private btClear:Landroid/widget/Button;

.field private spMem:Landroid/widget/Spinner;

.field private spada_Mem:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private strMem:[Ljava/lang/String;

.field private tvAddr:Landroid/widget/EditText;

.field private tvData:Landroid/widget/EditText;

.field private tvLen:Landroid/widget/EditText;

.field txt_mask:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/UHF/scanlable/MaskActivity;->strMem:[Ljava/lang/String;

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/UHF/scanlable/MaskActivity;->MaskData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const-string v0, ","

    .line 56
    iget-object v1, p0, Lcom/UHF/scanlable/MaskActivity;->btAdd:Landroid/widget/Button;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_4

    .line 58
    iget-object p1, p0, Lcom/UHF/scanlable/MaskActivity;->tvAddr:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/UHF/scanlable/MaskActivity;->tvLen:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/UHF/scanlable/MaskActivity;->tvData:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const p1, 0x7f0d00cb

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/UHF/scanlable/MaskActivity;->tvAddr:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 61
    iget-object v3, p0, Lcom/UHF/scanlable/MaskActivity;->spMem:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 62
    iget-object v5, p0, Lcom/UHF/scanlable/MaskActivity;->tvLen:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 63
    iget-object v6, p0, Lcom/UHF/scanlable/MaskActivity;->tvData:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 64
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 65
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, v5, 0x7

    div-int/lit8 v8, v8, 0x8

    if-ge v7, v8, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/UHF/scanlable/MaskActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/MaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 74
    :cond_2
    new-instance v7, Lcom/rfid/trans/MaskClass;

    invoke-direct {v7}, Lcom/rfid/trans/MaskClass;-><init>()V

    .line 75
    invoke-static {v6}, Lcom/UHF/scanlable/Util;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v8

    iput-object v8, v7, Lcom/rfid/trans/MaskClass;->MaskData:[B

    .line 76
    iget-object v8, v7, Lcom/rfid/trans/MaskClass;->MaskAdr:[B

    shr-int/lit8 v9, v1, 0x8

    int-to-byte v9, v9

    aput-byte v9, v8, v2

    .line 77
    iget-object v8, v7, Lcom/rfid/trans/MaskClass;->MaskAdr:[B

    int-to-byte v9, v1

    aput-byte v9, v8, v4

    int-to-byte v4, v5

    .line 78
    iput-byte v4, v7, Lcom/rfid/trans/MaskClass;->MaskLen:B

    int-to-byte v4, v3

    .line 79
    iput-byte v4, v7, Lcom/rfid/trans/MaskClass;->MaskMem:B

    .line 80
    sget-object v4, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {v4, v7}, Lcom/rfid/trans/ReaderHelp;->AddMaskList(Lcom/rfid/trans/MaskClass;)V

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/UHF/scanlable/MaskActivity;->MaskData:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/UHF/scanlable/MaskActivity;->MaskData:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/UHF/scanlable/MaskActivity;->txt_mask:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p0}, Lcom/UHF/scanlable/MaskActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d00d9

    .line 86
    invoke-virtual {p0, v1}, Lcom/UHF/scanlable/MaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 91
    :catch_0
    invoke-virtual {p0}, Lcom/UHF/scanlable/MaskActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 92
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/MaskActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    .line 97
    :cond_4
    iget-object v0, p0, Lcom/UHF/scanlable/MaskActivity;->btClear:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    const-string p1, ""

    .line 99
    iput-object p1, p0, Lcom/UHF/scanlable/MaskActivity;->MaskData:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/UHF/scanlable/MaskActivity;->txt_mask:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    sget-object p1, Lcom/UHF/scanlable/Reader;->rrlib:Lcom/rfid/trans/ReaderHelp;

    invoke-virtual {p1}, Lcom/rfid/trans/ReaderHelp;->ClearMaskList()V

    .line 103
    invoke-virtual {p0}, Lcom/UHF/scanlable/MaskActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u5df2\u6e05\u7a7a\u63a9\u7801\u5217\u8868"

    .line 102
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0021

    .line 31
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/MaskActivity;->setContentView(I)V

    const p1, 0x7f080068

    .line 32
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/MaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/UHF/scanlable/MaskActivity;->tvAddr:Landroid/widget/EditText;

    const p1, 0x7f08006c

    .line 33
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/MaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/UHF/scanlable/MaskActivity;->tvLen:Landroid/widget/EditText;

    const p1, 0x7f08006a

    .line 34
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/MaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/UHF/scanlable/MaskActivity;->tvData:Landroid/widget/EditText;

    const p1, 0x7f08010a

    .line 35
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/MaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/UHF/scanlable/MaskActivity;->txt_mask:Landroid/widget/TextView;

    .line 36
    iget-object p1, p0, Lcom/UHF/scanlable/MaskActivity;->strMem:[Ljava/lang/String;

    const-string v0, "EPC"

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    const-string v2, "TID"

    .line 37
    aput-object v2, p1, v0

    const/4 v0, 0x2

    const-string v2, "USER"

    .line 38
    aput-object v2, p1, v0

    const p1, 0x7f0800a3

    .line 39
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/MaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/UHF/scanlable/MaskActivity;->spMem:Landroid/widget/Spinner;

    .line 40
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/UHF/scanlable/MaskActivity;->strMem:[Ljava/lang/String;

    const v2, 0x1090008

    invoke-direct {p1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/UHF/scanlable/MaskActivity;->spada_Mem:Landroid/widget/ArrayAdapter;

    const v0, 0x1090009

    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 43
    iget-object p1, p0, Lcom/UHF/scanlable/MaskActivity;->spMem:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/UHF/scanlable/MaskActivity;->spada_Mem:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 44
    iget-object p1, p0, Lcom/UHF/scanlable/MaskActivity;->spMem:Landroid/widget/Spinner;

    invoke-virtual {p1, v1, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    const p1, 0x7f080042

    .line 46
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/MaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/UHF/scanlable/MaskActivity;->btAdd:Landroid/widget/Button;

    const p1, 0x7f080043

    .line 47
    invoke-virtual {p0, p1}, Lcom/UHF/scanlable/MaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/UHF/scanlable/MaskActivity;->btClear:Landroid/widget/Button;

    .line 49
    iget-object p1, p0, Lcom/UHF/scanlable/MaskActivity;->btAdd:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object p1, p0, Lcom/UHF/scanlable/MaskActivity;->btClear:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
