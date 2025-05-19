.class public Lcom/oplus/anim/animation/keyframe/ColorKeyframeAnimation;
.super Lcom/oplus/anim/animation/keyframe/KeyframeAnimation;
.source "ColorKeyframeAnimation.java"


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

    .line 12
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/value/Keyframe<Ljava/lang/Integer;>;>;"
    invoke-direct {p0, p1}, Lcom/oplus/anim/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getIntValue()I
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/ColorKeyframeAnimation;->getCurrentKeyframe()Lcom/oplus/anim/value/Keyframe;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/ColorKeyframeAnimation;->getInterpolatedCurrentKeyframeProgress()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/anim/animation/keyframe/ColorKeyframeAnimation;->getIntValue(Lcom/oplus/anim/value/Keyframe;F)I

    move-result v0

    return v0
.end method

.method public getIntValue(Lcom/oplus/anim/value/Keyframe;F)I
    .locals 11
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/Keyframe<",
            "Ljava/lang/Integer;",
            ">;F)I"
        }
    .end annotation

    .line 24
    .local p1, "keyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<Ljava/lang/Integer;>;"
    iget-object v0, p1, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p1, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 28
    .local v0, "startColor":I
    iget-object v1, p1, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 30
    .local v1, "endColor":I
    iget-object v2, p0, Lcom/oplus/anim/animation/keyframe/ColorKeyframeAnimation;->valueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;

    if-eqz v2, :cond_0

    .line 32
    iget-object v3, p0, Lcom/oplus/anim/animation/keyframe/ColorKeyframeAnimation;->valueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;

    iget v4, p1, Lcom/oplus/anim/value/Keyframe;->startFrame:F

    iget-object v2, p1, Lcom/oplus/anim/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/ColorKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v9

    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/ColorKeyframeAnimation;->getProgress()F

    move-result v10

    .line 32
    move v8, p2

    invoke-virtual/range {v3 .. v10}, Lcom/oplus/anim/value/EffectiveValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 34
    .local v2, "value":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 39
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_0
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p2, v2, v3}, Lcom/oplus/anim/utils/MiscUtils;->clamp(FFF)F

    move-result v2

    invoke-static {v2, v0, v1}, Lcom/oplus/anim/utils/GammaEvaluator;->evaluate(FII)I

    move-result v2

    return v2

    .line 25
    .end local v0    # "startColor":I
    .end local v1    # "endColor":I
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

    .line 17
    .local p1, "keyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/animation/keyframe/ColorKeyframeAnimation;->getIntValue(Lcom/oplus/anim/value/Keyframe;F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getValue(Lcom/oplus/anim/value/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/animation/keyframe/ColorKeyframeAnimation;->getValue(Lcom/oplus/anim/value/Keyframe;F)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
