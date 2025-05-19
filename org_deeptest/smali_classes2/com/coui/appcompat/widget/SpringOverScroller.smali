.class public Lcom/coui/appcompat/widget/SpringOverScroller;
.super Landroid/widget/OverScroller;
.source "SpringOverScroller.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUIIOverScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/SpringOverScroller$COUIViscousFluidInterpolator;,
        Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;
    }
.end annotation


# static fields
.field public static final COUI_FLING_FRICTION_FAST:F = 0.76f

.field public static final COUI_FLING_FRICTION_NORMAL:F = 1.06f

.field public static final COUI_FLING_MODE_FAST:I = 0x0

.field public static final COUI_FLING_MODE_NORMAL:I = 0x1

.field private static final FLING_MODE:I = 0x1

.field private static final REST_MODE:I = 0x2

.field private static final SCROLL_DEFAULT_DURATION:I = 0xfa

.field private static final SCROLL_MODE:I = 0x0

.field private static final SOLVER_TIMESTEP_SEC:F = 0.016f

.field private static mRefreshTime:F


# instance fields
.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private mScrollerX:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

.field private mScrollerY:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/SpringOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mMode:I

    .line 47
    new-instance v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    .line 48
    new-instance v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    .line 50
    if-nez p2, :cond_0

    .line 51
    new-instance v0, Lcom/coui/appcompat/widget/SpringOverScroller$COUIViscousFluidInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/SpringOverScroller$COUIViscousFluidInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 53
    :cond_0
    iput-object p2, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 55
    :goto_0
    const v0, 0x3c83126f    # 0.016f

    sput v0, Lcom/coui/appcompat/widget/SpringOverScroller;->mRefreshTime:F

    .line 56
    return-void
.end method

.method static synthetic access$800()F
    .locals 1

    .line 25
    sget v0, Lcom/coui/appcompat/widget/SpringOverScroller;->mRefreshTime:F

    return v0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .line 182
    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mMode:I

    .line 183
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->setAtRest()V

    .line 184
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->setAtRest()V

    .line 185
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    .line 85
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/SpringOverScroller;->isCOUIFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x0

    return v0

    .line 88
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/SpringOverScroller;->abortAnimation()V

    goto :goto_0

    .line 90
    :pswitch_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 91
    .local v0, "time":J
    iget-object v2, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-static {v2}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->access$200(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 92
    .local v2, "elapsedTime":J
    iget-object v4, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-static {v4}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->access$300(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;)I

    move-result v4

    .line 94
    .local v4, "duration":I
    int-to-long v5, v4

    cmp-long v5, v2, v5

    if-gez v5, :cond_1

    .line 95
    iget-object v5, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v6, v2

    int-to-float v7, v4

    div-float/2addr v6, v7

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 96
    .local v5, "q":F
    iget-object v6, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->updateScroll(F)V

    .line 97
    iget-object v6, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->updateScroll(F)V

    .line 98
    .end local v5    # "q":F
    goto :goto_0

    .line 99
    :cond_1
    iget-object v5, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->updateScroll(F)V

    .line 100
    iget-object v5, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v5, v6}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->updateScroll(F)V

    .line 101
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/SpringOverScroller;->abortAnimation()V

    .line 103
    nop

    .line 110
    .end local v0    # "time":J
    .end local v2    # "elapsedTime":J
    .end local v4    # "duration":I
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fling(IIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I

    .line 156
    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mMode:I

    .line 157
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, p1, p3}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->fling(II)V

    .line 158
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, p2, p4}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->fling(II)V

    .line 159
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 0
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .line 152
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/widget/SpringOverScroller;->fling(IIII)V

    .line 153
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 10
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I

    .line 143
    move v7, p2

    move/from16 v8, p8

    if-gt v7, v8, :cond_1

    move/from16 v9, p7

    if-ge v7, v9, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual/range {p0 .. p8}, Lcom/coui/appcompat/widget/SpringOverScroller;->fling(IIIIIIII)V

    .line 148
    return-void

    .line 144
    :cond_1
    move/from16 v9, p7

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/widget/SpringOverScroller;->springBack(IIIIII)Z

    .line 145
    return-void
.end method

