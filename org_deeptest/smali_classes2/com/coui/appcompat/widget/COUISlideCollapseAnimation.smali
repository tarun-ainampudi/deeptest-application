.class public abstract Lcom/coui/appcompat/widget/COUISlideCollapseAnimation;
.super Landroid/view/animation/Animation;
.source "COUISlideCollapseAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static final ANIM_DURATION:I = 0xc8


# instance fields
.field mInitialHeight:I

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 52
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISlideCollapseAnimation;->mView:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISlideCollapseAnimation;->mInitialHeight:I

    .line 55
    const v0, 0x3e083127    # 0.133f

    const/4 v1, 0x0

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISlideCollapseAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 56
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/COUISlideCollapseAnimation;->setDuration(J)V

    .line 57
    invoke-virtual {p0, p0}, Lcom/coui/appcompat/widget/COUISlideCollapseAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 76
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideCollapseAnimation;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUISlideCollapseAnimation;->mInitialHeight:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUISlideCollapseAnimation;->mInitialHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 80
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 82
    :goto_0
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 63
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideCollapseAnimation;->onItemDelete()V

    .line 64
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 68
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 73
    return-void
.end method

.method public abstract onItemDelete()V
.end method

.method public willChangeBounds()Z
    .locals 1

    .line 86
    const/4 v0, 0x1

    return v0
.end method
