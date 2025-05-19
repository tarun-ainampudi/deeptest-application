.class public Lcom/coui/appcompat/widget/COUIOverScroller;
.super Landroid/widget/OverScroller;
.source "COUIOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUIOverScroller$COUIViscousFluidInterpolator;,
        Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final DEFAULT_TIME_GAP:F = 16.0f

.field private static final FLING_MODE:I = 0x1

.field private static final MAXIMUM_FLING_VELOCITY_LIST:I = 0x9c4

.field private static final MAX_VELOCITY:I = 0x2328

.field private static final PI:D = 3.1415926

.field private static final SCROLL_MODE:I = 0x0

.field private static final SPRING_BACK_DURATION:I = 0x258

.field private static final TAG:Ljava/lang/String; = "COUIOverScroller"

.field private static sMaximumVelocity:I

.field private static sOverscrollDistance:I


# instance fields
.field private final mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

.field private final mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 82
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F

    .line 135
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F
    .param p5, "flywheel"    # Z

    .line 153
    invoke-direct {p0, p1, p2, p5}, Lcom/coui/appcompat/widget/COUIOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 103
    if-nez p2, :cond_0

    .line 104
    new-instance v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUIViscousFluidInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUIViscousFluidInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 106
    :cond_0
    iput-object p2, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 109
    :goto_0
    iput-boolean p3, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mFlywheel:Z

    .line 110
    new-instance v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    .line 111
    new-instance v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 113
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/coui/appcompat/widget/COUIOverScroller;->sOverscrollDistance:I

    .line 114
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x451c4000    # 2500.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/coui/appcompat/widget/COUIOverScroller;->sMaximumVelocity:I

    .line 115
    sget v1, Lcom/coui/appcompat/widget/COUIOverScroller;->sMaximumVelocity:I

    const/16 v2, 0x2328

    if-le v1, v2, :cond_1

    .line 116
    sput v2, Lcom/coui/appcompat/widget/COUIOverScroller;->sMaximumVelocity:I

    .line 118
    :cond_1
    return-void
.end method

.method static synthetic access$1000()I
    .locals 1

    .line 40
    sget v0, Lcom/coui/appcompat/widget/COUIOverScroller;->sOverscrollDistance:I

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    .line 40
    sget v0, Lcom/coui/appcompat/widget/COUIOverScroller;->sMaximumVelocity:I

    return v0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->finish()V

    .line 582
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->finish()V

    .line 583
    return-void
.end method

