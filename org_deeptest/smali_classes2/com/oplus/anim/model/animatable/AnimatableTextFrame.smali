.class public Lcom/oplus/anim/model/animatable/AnimatableTextFrame;
.super Lcom/oplus/anim/model/animatable/BaseAnimatableValue;
.source "AnimatableTextFrame.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/anim/model/animatable/BaseAnimatableValue<",
        "Lcom/oplus/anim/model/DocumentData;",
        "Lcom/oplus/anim/model/DocumentData;",
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
            "Lcom/oplus/anim/model/DocumentData;",
            ">;>;)V"
        }
    .end annotation

    .line 13
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/value/Keyframe<Lcom/oplus/anim/model/DocumentData;>;>;"
    invoke-direct {p0, p1}, Lcom/oplus/anim/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;)V

    .line 14
    return-void
.end method


# virtual methods
.method public bridge synthetic createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/oplus/anim/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/oplus/anim/animation/keyframe/TextKeyframeAnimation;

    move-result-object v0

    return-object v0
.end method

.method public createAnimation()Lcom/oplus/anim/animation/keyframe/TextKeyframeAnimation;
    .locals 2

    .line 18
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatableTextFrame create TextKeyframeAnimation, keyframes is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/model/animatable/AnimatableTextFrame;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 21
    :cond_0
    new-instance v0, Lcom/oplus/anim/animation/keyframe/TextKeyframeAnimation;

    iget-object v1, p0, Lcom/oplus/anim/model/animatable/AnimatableTextFrame;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/oplus/anim/animation/keyframe/TextKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic getKeyframes()Ljava/util/List;
    .locals 1

    .line 10
    invoke-super {p0}, Lcom/oplus/anim/model/animatable/BaseAnimatableValue;->getKeyframes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isStatic()Z
    .locals 1

    .line 10
    invoke-super {p0}, Lcom/oplus/anim/model/animatable/BaseAnimatableValue;->isStatic()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 10
    invoke-super {p0}, Lcom/oplus/anim/model/animatable/BaseAnimatableValue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
