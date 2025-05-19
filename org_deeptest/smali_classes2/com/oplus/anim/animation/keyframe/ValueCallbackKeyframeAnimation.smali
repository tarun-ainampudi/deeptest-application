.class public Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;
.super Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
.source "ValueCallbackKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
        "TK;TA;>;"
    }
.end annotation


# instance fields
.field private final frameInfo:Lcom/oplus/anim/value/EffectiveFrameInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/value/EffectiveFrameInfo<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final valueCallbackValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/anim/value/EffectiveValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/EffectiveValueCallback<",
            "TA;>;)V"
        }
    .end annotation

    .line 17
    .local p0, "this":Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation<TK;TA;>;"
    .local p1, "valueCallback":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TA;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/oplus/anim/value/EffectiveValueCallback;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/EffectiveValueCallback<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 21
    .local p0, "this":Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation<TK;TA;>;"
    .local p1, "valueCallback":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TA;>;"
    .local p2, "valueCallbackValue":Ljava/lang/Object;, "TA;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 12
    new-instance v0, Lcom/oplus/anim/value/EffectiveFrameInfo;

    invoke-direct {v0}, Lcom/oplus/anim/value/EffectiveFrameInfo;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;->frameInfo:Lcom/oplus/anim/value/EffectiveFrameInfo;

    .line 22
    invoke-virtual {p0, p1}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    .line 23
    iput-object p2, p0, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;->valueCallbackValue:Ljava/lang/Object;

    .line 24
    return-void
.end method


# virtual methods
.method getEndProgress()F
    .locals 1

    .line 32
    .local p0, "this":Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation<TK;TA;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation<TK;TA;>;"
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;->valueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;

    iget-object v3, p0, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;->valueCallbackValue:Ljava/lang/Object;

    iget-object v4, p0, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;->valueCallbackValue:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;->getProgress()F

    move-result v5

    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;->getProgress()F

    move-result v6

    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;->getProgress()F

    move-result v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/oplus/anim/value/EffectiveValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getValue(Lcom/oplus/anim/value/Keyframe;F)Ljava/lang/Object;
    .locals 1
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/Keyframe<",
            "TK;>;F)TA;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation<TK;TA;>;"
    .local p1, "keyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<TK;>;"
    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public notifyListeners()V
    .locals 1

    .line 37
    .local p0, "this":Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation<TK;TA;>;"
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;->valueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;

    if-eqz v0, :cond_0

    .line 38
    invoke-super {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->notifyListeners()V

    .line 40
    :cond_0
    return-void
.end method
