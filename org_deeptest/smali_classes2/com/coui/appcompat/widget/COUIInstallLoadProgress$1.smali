.class Lcom/coui/appcompat/widget/COUIInstallLoadProgress$1;
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

    .line 709
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$1;->this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 712
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$1;->this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    const-string v1, "brightnessHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->access$002(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;F)F

    .line 713
    const-string v0, "narrowHolderX"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 714
    .local v0, "offsetX":F
    const-string v1, "narrowHolderY"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 715
    .local v1, "offsetY":F
    const-string v2, "narrowHolderFont"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 716
    .local v2, "offsetFont":F
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$1;->this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ba3d70a    # 0.005f

    mul-float/2addr v3, v4

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$1;->this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    .line 717
    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    .line 718
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$1;->this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v0, v3, v4

    .line 719
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$1;->this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v3, v4

    .line 721
    :cond_0
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$1;->this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    float-to-double v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v4, v4

    invoke-static {v3, v4}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->access$102(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;I)I

    .line 722
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$1;->this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    float-to-double v4, v1

    add-double/2addr v4, v6

    double-to-int v4, v4

    invoke-static {v3, v4}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->access$202(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;I)I

    .line 723
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$1;->this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    invoke-static {v3, v2}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->access$302(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;F)F

    .line 724
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$1;->this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->invalidate()V

    .line 725
    return-void
.end method
