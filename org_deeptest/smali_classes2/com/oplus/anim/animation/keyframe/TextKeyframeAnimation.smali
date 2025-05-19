.class public Lcom/oplus/anim/animation/keyframe/TextKeyframeAnimation;
.super Lcom/oplus/anim/animation/keyframe/KeyframeAnimation;
.source "TextKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/anim/animation/keyframe/KeyframeAnimation<",
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

    .line 10
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/value/Keyframe<Lcom/oplus/anim/model/DocumentData;>;>;"
    invoke-direct {p0, p1}, Lcom/oplus/anim/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 11
    return-void
.end method


# virtual methods
.method getValue(Lcom/oplus/anim/value/Keyframe;F)Lcom/oplus/anim/model/DocumentData;
    .locals 1
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/Keyframe<",
            "Lcom/oplus/anim/model/DocumentData;",
            ">;F)",
            "Lcom/oplus/anim/model/DocumentData;"
        }
    .end annotation

    .line 15
    .local p1, "keyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<Lcom/oplus/anim/model/DocumentData;>;"
    iget-object v0, p1, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/anim/model/DocumentData;

    return-object v0
.end method

.method bridge synthetic getValue(Lcom/oplus/anim/value/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/animation/keyframe/TextKeyframeAnimation;->getValue(Lcom/oplus/anim/value/Keyframe;F)Lcom/oplus/anim/model/DocumentData;

    move-result-object p1

    return-object p1
.end method
