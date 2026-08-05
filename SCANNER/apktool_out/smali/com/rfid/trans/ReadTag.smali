.class public Lcom/rfid/trans/ReadTag;
.super Ljava/lang/Object;
.source "ReadTag.java"


# instance fields
.field public antId:I

.field public epcId:Ljava/lang/String;

.field public memId:Ljava/lang/String;

.field public phase:I

.field public rssi:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/rfid/trans/ReadTag;->antId:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/rfid/trans/ReadTag;->phase:I

    return-void
.end method
