.class public Lcom/oplus/anim/utils/EffectiveValueAnimator;
.super Lcom/oplus/anim/utils/BaseAnimator;
.source "EffectiveValueAnimator.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private composition:Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private frame:F

.field private lastFrameTimeNs:J

.field private maxFrame:F

.field private minFrame:F

.field private repeatCount:I

.field protected running:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private speed:F

.field private speedReversedForRepeatMode:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 34
    invoke-direct {p0}, Lcom/oplus/anim/utils/BaseAnimator;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->running:Z

    .line 24
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->speed:F

    .line 25
    iput-boolean v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->speedReversedForRepeatMode:Z

    .line 26
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->lastFrameTimeNs:J

    .line 27
    const/4 v1, 0x0

    iput v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    .line 28
    iput v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->repeatCount:I

    .line 29
    const/high16 v0, -0x31000000

    iput v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->minFrame:F

    .line 30
    const/high16 v0, 0x4f000000

    iput v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->maxFrame:F

    .line 35
    return-void
.end method

.method private getFrameDurationNs()F
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 141
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0

    .line 143
    :cond_0
    const v0, 0x4e6e6b28    # 1.0E9f

    iget-object v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getFrameRate()F

    move-result v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->speed:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method private isReversed()Z
    .locals 2

    .line 246
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private verifyFrame()V
    .locals 4

    .line 300
    iget-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 301
    return-void

    .line 303
    :cond_0
    iget v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    iget v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->minFrame:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    iget v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->maxFrame:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 306
    return-void

    .line 304
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->minFrame:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->maxFrame:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Frame must be [%f,%f]. It is %f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 241
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->notifyCancel()V

    .line 242
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->removeFrameCallback()V

    .line 243
    return-void
.end method

.method public clearComposition()V
    .locals 1

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 148
    const/high16 v0, -0x31000000

    iput v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->minFrame:F

    .line 149
    const/high16 v0, 0x4f000000

    iput v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->maxFrame:F

    .line 150
    return-void
.end method