.method public final getCOUICurrX()I
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->getCurrentValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final getCOUICurrY()I
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->getCurrentValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final getCOUIFinalX()I
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->getEndValue()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public final getCOUIFinalY()I
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->getEndValue()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getCurrVelocity()F
    .locals 8

    .line 206
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->getVelocity()D

    move-result-wide v0

    .line 207
    .local v0, "velX":D
    iget-object v2, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->getVelocity()D

    move-result-wide v2

    .line 208
    .local v2, "velY":D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v4, v4

    return v4
.end method

.method public getCurrVelocityX()F
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->getVelocity()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getCurrVelocityY()F
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->getVelocity()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final isCOUIFinished()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->isAtRest()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->isAtRest()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 5
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .line 188
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->access$400(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-static {v2}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->access$500(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    .line 189
    .local v0, "dx":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-static {v1}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->access$400(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-static {v3}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->access$500(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-int v1, v1

    .line 190
    .local v1, "dy":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/SpringOverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 192
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 8
    .param p1, "startX"    # I
    .param p2, "finalX"    # I
    .param p3, "overX"    # I

    .line 201
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->notifyEdgeReached(III)V

    .line 202
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/coui/appcompat/widget/SpringOverScroller;->springBack(IIIIII)Z

    .line 203
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 8
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    .line 196
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->notifyEdgeReached(III)V

    .line 197
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/coui/appcompat/widget/SpringOverScroller;->springBack(IIIIII)Z

    .line 198
    return-void
.end method

.method public setCOUIFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .line 233
    return-void
.end method

.method public setCurrVelocityX(F)V
    .locals 3
    .param p1, "currVelocityX"    # F

    .line 223
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->access$600(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;)Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    move-result-object v0

    float-to-double v1, p1

    iput-wide v1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 224
    return-void
.end method

.method public setCurrVelocityY(F)V
    .locals 3
    .param p1, "currVelocityY"    # F

    .line 228
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->access$600(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;)Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    move-result-object v0

    float-to-double v1, p1

    iput-wide v1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 229
    return-void
.end method

.method public setFinalX(I)V
    .locals 0
    .param p1, "newX"    # I

    .line 135
    return-void
.end method

.method public setFinalY(I)V
    .locals 0
    .param p1, "newY"    # I

    .line 138
    return-void
.end method

.method public setFlingFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .line 72
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->access$102(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;F)F

    .line 73
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->access$102(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;F)F

    .line 74
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Lcom/coui/appcompat/widget/SpringOverScroller$COUIViscousFluidInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/SpringOverScroller$COUIViscousFluidInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 82
    :goto_0
    return-void
.end method

.method public setIsScrollView(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 63
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->access$002(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;Z)Z

    .line 64
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->access$002(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;Z)Z

    .line 65
    return-void
.end method

.method public setRefreshRate(F)V
    .locals 2
    .param p1, "refreshRate"    # F

    .line 68
    const v0, 0x461c4000    # 10000.0f

    div-float v1, v0, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    sput v1, Lcom/coui/appcompat/widget/SpringOverScroller;->mRefreshTime:F

    .line 69
    return-void
.end method

.method public setSpringBackTensionMultiple(F)V
    .locals 1
    .param p1, "multiple"    # F

    .line 236
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->access$702(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;F)F

    .line 237
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->access$702(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;F)F

    .line 238
    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 3
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "minX"    # I
    .param p4, "maxX"    # I
    .param p5, "minY"    # I
    .param p6, "maxY"    # I

    .line 162
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, p1, p3, p4}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->springBack(III)Z

    move-result v0

    .line 163
    .local v0, "springBackX":Z
    iget-object v1, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v1, p2, p5, p6}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->springBack(III)Z

    move-result v1

    .line 164
    .local v1, "springBackY":Z
    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 165
    :cond_0
    iput v2, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mMode:I

    .line 167
    :cond_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    nop

    :cond_3
    :goto_0
    return v2
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .line 171
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/widget/SpringOverScroller;->startScroll(IIIII)V

    .line 172
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mMode:I

    .line 176
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->startScroll(III)V

    .line 177
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->startScroll(III)V

    .line 178
    return-void
.end method
