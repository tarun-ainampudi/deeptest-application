.class public abstract Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;
.super Ljava/lang/Object;
.source "COUISlideDeleteAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUISlideDeleteAnimation$ViewWrapper;
    }
.end annotation


# static fields
.field private static final ANIMATION_DELAY:I = 0xa

.field private static final ITEM_VIEW_DURATION:I = 0x190

.field private static final SLIDE_VIEW_DURATION:I = 0x14a


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mItemViewAnimator:Landroid/animation/ObjectAnimator;

.field private mSlideView:Landroid/view/View;

.field private mSlideViewAnimator:Landroid/animation/ValueAnimator;

.field private mWrapper:Lcom/coui/appcompat/widget/COUISlideDeleteAnimation$ViewWrapper;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;IIII)V
    .locals 9
    .param p1, "slideView"    # Landroid/view/View;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "startX"    # I
    .param p4, "targetX"    # I
    .param p5, "startHeight"    # I
    .param p6, "targetHeight"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;->mSlideView:Landroid/view/View;

    .line 58
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 v3, 0x1

    aput p4, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;->mSlideViewAnimator:Landroid/animation/ValueAnimator;

    .line 59
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;->mSlideViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x14a

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 60
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;->mSlideViewAnimator:Landroid/animation/ValueAnimator;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3dcccccd    # 0.1f

    const/4 v6, 0x0

    const v7, 0x3e99999a    # 0.3f

    invoke-static {v7, v6, v5, v4}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;->mSlideViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation$1;

    invoke-direct {v8, p0}, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation$1;-><init>(Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;)V

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 68
    new-instance v1, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation$ViewWrapper;

    iget-object v8, p0, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;->mSlideView:Landroid/view/View;

    invoke-direct {v1, v8}, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation$ViewWrapper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;->mWrapper:Lcom/coui/appcompat/widget/COUISlideDeleteAnimation$ViewWrapper;

    .line 69
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;->mWrapper:Lcom/coui/appcompat/widget/COUISlideDeleteAnimation$ViewWrapper;

    const-string v8, "height"

    new-array v0, v0, [I

    aput p5, v0, v2

    aput p6, v0, v3

    invoke-static {v1, v8, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;->mItemViewAnimator:Landroid/animation/ObjectAnimator;

    .line 70
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;->mItemViewAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v7, v6, v5, v4}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 71
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;->mItemViewAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 72
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;->mItemViewAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 73
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;->mItemViewAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation$2;-><init>(Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 95
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 96
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;->mSlideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;->mItemViewAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;

    .line 35
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;->mSlideView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public abstract itemViewDelete()V
.end method

.method public startAnimation()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 105
    return-void
.end method
