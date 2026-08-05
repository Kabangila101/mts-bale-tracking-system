.class public final enum Landroid/device/Led;
.super Ljava/lang/Enum;
.source "Led.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/device/Led;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/device/Led;

.field public static final enum LED_1:Landroid/device/Led;

.field public static final enum LED_2:Landroid/device/Led;

.field public static final enum LED_3:Landroid/device/Led;

.field public static final enum LED_4:Landroid/device/Led;

.field public static final enum LED_5:Landroid/device/Led;

.field public static final enum LED_6:Landroid/device/Led;

.field public static final enum LED_7:Landroid/device/Led;

.field public static final enum LED_8:Landroid/device/Led;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 4
    new-instance v0, Landroid/device/Led;

    const-string v1, "LED_1"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/device/Led;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/Led;->LED_1:Landroid/device/Led;

    .line 5
    new-instance v1, Landroid/device/Led;

    const-string v4, "LED_2"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Landroid/device/Led;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/device/Led;->LED_2:Landroid/device/Led;

    .line 6
    new-instance v4, Landroid/device/Led;

    const-string v6, "LED_3"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Landroid/device/Led;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/device/Led;->LED_3:Landroid/device/Led;

    .line 7
    new-instance v6, Landroid/device/Led;

    const-string v8, "LED_4"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Landroid/device/Led;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/device/Led;->LED_4:Landroid/device/Led;

    .line 8
    new-instance v8, Landroid/device/Led;

    const-string v10, "LED_5"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Landroid/device/Led;-><init>(Ljava/lang/String;II)V

    sput-object v8, Landroid/device/Led;->LED_5:Landroid/device/Led;

    .line 9
    new-instance v10, Landroid/device/Led;

    const-string v12, "LED_6"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Landroid/device/Led;-><init>(Ljava/lang/String;II)V

    sput-object v10, Landroid/device/Led;->LED_6:Landroid/device/Led;

    .line 10
    new-instance v12, Landroid/device/Led;

    const-string v14, "LED_7"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Landroid/device/Led;-><init>(Ljava/lang/String;II)V

    sput-object v12, Landroid/device/Led;->LED_7:Landroid/device/Led;

    .line 11
    new-instance v14, Landroid/device/Led;

    const-string v13, "LED_8"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Landroid/device/Led;-><init>(Ljava/lang/String;II)V

    sput-object v14, Landroid/device/Led;->LED_8:Landroid/device/Led;

    new-array v11, v11, [Landroid/device/Led;

    aput-object v0, v11, v2

    aput-object v1, v11, v3

    aput-object v4, v11, v5

    aput-object v6, v11, v7

    aput-object v8, v11, v9

    const/4 v0, 0x5

    aput-object v10, v11, v0

    const/4 v0, 0x6

    aput-object v12, v11, v0

    aput-object v14, v11, v15

    .line 3
    sput-object v11, Landroid/device/Led;->$VALUES:[Landroid/device/Led;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Landroid/device/Led;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/device/Led;
    .locals 1

    .line 3
    const-class v0, Landroid/device/Led;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/device/Led;

    return-object p0
.end method

.method public static values()[Landroid/device/Led;
    .locals 1

    .line 3
    sget-object v0, Landroid/device/Led;->$VALUES:[Landroid/device/Led;

    invoke-virtual {v0}, [Landroid/device/Led;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/device/Led;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 23
    iget v0, p0, Landroid/device/Led;->value:I

    return v0
.end method
