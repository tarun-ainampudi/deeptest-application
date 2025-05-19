.class Lcom/coui/appcompat/widget/COUIInstallLoadProgress$2;
.super Ljava/lang/Object;
.source "COUIInstallLoadProgress.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->performTouchStartAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    .line 739
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$2;->this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 742
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$2;->this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    const-string v1, "circleRadiusHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->access$402(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;F)F

    .line 743
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$2;->this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    const-string v1, "circleBrightnessHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->access$002(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;F)F

    .line 744
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$2;->this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->invalidate()V

    .line 745
    return-void
.end method
