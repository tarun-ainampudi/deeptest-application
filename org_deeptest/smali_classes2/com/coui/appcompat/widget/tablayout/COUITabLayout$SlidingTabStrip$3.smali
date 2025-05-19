.class Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$3;
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

.field final synthetic val$startLeft:I

.field final synthetic val$startRight:I

.field final synthetic val$targetLeft:I

.field final synthetic val$targetRight:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;IIII)V
    .locals 0
    .param p1, "this$1"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    .line 2456
    iput-object p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$3;->this$1:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    iput p2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$3;->val$startLeft:I

    iput p3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$3;->val$targetLeft:I

    iput p4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$3;->val$startRight:I

    iput p5, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$3;->val$targetRight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 2459
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 2460
    .local v0, "fraction":F
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$3;->this$1:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    iget v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$3;->val$startLeft:I

    iget v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$3;->val$targetLeft:I

    .line 2461
    invoke-static {v2, v3, v0}, Lcom/coui/appcompat/widget/tablayout/COUIAnimationUtils;->lerp(IIF)I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$3;->val$startRight:I

    iget v4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$3;->val$targetRight:I

    .line 2462
    invoke-static {v3, v4, v0}, Lcom/coui/appcompat/widget/tablayout/COUIAnimationUtils;->lerp(IIF)I

    move-result v3

    .line 2460
    invoke-virtual {v1, v2, v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    .line 2463
    return-void
.end method
