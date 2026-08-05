.class public Lcom/UHF/scanlable/ScanUploader;
.super Ljava/lang/Object;
.source "ScanUploader.java"


# static fields
.field private static final DEBOUNCE_MS:J = 0x3e8L

.field private static final SERVER_URL:Ljava/lang/String; = "http://203.0.113.10:5050/scan"

.field private static lastEpc:Ljava/lang/String;

.field private static lastSentAt:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/UHF/scanlable/ScanUploader;->lastEpc:Ljava/lang/String;

    .line 13
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/UHF/scanlable/ScanUploader;->lastSentAt:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static postScan(Ljava/lang/String;)V
    .registers 9

    # Disabled on purpose: this handheld is the Stage-0 ASSIGN device now (see
    # AssignActivity), not the checkpoint scanner. The RFID ANTENNA app's fixed
    # reader owns /scan for Station 1's scale-matching pipeline -- if this
    # handheld's vendor Scan tab also posted here, a stray read while carrying
    # it around could jump the queue in app.py's scan_log and get weighed
    # against the wrong tag. TagCapture.record() (called from the same shared
    # callback, elsewhere) is untouched, so the Assign tab keeps working.
    .line 16
    return-void
.end method