.method public doFrame(J)V
    .locals 10
    .param p1, "frameTimeNanos"    # J

    .line 101
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->postFrameCallback()V

    .line 102
    iget-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 106
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 107
    .local v0, "now":J
    iget-wide v2, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->lastFrameTimeNs:J

    sub-long v2, v0, v2

    .line 108
    .local v2, "timeSinceFrame":J
    invoke-direct {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getFrameDurationNs()F

    move-result v4

    .line 109
    .local v4, "frameDuration":F
    long-to-float v5, v2

    div-float/2addr v5, v4

    .line 111
    .local v5, "dFrames":F
    iget v6, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    invoke-direct {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v7

    if-eqz v7, :cond_1

    neg-float v7, v5

    goto :goto_0

    :cond_1
    move v7, v5

    :goto_0
    add-float/2addr v6, v7

    iput v6, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    .line 112
    iget v6, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v7

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/oplus/anim/utils/MiscUtils;->contains(FFF)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 113
    .local v6, "ended":Z
    iget v7, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v8

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/oplus/anim/utils/MiscUtils;->clamp(FFF)F

    move-result v7

    iput v7, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    .line 115
    iput-wide v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->lastFrameTimeNs:J

    .line 117
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->notifyUpdate()V

    .line 118
    if-eqz v6, :cond_5

    .line 119
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getRepeatCount()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    iget v7, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->repeatCount:I

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getRepeatCount()I

    move-result v8

    if-lt v7, v8, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v7

    iput v7, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    .line 121
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->removeFrameCallback()V

    .line 122
    invoke-direct {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->notifyEnd(Z)V

    goto :goto_3

    .line 124
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->notifyRepeat()V

    .line 125
    iget v7, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->repeatCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->repeatCount:I

    .line 126
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getRepeatMode()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 127
    iget-boolean v7, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->speedReversedForRepeatMode:Z

    xor-int/lit8 v7, v7, 0x1

    iput-boolean v7, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->speedReversedForRepeatMode:Z

    .line 128
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->reverseAnimationSpeed()V

    goto :goto_2

    .line 130
    :cond_3
    invoke-direct {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v7

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v7

    :goto_1
    iput v7, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    .line 132
    :goto_2
    iput-wide v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->lastFrameTimeNs:J

    .line 136
    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->verifyFrame()V

    .line 137
    return-void

    .line 103
    .end local v0    # "now":J
    .end local v2    # "timeSinceFrame":J
    .end local v4    # "frameDuration":F
    .end local v5    # "dFrames":F
    .end local v6    # "ended":Z
    :cond_6
    :goto_4
    return-void
.end method

.method public endAnimation()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 217
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->removeFrameCallback()V

    .line 218
    invoke-direct {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->notifyEnd(Z)V

    .line 219
    return-void
.end method

.method public getAnimatedFraction()F
    .locals 3
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    return v0

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v0

    iget v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0

    .line 72
    :cond_1
    iget v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getAnimatedValueAbsolute()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getAnimatedValueAbsolute()F
    .locals 3
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    return v0

    .line 55
    :cond_0
    iget v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    iget-object v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v1

    iget-object v2, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v2}, Lcom/oplus/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getDuration()F

    move-result v0

    float-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public getFrame()F
    .locals 1

    .line 82
    iget v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    return v0
.end method

.method public getMaxFrame()F
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 262
    const/4 v0, 0x0

    return v0

    .line 264
    :cond_0
    iget v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->maxFrame:F

    const/high16 v1, 0x4f000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->maxFrame:F

    :goto_0
    return v0
.end method

.method public getMinFrame()F
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 251
    const/4 v0, 0x0

    return v0

    .line 253
    :cond_0
    iget v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->minFrame:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->minFrame:F

    :goto_0
    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 189
    iget v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->speed:F

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->running:Z

    return v0
.end method

.method public pauseAnimation()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 223
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->removeFrameCallback()V

    .line 224
    return-void
.end method

.method public playAnimation()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->running:Z

    .line 208
    invoke-direct {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->notifyStart(Z)V

    .line 209
    invoke-direct {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setFrame(I)V

    .line 210
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->lastFrameTimeNs:J

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->repeatCount:I

    .line 212
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->postFrameCallback()V

    .line 213
    return-void
.end method

.method protected postFrameCallback()V
    .locals 2

    .line 272
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->removeFrameCallback(Z)V

    .line 274
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 275
    const-string v0, "EffectiveAnimation"

    const-string v1, "Gets the choreographer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 280
    :cond_1
    :goto_0
    return-void
.end method

.method protected removeFrameCallback()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 284
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->removeFrameCallback(Z)V

    .line 285
    return-void
.end method

.method protected removeFrameCallback(Z)V
    .locals 2
    .param p1, "stopRunning"    # Z
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 289
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 290
    const-string v0, "EffectiveAnimation"

    const-string v1, "Gets the choreographer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 294
    :goto_0
    if-eqz p1, :cond_1

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->running:Z

    .line 297
    :cond_1
    return-void
.end method

.method public resumeAnimation()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->running:Z

    .line 229
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->postFrameCallback()V

    .line 230
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->lastFrameTimeNs:J

    .line 231
    invoke-direct {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getFrame()F

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v0

    iput v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    goto :goto_0

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getFrame()F

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v0

    iput v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    .line 236
    :cond_1
    :goto_0
    return-void
.end method

.method public reverseAnimationSpeed()V
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getSpeed()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setSpeed(F)V

    .line 183
    return-void
.end method

.method public setComposition(Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .locals 4
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 154
    iget-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 155
    .local v0, "keepMinAndMaxFrames":Z
    :goto_0
    iput-object p1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 157
    if-eqz v0, :cond_1

    .line 158
    iget v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->minFrame:F

    .line 159
    invoke-virtual {p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->maxFrame:F

    .line 160
    invoke-virtual {p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    .line 158
    invoke-virtual {p0, v1, v2}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setMinAndMaxFrames(FF)V

    goto :goto_1

    .line 163
    :cond_1
    invoke-virtual {p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setMinAndMaxFrames(FF)V

    .line 165
    :goto_1
    iget v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    .line 166
    .local v1, "frame":F
    const/4 v2, 0x0

    iput v2, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    .line 167
    float-to-int v2, v1

    invoke-virtual {p0, v2}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setFrame(I)V

    .line 168
    return-void
.end method

.method public setFrame(I)V
    .locals 3
    .param p1, "frame"    # I

    .line 86
    iget v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 87
    return-void

    .line 89
    :cond_0
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/oplus/anim/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    .line 90
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->lastFrameTimeNs:J

    .line 91
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->notifyUpdate()V

    .line 92
    return-void
.end method

.method public setMaxFrame(F)V
    .locals 1
    .param p1, "maxFrame"    # F

    .line 268
    iget v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->minFrame:F

    invoke-virtual {p0, v0, p1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setMinAndMaxFrames(FF)V

    .line 269
    return-void
.end method

.method public setMinAndMaxFrames(FF)V
    .locals 4
    .param p1, "minFrame"    # F
    .param p2, "maxFrame"    # F

    .line 171
    cmpl-float v0, p1, p2

    if-gtz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    const v0, -0x800001

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v0

    .line 175
    .local v0, "compositionMinFrame":F
    :goto_0
    iget-object v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v1, :cond_1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v1

    .line 176
    .local v1, "compositionMaxFrame":F
    :goto_1
    invoke-static {p1, v0, v1}, Lcom/oplus/anim/utils/MiscUtils;->clamp(FFF)F

    move-result v2

    iput v2, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->minFrame:F

    .line 177
    invoke-static {p2, v0, v1}, Lcom/oplus/anim/utils/MiscUtils;->clamp(FFF)F

    move-result v2

    iput v2, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->maxFrame:F

    .line 178
    iget v2, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    invoke-static {v2, p1, p2}, Lcom/oplus/anim/utils/MiscUtils;->clamp(FFF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setFrame(I)V

    .line 179
    return-void

    .line 172
    .end local v0    # "compositionMinFrame":F
    .end local v1    # "compositionMaxFrame":F
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "minFrame (%s) must be <= maxFrame (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinFrame(I)V
    .locals 2
    .param p1, "minFrame"    # I

    .line 257
    int-to-float v0, p1

    iget v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->maxFrame:F

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setMinAndMaxFrames(FF)V

    .line 258
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .param p1, "value"    # I

    .line 198
    invoke-super {p0, p1}, Lcom/oplus/anim/utils/BaseAnimator;->setRepeatMode(I)V

    .line 199
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->speedReversedForRepeatMode:Z

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->speedReversedForRepeatMode:Z

    .line 201
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->reverseAnimationSpeed()V

    .line 203
    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .line 193
    iput p1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->speed:F

    .line 194
    return-void
.end method
