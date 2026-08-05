.class Lcom/UHF/scanlable/CircleProgress$1;
.super Ljava/lang/Object;
.source "CircleProgress.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/UHF/scanlable/CircleProgress;->startAnimator(FFJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/UHF/scanlable/CircleProgress;


# direct methods
.method constructor <init>(Lcom/UHF/scanlable/CircleProgress;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 351
    iput-object p1, p0, Lcom/UHF/scanlable/CircleProgress$1;->this$0:Lcom/UHF/scanlable/CircleProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/UHF/scanlable/CircleProgress$1;->this$0:Lcom/UHF/scanlable/CircleProgress;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/UHF/scanlable/CircleProgress;->access$002(Lcom/UHF/scanlable/CircleProgress;F)F

    .line 355
    iget-object p1, p0, Lcom/UHF/scanlable/CircleProgress$1;->this$0:Lcom/UHF/scanlable/CircleProgress;

    invoke-static {p1}, Lcom/UHF/scanlable/CircleProgress;->access$000(Lcom/UHF/scanlable/CircleProgress;)F

    move-result v0

    iget-object v1, p0, Lcom/UHF/scanlable/CircleProgress$1;->this$0:Lcom/UHF/scanlable/CircleProgress;

    invoke-static {v1}, Lcom/UHF/scanlable/CircleProgress;->access$200(Lcom/UHF/scanlable/CircleProgress;)F

    move-result v1

    mul-float v0, v0, v1

    invoke-static {p1, v0}, Lcom/UHF/scanlable/CircleProgress;->access$102(Lcom/UHF/scanlable/CircleProgress;F)F

    .line 361
    iget-object p1, p0, Lcom/UHF/scanlable/CircleProgress$1;->this$0:Lcom/UHF/scanlable/CircleProgress;

    invoke-virtual {p1}, Lcom/UHF/scanlable/CircleProgress;->invalidate()V

    return-void
.end method
