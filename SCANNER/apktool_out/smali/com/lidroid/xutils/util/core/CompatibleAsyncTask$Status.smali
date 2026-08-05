.class public final enum Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;
.super Ljava/lang/Enum;
.source "CompatibleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/util/core/CompatibleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;

.field public static final enum FINISHED:Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;

.field public static final enum PENDING:Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;

.field public static final enum RUNNING:Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 243
    new-instance v0, Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    .line 246
    sput-object v0, Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;->PENDING:Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;

    .line 247
    new-instance v1, Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    .line 250
    sput-object v1, Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;->RUNNING:Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;

    .line 251
    new-instance v3, Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;

    const-string v5, "FINISHED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    .line 254
    sput-object v3, Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;->FINISHED:Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 242
    sput-object v5, Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;->ENUM$VALUES:[Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 242
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;
    .locals 1

    .line 1
    const-class v0, Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;

    return-object p0
.end method

.method public static values()[Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;
    .locals 4

    .line 1
    sget-object v0, Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;->ENUM$VALUES:[Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;

    array-length v1, v0

    new-array v2, v1, [Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$Status;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
