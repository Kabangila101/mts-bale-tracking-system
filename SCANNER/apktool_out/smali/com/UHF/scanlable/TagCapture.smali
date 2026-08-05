.class public Lcom/UHF/scanlable/TagCapture;
.super Ljava/lang/Object;
.source "TagCapture.java"


# static fields
.field public static volatile lastAt:J = 0x0L

.field public static volatile lastEpc:Ljava/lang/String; = ""

.field public static volatile lastTid:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static record(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-string v0, ""

    if-nez p0, :cond_5

    move-object p0, v0

    .line 15
    :cond_5
    sput-object p0, Lcom/UHF/scanlable/TagCapture;->lastEpc:Ljava/lang/String;

    if-nez p1, :cond_a

    move-object p1, v0

    .line 16
    :cond_a
    sput-object p1, Lcom/UHF/scanlable/TagCapture;->lastTid:Ljava/lang/String;

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/UHF/scanlable/TagCapture;->lastAt:J

    return-void
.end method
