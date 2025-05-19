.class public Lcom/oplus/anim/model/layer/CompositionLayer;
.super Lcom/oplus/anim/model/layer/BaseLayer;
.source "CompositionLayer.java"


# instance fields
.field private hasMasks:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hasMatte:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/layer/BaseLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final newClipRect:Landroid/graphics/RectF;

.field private final rect:Landroid/graphics/RectF;

.field private timeRemapping:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

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
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;Ljava/util/List;Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .locals 9
    .param p1, "effectiveAnimationDrawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layerModel"    # Lcom/oplus/anim/model/layer/Layer;
    .param p4, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationDrawable;",
            "Lcom/oplus/anim/model/layer/Layer;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/layer/Layer;",
            ">;",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ")V"
        }
    .end annotation

    .line 38
    .local p3, "layerModels":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/layer/Layer;>;"
    invoke-direct {p0, p1, p2}, Lcom/oplus/anim/model/layer/BaseLayer;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    .line 40
    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getTimeRemapping()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    .line 41
    .local v0, "timeRemapping":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    if-eqz v0, :cond_1

    .line 42
    sget-boolean v1, Lcom/oplus/anim/utils/OplusLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v1, :cond_0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CompositionLayer::create timeRemapping animation, this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 45
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 46
    iget-object v1, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, v1}, Lcom/oplus/anim/model/layer/CompositionLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 48
    iget-object v1, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_0

    .line 50
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 53
    :goto_0
    new-instance v1, Landroid/util/LongSparseArray;

    .line 54
    invoke-virtual {p4}, Lcom/oplus/anim/EffectiveAnimationComposition;->getLayers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 56
    .local v1, "layerMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oplus/anim/model/layer/BaseLayer;>;"
    const/4 v2, 0x0

    .line 57
    .local v2, "mattedLayer":Lcom/oplus/anim/model/layer/BaseLayer;
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    const/4 v4, 0x0

    if-ltz v3, :cond_5

    .line 58
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/anim/model/layer/Layer;

    .line 59
    .local v5, "lm":Lcom/oplus/anim/model/layer/Layer;
    sget-boolean v6, Lcom/oplus/anim/utils/OplusLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v6, :cond_2

    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CompositionLayer::i = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "; lm.type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/oplus/anim/model/layer/Layer;->getLayerType()Lcom/oplus/anim/model/layer/Layer$LayerType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "; lm.name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v5}, Lcom/oplus/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; lm.id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/oplus/anim/model/layer/Layer;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 60
    invoke-static {v6}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 63
    :cond_2
    invoke-static {v5, p1, p4}, Lcom/oplus/anim/model/layer/BaseLayer;->forModel(Lcom/oplus/anim/model/layer/Layer;Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/layer/BaseLayer;

    move-result-object v6

    .line 64
    .local v6, "layer":Lcom/oplus/anim/model/layer/BaseLayer;
    if-nez v6, :cond_3

    .line 65
    goto :goto_2

    .line 67
    :cond_3
    invoke-virtual {v6}, Lcom/oplus/anim/model/layer/BaseLayer;->getLayerModel()Lcom/oplus/anim/model/layer/Layer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oplus/anim/model/layer/Layer;->getId()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 68
    if-eqz v2, :cond_4

    .line 69
    invoke-virtual {v2, v6}, Lcom/oplus/anim/model/layer/BaseLayer;->setMatteLayer(Lcom/oplus/anim/model/layer/BaseLayer;)V

    .line 70
    const/4 v2, 0x0

    goto :goto_2

    .line 72
    :cond_4
    iget-object v7, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v7, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 73
    sget-object v4, Lcom/oplus/anim/model/layer/CompositionLayer$1;->$SwitchMap$com$oplus$anim$model$layer$Layer$MatteType:[I

    invoke-virtual {v5}, Lcom/oplus/anim/model/layer/Layer;->getMatteType()Lcom/oplus/anim/model/layer/Layer$MatteType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oplus/anim/model/layer/Layer$MatteType;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    .end local v5    # "lm":Lcom/oplus/anim/model/layer/Layer;
    .end local v6    # "layer":Lcom/oplus/anim/model/layer/BaseLayer;
    goto :goto_2

    .line 76
    .restart local v5    # "lm":Lcom/oplus/anim/model/layer/Layer;
    .restart local v6    # "layer":Lcom/oplus/anim/model/layer/BaseLayer;
    :pswitch_0
    move-object v2, v6

    .line 57
    .end local v5    # "lm":Lcom/oplus/anim/model/layer/Layer;
    .end local v6    # "layer":Lcom/oplus/anim/model/layer/BaseLayer;
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 82
    .end local v3    # "i":I
    :cond_5
    nop

    .local v4, "i":I
    :goto_3
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 83
    invoke-virtual {v1, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 84
    .local v4, "key":J
    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/anim/model/layer/BaseLayer;

    .line 87
    .local v6, "layerView":Lcom/oplus/anim/model/layer/BaseLayer;
    if-nez v6, :cond_6

    .line 88
    goto :goto_4

    .line 90
    :cond_6
    invoke-virtual {v6}, Lcom/oplus/anim/model/layer/BaseLayer;->getLayerModel()Lcom/oplus/anim/model/layer/Layer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oplus/anim/model/layer/Layer;->getParentId()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oplus/anim/model/layer/BaseLayer;

    .line 91
    .local v7, "parentLayer":Lcom/oplus/anim/model/layer/BaseLayer;
    if-eqz v7, :cond_7

    .line 92
    invoke-virtual {v6, v7}, Lcom/oplus/anim/model/layer/BaseLayer;->setParentLayer(Lcom/oplus/anim/model/layer/BaseLayer;)V

    .line 82
    .end local v4    # "key":J
    .end local v6    # "layerView":Lcom/oplus/anim/model/layer/BaseLayer;
    .end local v7    # "parentLayer":Lcom/oplus/anim/model/layer/BaseLayer;
    :cond_7
    :goto_4
    add-int/lit8 v4, v3, 0x1

    goto :goto_3

    .line 95
    .end local v3    # "i":I
    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
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

    .line 194
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/oplus/anim/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V

    .line 196
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TIME_REMAP:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 197
    if-nez p2, :cond_0

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 200
    :cond_0
    new-instance v0, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {v0, p2}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 201
    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, v0}, Lcom/oplus/anim/model/layer/CompositionLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 204
    :cond_1
    :goto_0
    return-void
.end method

.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .line 99
    const-string v0, "CompositionLayer#draw"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 101
    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v1}, Lcom/oplus/anim/model/layer/Layer;->getPreCompWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v2}, Lcom/oplus/anim/model/layer/Layer;->getPreCompHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 102
    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 104
    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 105
    const/4 v1, 0x1

    .line 106
    .local v1, "nonEmptyClip":Z
    iget-object v2, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v1

    .line 109
    :cond_0
    if-eqz v1, :cond_1

    .line 110
    iget-object v2, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/model/layer/BaseLayer;

    .line 111
    .local v2, "layer":Lcom/oplus/anim/model/layer/BaseLayer;
    invoke-virtual {v2, p1, p2, p3}, Lcom/oplus/anim/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 104
    .end local v1    # "nonEmptyClip":Z
    .end local v2    # "layer":Lcom/oplus/anim/model/layer/BaseLayer;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 114
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 115
    const-string v0, "CompositionLayer#draw"

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 116
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 5
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "applyParents"    # Z

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/anim/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 121
    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 122
    iget-object v2, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 123
    iget-object v2, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/model/layer/BaseLayer;

    iget-object v3, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v4, v1}, Lcom/oplus/anim/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 124
    iget-object v2, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 121
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 126
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getLayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/layer/BaseLayer;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    return-object v0
.end method

