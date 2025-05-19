.class Lcom/coui/appcompat/widget/COUISlideView$5;
.super Lcom/coui/appcompat/widget/COUIDeleteAnimation;
.source "COUISlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUISlideView;->startDeleteAnimation(Landroid/view/View;FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUISlideView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUISlideView;Landroid/view/View;FFFF)V
    .locals 6
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUISlideView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startDx"    # F
    .param p4, "startDy"    # F
    .param p5, "targetX"    # F
    .param p6, "targetY"    # F

    .line 1549
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISlideView$5;->this$0:Lcom/coui/appcompat/widget/COUISlideView;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/COUIDeleteAnimation;-><init>(Landroid/view/View;FFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1552
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1553
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView$5;->this$0:Lcom/coui/appcompat/widget/COUISlideView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISlideView;->access$300(Lcom/coui/appcompat/widget/COUISlideView;)Lcom/coui/appcompat/widget/COUISlideView$OnDeleteItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1555
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView$5;->this$0:Lcom/coui/appcompat/widget/COUISlideView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideView$5;->this$0:Lcom/coui/appcompat/widget/COUISlideView;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUISlideView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISlideView;->access$502(Lcom/coui/appcompat/widget/COUISlideView;I)I

    .line 1556
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView$5;->this$0:Lcom/coui/appcompat/widget/COUISlideView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISlideView;->access$600(Lcom/coui/appcompat/widget/COUISlideView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1557
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView$5;->this$0:Lcom/coui/appcompat/widget/COUISlideView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISlideView;->access$600(Lcom/coui/appcompat/widget/COUISlideView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1559
    new-instance v0, Lcom/coui/appcompat/widget/COUISlideView$5$1;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideView$5;->this$0:Lcom/coui/appcompat/widget/COUISlideView;

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/widget/COUISlideView$5$1;-><init>(Lcom/coui/appcompat/widget/COUISlideView$5;Landroid/view/View;)V

    .line 1567
    .local v0, "anim":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideView$5;->this$0:Lcom/coui/appcompat/widget/COUISlideView;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/COUISlideView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1569
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method
