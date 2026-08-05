.class public Lcom/UHF/scanlable/ScanModeGroup;
.super Landroid/app/ActivityGroup;
.source "ScanModeGroup.java"


# instance fields
.field public group:Landroid/app/ActivityGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/UHF/scanlable/ScanModeGroup;->group:Landroid/app/ActivityGroup;

    invoke-virtual {v0}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

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

    .line 16
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 17
    iput-object p0, p0, Lcom/UHF/scanlable/ScanModeGroup;->group:Landroid/app/ActivityGroup;

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 28
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStart()V

    return-void
.end method
