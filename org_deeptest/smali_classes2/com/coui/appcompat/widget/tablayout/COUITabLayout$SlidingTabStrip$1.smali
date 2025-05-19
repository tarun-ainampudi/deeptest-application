.class Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;
.super Ljava/lang/Object;
.source "COUITabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

.field final synthetic val$curStartColor:I

.field final synthetic val$curTabView:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

.field final synthetic val$evaluator:Landroid/animation/ArgbEvaluator;

.field final synthetic val$leftDiff:I

.field final synthetic val$nextStartColor:I

.field final synthetic val$nextView:Landroid/widget/TextView;

.field final synthetic val$startLeft:I

.field final synthetic val$startRight:I

.field final synthetic val$targetLeft:I

.field final synthetic val$targetRight:I

.field final synthetic val$widthDiff:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;Landroid/widget/TextView;Landroid/animation/ArgbEvaluator;ILcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;IIIIIII)V
    .locals 0
    .param p1, "this$1"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    .line 2387
    iput-object p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->this$1:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    iput-object p2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$nextView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$evaluator:Landroid/animation/ArgbEvaluator;

    iput p4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$nextStartColor:I

    iput-object p5, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$curTabView:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    iput p6, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$curStartColor:I

    iput p7, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$startRight:I

    iput p8, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$startLeft:I

    iput p9, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$widthDiff:I

    iput p10, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$leftDiff:I

    iput p11, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$targetRight:I

    iput p12, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$targetLeft:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 2390
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 2391
    .local v0, "offset":F
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$nextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$evaluator:Landroid/animation/ArgbEvaluator;

    iget v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$nextStartColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->this$1:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    iget-object v4, v4, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v4}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1400(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2392
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$curTabView:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    invoke-static {v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->access$000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$evaluator:Landroid/animation/ArgbEvaluator;

    iget v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$curStartColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->this$1:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    iget-object v4, v4, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v4}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1300(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2396
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->this$1:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    iget v1, v1, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mLastOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 2397
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->this$1:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    iput v0, v1, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mLastOffset:F

    .line 2400
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->this$1:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    iget v1, v1, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mLastOffset:F

    sub-float v1, v0, v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 2401
    iget v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$startRight:I

    iget v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$startLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$widthDiff:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 2402
    .local v1, "curWidth":I
    iget v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$startLeft:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$leftDiff:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0

    .line 2404
    .end local v1    # "curWidth":I
    :cond_1
    iget v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$targetRight:I

    iget v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$targetLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$widthDiff:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v0

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 2405
    .restart local v1    # "curWidth":I
    iget v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$targetLeft:I

    int-to-float v2, v2

    iget v4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->val$leftDiff:I

    int-to-float v4, v4

    sub-float/2addr v3, v0

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 2408
    .local v2, "left":I
    :goto_0
    add-int v3, v2, v1

    .line 2409
    .local v3, "right":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;->this$1:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-virtual {v4, v2, v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    .line 2410
    return-void
.end method
