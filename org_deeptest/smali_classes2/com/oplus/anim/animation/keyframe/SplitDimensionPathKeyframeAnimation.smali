.class public Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;
.super Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
.source "SplitDimensionPathKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final point:Landroid/graphics/PointF;

.field private final xAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final yAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 17
    .local p1, "xAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Float;Ljava/lang/Float;>;"
    .local p2, "yAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Float;Ljava/lang/Float;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->point:Landroid/graphics/PointF;

    .line 19
    iput-object p1, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 20
    iput-object p2, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 22
    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->getProgress()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->setProgress(F)V

    .line 23
    return-void
.end method


# virtual methods
.method public getValue()Landroid/graphics/PointF;
    .locals 2

    .line 37
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->getValue(Lcom/oplus/anim/value/Keyframe;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method getValue(Lcom/oplus/anim/value/Keyframe;F)Landroid/graphics/PointF;
    .locals 1
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 42
    .local p1, "keyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<Landroid/graphics/PointF;>;"
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->point:Landroid/graphics/PointF;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->getValue()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getValue(Lcom/oplus/anim/value/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->getValue(Lcom/oplus/anim/value/Keyframe;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public setProgress(F)V
    .locals 3
    .param p1, "progress"    # F

    .line 27
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 28
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 29
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->point:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 30
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;

    invoke-interface {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;->onValueChanged()V

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
