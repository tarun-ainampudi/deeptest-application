.class public Lcom/oplus/anim/animation/keyframe/GradientColorKeyframeAnimation;
.super Lcom/oplus/anim/animation/keyframe/KeyframeAnimation;
.source "GradientColorKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/anim/animation/keyframe/KeyframeAnimation<",
        "Lcom/oplus/anim/model/content/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final gradientColor:Lcom/oplus/anim/model/content/GradientColor;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/anim/value/Keyframe<",
            "Lcom/oplus/anim/model/content/GradientColor;",
            ">;>;)V"
        }
    .end annotation

    .line 12
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/value/Keyframe<Lcom/oplus/anim/model/content/GradientColor;>;>;"
    invoke-direct {p0, p1}, Lcom/oplus/anim/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 13
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/value/Keyframe;

    iget-object v1, v1, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Lcom/oplus/anim/model/content/GradientColor;

    .line 14
    .local v1, "startValue":Lcom/oplus/anim/model/content/GradientColor;
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/oplus/anim/model/content/GradientColor;->getSize()I

    move-result v0

    .line 15
    .local v0, "size":I
    :goto_0
    new-instance v2, Lcom/oplus/anim/model/content/GradientColor;

    new-array v3, v0, [F

    new-array v4, v0, [I

    invoke-direct {v2, v3, v4}, Lcom/oplus/anim/model/content/GradientColor;-><init>([F[I)V

    iput-object v2, p0, Lcom/oplus/anim/animation/keyframe/GradientColorKeyframeAnimation;->gradientColor:Lcom/oplus/anim/model/content/GradientColor;

    .line 16
    return-void
.end method


# virtual methods
.method getValue(Lcom/oplus/anim/value/Keyframe;F)Lcom/oplus/anim/model/content/GradientColor;
    .locals 3
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/Keyframe<",
            "Lcom/oplus/anim/model/content/GradientColor;",
            ">;F)",
            "Lcom/oplus/anim/model/content/GradientColor;"
        }
    .end annotation

    .line 20
    .local p1, "keyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<Lcom/oplus/anim/model/content/GradientColor;>;"
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/GradientColorKeyframeAnimation;->gradientColor:Lcom/oplus/anim/model/content/GradientColor;

    iget-object v1, p1, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Lcom/oplus/anim/model/content/GradientColor;

    iget-object v2, p1, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v2, Lcom/oplus/anim/model/content/GradientColor;

    invoke-virtual {v0, v1, v2, p2}, Lcom/oplus/anim/model/content/GradientColor;->lerp(Lcom/oplus/anim/model/content/GradientColor;Lcom/oplus/anim/model/content/GradientColor;F)V

    .line 21
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/GradientColorKeyframeAnimation;->gradientColor:Lcom/oplus/anim/model/content/GradientColor;

    return-object v0
.end method

.method bridge synthetic getValue(Lcom/oplus/anim/value/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/animation/keyframe/GradientColorKeyframeAnimation;->getValue(Lcom/oplus/anim/value/Keyframe;F)Lcom/oplus/anim/model/content/GradientColor;

    move-result-object p1

    return-object p1
.end method