.method public hasMasks()Z
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 149
    iget-object v2, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/model/layer/BaseLayer;

    .line 150
    .local v2, "layer":Lcom/oplus/anim/model/layer/BaseLayer;
    instance-of v3, v2, Lcom/oplus/anim/model/layer/ShapeLayer;

    if-eqz v3, :cond_0

    .line 151
    invoke-virtual {v2}, Lcom/oplus/anim/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    .line 153
    return v1

    .line 155
    :cond_0
    instance-of v3, v2, Lcom/oplus/anim/model/layer/CompositionLayer;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/oplus/anim/model/layer/CompositionLayer;

    invoke-virtual {v3}, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMasks()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    .line 157
    return v1

    .line 148
    .end local v2    # "layer":Lcom/oplus/anim/model/layer/BaseLayer;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 160
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasMatte()Z
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 167
    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMatteOnThisLayer()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 168
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    .line 169
    return v1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 173
    iget-object v2, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-virtual {v2}, Lcom/oplus/anim/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    .line 175
    return v1

    .line 172
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 178
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected resolveChildKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;)V
    .locals 2
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

    .line 186
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/KeyPath;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/oplus/anim/model/layer/BaseLayer;->resolveKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;)V

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 4
    .param p1, "progress"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 130
    invoke-super {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->setProgress(F)V

    .line 131
    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getComposition()Lcom/oplus/anim/EffectiveAnimationComposition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getDuration()F

    move-result v0

    .line 133
    .local v0, "duration":F
    iget-object v1, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    .line 134
    .local v1, "remappedTime":J
    long-to-float v3, v1

    div-float p1, v3, v0

    .line 136
    .end local v0    # "duration":F
    .end local v1    # "remappedTime":J
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/oplus/anim/model/layer/Layer;->getTimeStretch()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/oplus/anim/model/layer/Layer;->getTimeStretch()F

    move-result v0

    div-float/2addr p1, v0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/oplus/anim/model/layer/Layer;->getStartProgress()F

    move-result v0

    sub-float/2addr p1, v0

    .line 141
    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 142
    iget-object v1, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-virtual {v1, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->setProgress(F)V

    .line 141
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 144
    .end local v0    # "i":I
    :cond_2
    return-void
.end method
