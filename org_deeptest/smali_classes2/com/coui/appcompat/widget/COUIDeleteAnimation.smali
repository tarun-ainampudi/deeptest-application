.class public Lcom/coui/appcompat/widget/COUIDeleteAnimation;
.super Ljava/lang/Object;
.source "COUIDeleteAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field private final mAnimatorSet:Landroid/animation/AnimatorSet;

.field public mEnded:Z

.field final mStartDx:F

.field final mStartDy:F

.field final mTargetX:F

.field final mTargetY:F

.field public mView:Landroid/view/View;

.field public mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/view/View;FFFF)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startDx"    # F
    .param p3, "startDy"    # F
    .param p4, "targetX"    # F
    .param p5, "targetY"    # F

    .line 128
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/COUIDeleteAnimation;-><init>(Landroid/view/View;Landroid/view/View;FFFF)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;FFFF)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fadeview"    # Landroid/view/View;
    .param p3, "startDx"    # F
    .param p4, "startDy"    # F
    .param p5, "targetX"    # F
    .param p6, "targetY"    # F

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mEnded:Z

    .line 82
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mView:Landroid/view/View;

    .line 83
    iput p3, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mStartDx:F

    .line 84
    iput p4, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mStartDy:F

    .line 85
    iput p5, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mTargetX:F

    .line 86
    iput p6, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mTargetY:F

    .line 87
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 88
    const-string v1, "translationX"

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v4, v3, v0

    const/4 v0, 0x1

    aput p5, v3, v0

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 90
    .local v0, "anim":Landroid/animation/ValueAnimator;
    if-eqz p2, :cond_0

    .line 91
    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 93
    .local v1, "fadeAnim":Landroid/animation/ValueAnimator;
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 94
    .end local v1    # "fadeAnim":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const v2, 0x3e083127    # 0.133f

    const v3, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v4, v3, v5}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 98
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 99
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFFF)V
    .locals 6
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "startDx"    # F
    .param p3, "startDy"    # F
    .param p4, "targetX"    # F
    .param p5, "targetY"    # F

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mEnded:Z

    .line 112
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 113
    iput p2, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mStartDx:F

    .line 114
    iput p3, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mStartDy:F

    .line 115
    iput p4, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mTargetX:F

    .line 116
    iput p5, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mTargetY:F

    .line 117
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v0

    const/4 v0, 0x1

    aput p4, v3, v0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 118
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 119
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 120
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const v2, 0x3e083127    # 0.133f

    const v3, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v4, v3, v5}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 121
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 122
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 153
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 166
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mEnded:Z

    .line 162
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 170
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 157
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .line 135
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 136
    return-void
.end method

.method public start()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 146
    return-void
.end method