.method public final colorForceFinished(Z)V
    .locals 1
    .param p1, "finished"    # Z

    .line 211
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$102(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;Z)Z

    .line 212
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$102(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;Z)Z

    .line 213
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    .line 355
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIOverScroller;->isColorFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const/4 v0, 0x0

    return v0

    .line 359
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 391
    :pswitch_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$100(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->finish()V

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$100(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 400
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_3

    .line 401
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 402
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->finish()V

    goto :goto_0

    .line 361
    :pswitch_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 364
    .local v0, "time":J
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$700(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 366
    .local v2, "elapsedTime":J
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$600(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)I

    move-result v4

    .line 367
    .local v4, "duration":I
    int-to-long v5, v4

    cmp-long v5, v2, v5

    if-gez v5, :cond_2

    .line 379
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v6, v2

    int-to-float v7, v4

    div-float/2addr v6, v7

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 383
    .local v5, "q":F
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->updateScroll(F)V

    .line 384
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->updateScroll(F)V

    .line 385
    .end local v5    # "q":F
    goto :goto_0

    .line 386
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIOverScroller;->abortAnimation()V

    .line 388
    nop

    .line 410
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

.method public extendDuration(I)V
    .locals 1
    .param p1, "extend"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->extendDuration(I)V

    .line 311
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->extendDuration(I)V

    .line 312
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

    .line 473
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

    invoke-virtual/range {v0 .. v10}, Lcom/coui/appcompat/widget/COUIOverScroller;->fling(IIIIIIIIII)V

    .line 474
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

    .line 506
    move-object v0, p0

    move v1, p3

    move v2, p4

    iget-boolean v3, v0, Lcom/coui/appcompat/widget/COUIOverScroller;->mFlywheel:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIOverScroller;->isColorFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 507
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$300(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)F

    move-result v3

    .line 508
    .local v3, "oldVelocityX":F
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$300(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)F

    move-result v4

    .line 509
    .local v4, "oldVelocityY":F
    int-to-float v5, v1

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    int-to-float v5, v2

    .line 510
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 511
    int-to-float v5, v1

    add-float/2addr v5, v3

    float-to-int v1, v5

    .line 512
    .end local p3    # "velocityX":I
    .local v1, "velocityX":I
    int-to-float v5, v2

    add-float/2addr v5, v4

    float-to-int v2, v5

    .line 516
    .end local v3    # "oldVelocityX":F
    .end local v4    # "oldVelocityY":F
    .end local p4    # "velocityY":I
    .local v9, "velocityY":I
    :cond_0
    move v9, v2

    const/4 v2, 0x1

    iput v2, v0, Lcom/coui/appcompat/widget/COUIOverScroller;->mMode:I

    .line 517
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    move v4, p1

    move v5, v1

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p9

    invoke-virtual/range {v3 .. v8}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->fling(IIIII)V

    .line 518
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    move v3, p2

    move v4, v9

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p10

    invoke-virtual/range {v2 .. v7}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->fling(IIIII)V

    .line 519
    return-void
.end method

.method public getColorCurrX()I
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$200(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public getColorCurrY()I
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$200(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public getColorDuration()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$600(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$600(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getColorFinalX()I
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$500(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public getColorFinalY()I
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$500(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getColorStartX()I
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$400(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getColorStartY()I
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$400(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public getCurrVelocity()F
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$300(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)F

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$300(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 240
    .local v0, "squaredNorm":F
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$300(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$300(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 241
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method public isColorFinished()Z
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$100(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$100(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverScrolled()Z
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$100(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$800(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    .line 570
    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$100(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$800(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 4
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .line 602
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$500(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$400(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 603
    .local v0, "dx":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$500(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$400(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 604
    .local v1, "dy":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIOverScroller;->isColorFinished()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 605
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
    .locals 1
    .param p1, "startX"    # I
    .param p2, "finalX"    # I
    .param p3, "overX"    # I

    .line 535
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->notifyEdgeReached(III)V

    .line 536
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    .line 552
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->notifyEdgeReached(III)V

    .line 553
    return-void
.end method

.method public setColorFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .line 189
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->setFriction(F)V

    .line 190
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->setFriction(F)V

    .line 191
    return-void
.end method

.method public setEnableScrollList(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 161
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$002(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;Z)Z

    .line 162
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$002(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;Z)Z

    .line 163
    return-void
.end method

.method public setFinalX(I)V
    .locals 1
    .param p1, "newX"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->setFinalPosition(I)V

    .line 330
    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .param p1, "newY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->setFinalPosition(I)V

    .line 348
    return-void
.end method

.method setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 173
    if-nez p1, :cond_0

    .line 174
    new-instance v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUIViscousFluidInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUIViscousFluidInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 176
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 179
    :goto_0
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

    .line 463
    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mMode:I

    .line 466
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-virtual {v1, p1, p3, p4}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->springback(III)Z

    move-result v1

    .line 467
    .local v1, "spingbackX":Z
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-virtual {v2, p2, p5, p6}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->springback(III)Z

    move-result v2

    .line 468
    .local v2, "spingbackY":Z
    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .line 428
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/widget/COUIOverScroller;->startScroll(IIIII)V

    .line 429
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .line 445
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mMode:I

    .line 446
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->startScroll(III)V

    .line 447
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->startScroll(III)V

    .line 448
    return-void
.end method

.method public timePassed()I
    .locals 6

    .line 593
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 594
    .local v0, "time":J
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerX:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$700(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIOverScroller;->mScrollerY:Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->access$700(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 595
    .local v2, "startTime":J
    sub-long v4, v0, v2

    long-to-int v4, v4

    return v4
.end method
