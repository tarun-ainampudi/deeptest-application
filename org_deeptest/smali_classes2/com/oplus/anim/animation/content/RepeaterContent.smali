.class public Lcom/oplus/anim/animation/content/RepeaterContent;
.super Ljava/lang/Object;
.source "RepeaterContent.java"

# interfaces
.implements Lcom/oplus/anim/animation/content/DrawingContent;
.implements Lcom/oplus/anim/animation/content/PathContent;
.implements Lcom/oplus/anim/animation/content/GreedyContent;
.implements Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/oplus/anim/animation/content/KeyPathElementContent;


# instance fields
.field private contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;

.field private final copies:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field private final hidden:Z

.field private final layer:Lcom/oplus/anim/model/layer/BaseLayer;

.field private final matrix:Landroid/graphics/Matrix;

.field private final name:Ljava/lang/String;

.field private final offset:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/Repeater;)V
    .locals 1
    .param p1, "effectiveAnimationDrawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layer"    # Lcom/oplus/anim/model/layer/BaseLayer;
    .param p3, "repeater"    # Lcom/oplus/anim/model/content/Repeater;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->path:Landroid/graphics/Path;

    .line 41
    iput-object p1, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 42
    iput-object p2, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    .line 43
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/Repeater;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->name:Ljava/lang/String;

    .line 44
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/Repeater;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->hidden:Z

    .line 45
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/Repeater;->getCopies()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->copies:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 46
    iget-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->copies:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 47
    iget-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->copies:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 49
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/Repeater;->getOffset()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->offset:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 50
    iget-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->offset:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 51
    iget-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->offset:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 53
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/Repeater;->getTransform()Lcom/oplus/anim/model/animatable/AnimatableTransform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->createAnimation()Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    .line 54
    iget-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->addAnimationsToLayer(Lcom/oplus/anim/model/layer/BaseLayer;)V

    .line 55
    iget-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->addListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 56
    return-void
.end method


# virtual methods
.method public absorbContent(Ljava/util/ListIterator;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lcom/oplus/anim/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p1, "contentsIter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/oplus/anim/animation/content/Content;>;"
    iget-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;

    if-eqz v0, :cond_0

    .line 74
    return-void

    .line 78
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/Content;>;"
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 85
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 86
    new-instance v8, Lcom/oplus/anim/animation/content/ContentGroup;

    iget-object v2, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iget-object v3, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    const-string v4, "Repeater"

    iget-boolean v5, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->hidden:Z

    const/4 v7, 0x0

    move-object v1, v8

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/oplus/anim/animation/content/ContentGroup;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Ljava/lang/String;ZLjava/util/List;Lcom/oplus/anim/model/animatable/AnimatableTransform;)V

    iput-object v8, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;

    .line 87
    return-void
.end method

.method public addValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V
    .locals 1
    .param p2    # Lcom/oplus/anim/value/EffectiveValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/oplus/anim/value/EffectiveValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 147
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TT;>;"
    iget-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->applyValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    return-void

    .line 151
    :cond_0
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->REPEATER_COPIES:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->copies:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 153
    :cond_1
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->REPEATER_OFFSET:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->offset:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    .line 156
    :cond_2
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "alpha"    # I

    .line 114
    iget-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->copies:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 115
    .local v0, "copies":F
    iget-object v1, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->offset:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 117
    .local v1, "offset":F
    iget-object v2, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getStartOpacity()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 119
    .local v2, "startOpacity":F
    iget-object v4, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v4}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getEndOpacity()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v3

    .line 120
    .local v4, "endOpacity":F
    float-to-int v3, v0

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 121
    iget-object v5, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 122
    iget-object v5, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    int-to-float v7, v3

    add-float/2addr v7, v1

    invoke-virtual {v6, v7}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrixForRepeater(F)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 123
    int-to-float v5, p3

    int-to-float v6, v3

    div-float/2addr v6, v0

    invoke-static {v2, v4, v6}, Lcom/oplus/anim/utils/MiscUtils;->lerp(FFF)F

    move-result v6

    mul-float/2addr v5, v6

    .line 124
    .local v5, "newAlpha":F
    iget-object v6, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;

    iget-object v7, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    float-to-int v8, v5

    invoke-virtual {v6, p1, v7, v8}, Lcom/oplus/anim/animation/content/ContentGroup;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 120
    .end local v5    # "newAlpha":F
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 126
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "applyParents"    # Z

    .line 130
    iget-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/anim/animation/content/ContentGroup;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 131
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 7

    .line 101
    iget-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/content/ContentGroup;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 102
    .local v0, "contentPath":Landroid/graphics/Path;
    iget-object v1, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 103
    iget-object v1, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->copies:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 104
    .local v1, "copies":F
    iget-object v2, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->offset:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 105
    .local v2, "offset":F
    float-to-int v3, v1

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 106
    iget-object v4, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    int-to-float v6, v3

    add-float/2addr v6, v2

    invoke-virtual {v5, v6}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrixForRepeater(F)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 107
    iget-object v4, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->path:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 105
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 109
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->path:Landroid/graphics/Path;

    return-object v3
.end method

.method public onValueChanged()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    .line 136
    return-void
.end method

.method public resolveKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;)V
    .locals 0
    .param p1, "keyPath"    # Lcom/oplus/anim/model/KeyPath;
    .param p2, "depth"    # I
    .param p4, "currentPartialKeyPath"    # Lcom/oplus/anim/model/KeyPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/model/KeyPath;",
            "I",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/KeyPath;",
            ">;",
            "Lcom/oplus/anim/model/KeyPath;",
            ")V"
        }
    .end annotation

    .line 141
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/KeyPath;>;"
    invoke-static {p1, p2, p3, p4, p0}, Lcom/oplus/anim/utils/MiscUtils;->resolveKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;Lcom/oplus/anim/animation/content/KeyPathElementContent;)V

    .line 142
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/content/Content;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/Content;>;"
    iget-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/anim/animation/content/ContentGroup;->setContents(Ljava/util/List;Ljava/util/List;)V

    .line 97
    return-void
.end method
