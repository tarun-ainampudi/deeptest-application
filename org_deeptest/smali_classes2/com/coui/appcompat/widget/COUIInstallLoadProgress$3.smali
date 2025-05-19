.class Lcom/coui/appcompat/widget/COUIInstallLoadProgress$3;
.super Ljava/lang/Object;
.source "COUIInstallLoadProgress.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->performTouchEndAnim(Z)V
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

    .line 783
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$3;->this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 786
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$3;->this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    const-string v1, "brightnessHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->access$002(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;F)F

    .line 787
    const-string v0, "narrowHolderX"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 788
    .local v0, "offsetX":F
    const-string v1, "narrowHolderY"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 789
    .local v1, "offsetY":F
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$3;->this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    const-string v3, "narrowHolderFont"

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v2, v3}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->access$302(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;F)F

    .line 790
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$3;->this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    float-to-double v3, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v2, v3}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->access$102(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;I)I

    .line 791
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$3;->this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    float-to-double v3, v1

    add-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v2, v3}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->access$202(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;I)I

    .line 792
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$3;->this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->invalidate()V

    .line 793
    return-void
.end method
