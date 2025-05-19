.class public Lcom/coui/appcompat/widget/COUILocateOverScroller;
.super Landroid/widget/OverScroller;
.source "COUILocateOverScroller.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUIIOverScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;
    }
.end annotation


# static fields
.field private static final FLING_MODE:I = 0x1

.field private static final INVALID_POSITION:I = -0x1

.field private static final SCROLL:Landroid/view/animation/Interpolator;

.field private static final SCROLL_DEFAULT_DURATION:I = 0xfa

.field private static final SCROLL_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "COUILocateOverScroller"


# instance fields
.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private mScrollerX:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

.field private mScrollerY:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$1;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$1;-><init>()V

    sput-object v0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->SCROLL:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 58
    new-instance v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    .line 59
    new-instance v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    .line 60
    if-nez p2, :cond_0

    .line 61
    sget-object v0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->SCROLL:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 63
    :cond_0
    iput-object p2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 65
    :goto_0
    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->finish()V

    .line 216
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->finish()V

    .line 217
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    .line 85
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILocateOverScroller;->isCOUIFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x0

    return v0

    .line 89
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 107
    :pswitch_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->access$200(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->finish()V

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->access$200(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 116
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->finish()V

    goto :goto_0

    .line 91
    :pswitch_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 94
    .local v0, "time":J
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->access$000(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 96
    .local v2, "elapsedTime":J
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->access$100(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)I

    move-result v4

    .line 97
    .local v4, "duration":I
    int-to-long v5, v4

    cmp-long v5, v2, v5

    if-gez v5, :cond_2

    .line 98
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v6, v2

    int-to-float v7, v4

    div-float/2addr v6, v7

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 99
    .local v5, "q":F
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->updateScroll(F)V

    .line 100
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->updateScroll(F)V

    .line 101
    .end local v5    # "q":F
    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILocateOverScroller;->abortAnimation()V

    .line 104
    nop

    .line 126
    .end local v0    # "time":J
    .end local v2    # "elapsedTime":J
    .end local v4    # "duration":I
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fling(IIII)V
    .locals 14
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I

    .line 187
    move-object v0, p0

    const/4 v1, 0x1

    iput v1, v0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mMode:I

    .line 188
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    const/4 v7, 0x0

    move v3, p1

    move/from16 v4, p3

    invoke-virtual/range {v2 .. v7}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->fling(IIIII)V

    .line 189
    iget-object v8, v0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    const/high16 v11, -0x80000000

    const v12, 0x7fffffff

    const/4 v13, 0x0

    move/from16 v9, p2

    move/from16 v10, p4

    invoke-virtual/range {v8 .. v13}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->fling(IIIII)V

    .line 190
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .line 172
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lcom/coui/appcompat/widget/COUILocateOverScroller;->fling(IIIIIIIIII)V

    .line 173
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

    .line 178
    move v7, p2

    move/from16 v8, p8

    if-gt v7, v8, :cond_1

    move/from16 v9, p7

    if-ge v7, v9, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/widget/COUILocateOverScroller;->fling(IIII)V

    .line 183
    return-void

    .line 179
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

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/widget/COUILocateOverScroller;->springBack(IIIIII)Z

    .line 180
    return-void
.end method

.method public getCOUICurrX()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->access$300(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public getCOUICurrY()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->access$300(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public getCOUIFinalX()I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->access$400(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public getCOUIFinalY()I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->access$400(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public getCurrVelocity()F
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->access$600(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->access$600(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getCurrVelocityX()F
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->access$600(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)F

    move-result v0

    return v0
.end method

.method public getCurrVelocityY()F
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->access$600(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)F

    move-result v0

    return v0
.end method

.method public isCOUIFinished()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->access$200(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->access$200(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 4
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .line 223
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->access$400(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->access$500(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 224
    .local v0, "dx":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->access$400(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->access$500(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 225
    .local v1, "dy":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILocateOverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 226
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

    .line 235
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->notifyEdgeReached(III)V

    .line 236
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/coui/appcompat/widget/COUILocateOverScroller;->springBack(IIIIII)Z

    .line 237
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 8
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    .line 230
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->notifyEdgeReached(III)V

    .line 231
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/coui/appcompat/widget/COUILocateOverScroller;->springBack(IIIIII)Z

    .line 232
    return-void
.end method

.method public setCOUIFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .line 267
    return-void
.end method

.method public setCurrVelocityX(F)V
    .locals 1
    .param p1, "currVelocityX"    # F

    .line 256
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->access$602(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;F)F

    .line 257
    return-void
.end method

.method public setCurrVelocityY(F)V
    .locals 1
    .param p1, "currVelocityY"    # F

    .line 261
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->access$602(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;F)F

    .line 262
    return-void
.end method

.method public setFinalX(I)V
    .locals 1
    .param p1, "newX"    # I

    .line 156
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 157
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->setFinalPosition(I)V

    .line 160
    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .param p1, "newY"    # I

    .line 164
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 165
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->setFinalPosition(I)V

    .line 168
    return-void
.end method

.method public setFlingFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .line 71
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->setFriction(F)V

    .line 72
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->setFriction(F)V

    .line 73
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 77
    if-nez p1, :cond_0

    .line 78
    sget-object v0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->SCROLL:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 82
    :goto_0
    return-void
.end method

.method public setIsScrollView(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 68
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

    .line 195
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v0, p1, p3, p4}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->springback(III)Z

    move-result v0

    .line 196
    .local v0, "springBackX":Z
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v1, p2, p5, p6}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->springback(III)Z

    move-result v1

    .line 197
    .local v1, "springBackY":Z
    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 198
    :cond_0
    iput v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mMode:I

    .line 200
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

    .line 204
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/widget/COUILocateOverScroller;->startScroll(IIIII)V

    .line 205
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mMode:I

    .line 209
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->startScroll(III)V

    .line 210
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->startScroll(III)V

    .line 212
    return-void
.end method
