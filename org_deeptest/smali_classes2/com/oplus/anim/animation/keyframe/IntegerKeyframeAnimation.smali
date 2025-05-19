.class public Lcom/oplus/anim/animation/keyframe/IntegerKeyframeAnimation;
.super Lcom/oplus/anim/animation/keyframe/KeyframeAnimation;
.source "IntegerKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/anim/animation/keyframe/KeyframeAnimation<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/anim/value/Keyframe<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 11
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/value/Keyframe<Ljava/lang/Integer;>;>;"
    invoke-direct {p0, p1}, Lcom/oplus/anim/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getIntValue()I
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/IntegerKeyframeAnimation;->getCurrentKeyframe()Lcom/oplus/anim/value/Keyframe;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/IntegerKeyframeAnimation;->getInterpolatedCurrentKeyframeProgress()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/anim/animation/keyframe/IntegerKeyframeAnimation;->getIntValue(Lcom/oplus/anim/value/Keyframe;F)I

    move-result v0

    return v0
.end method

.method getIntValue(Lcom/oplus/anim/value/Keyframe;F)I
    .locals 9
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/Keyframe<",
            "Ljava/lang/Integer;",
            ">;F)I"
        }
    .end annotation

    .line 23
    .local p1, "keyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<Ljava/lang/Integer;>;"
    iget-object v0, p1, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/IntegerKeyframeAnimation;->valueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;

    if-eqz v0, :cond_0

    .line 29
    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/IntegerKeyframeAnimation;->valueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;

    iget v2, p1, Lcom/oplus/anim/value/Keyframe;->startFrame:F

    iget-object v0, p1, Lcom/oplus/anim/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p1, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    iget-object v5, p1, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 31
    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/IntegerKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v7

    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/IntegerKeyframeAnimation;->getProgress()F

    move-result v8

    .line 29
    move v6, p2

    invoke-virtual/range {v1 .. v8}, Lcom/oplus/anim/value/EffectiveValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 32
    .local v0, "value":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 37
    .end local v0    # "value":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/anim/value/Keyframe;->getStartValueInt()I

    move-result v0

    invoke-virtual {p1}, Lcom/oplus/anim/value/Keyframe;->getEndValueInt()I

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/oplus/anim/utils/MiscUtils;->lerp(IIF)I

    move-result v0

    return v0

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing values for keyframe."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getValue(Lcom/oplus/anim/value/Keyframe;F)Ljava/lang/Integer;
    .locals 1
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/Keyframe<",
            "Ljava/lang/Integer;",
            ">;F)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 16
    .local p1, "keyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/animation/keyframe/IntegerKeyframeAnimation;->getIntValue(Lcom/oplus/anim/value/Keyframe;F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getValue(Lcom/oplus/anim/value/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/animation/keyframe/IntegerKeyframeAnimation;->getValue(Lcom/oplus/anim/value/Keyframe;F)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
