.class public Lcom/coui/appcompat/widget/COUIRotateView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "COUIRotateView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation


# static fields
.field private static final ROTATION_ANGLE:I = 0xb4


# instance fields
.field private mDuration:J

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsExpanded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIRotateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIRotateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const v1, 0x3e083127    # 0.133f

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3, v4}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIRotateView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 36
    const-wide/16 v1, 0x190

    iput-wide v1, p0, Lcom/coui/appcompat/widget/COUIRotateView;->mDuration:J

    .line 37
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIRotateView;->mIsExpanded:Z

    .line 49
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRotateView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/coui/appcompat/widget/COUIRotateView;->mDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRotateView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 50
    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIRotateView;->mIsExpanded:Z

    return v0
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expand"    # Z

    .line 67
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIRotateView;->mIsExpanded:Z

    if-ne v0, p1, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIRotateView;->mIsExpanded:Z

    .line 71
    if-eqz p1, :cond_1

    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIRotateView;->setRotation(F)V

    .line 72
    return-void
.end method

.method public startCollapseAnimation()V
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRotateView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIRotateView;->mIsExpanded:Z

    .line 60
    return-void
.end method

.method public startExpandAnimation()V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRotateView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIRotateView;->mIsExpanded:Z

    .line 55
    return-void
.end method

.method public startRotateAnimation()V
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIRotateView;->mIsExpanded:Z

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRotateView;->startExpandAnimation()V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRotateView;->startCollapseAnimation()V

    .line 80
    :goto_0
    return-void
.end method
