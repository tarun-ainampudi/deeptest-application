.class public Lcom/oplus/anim/animation/content/StrokeContent;
.super Lcom/oplus/anim/animation/content/BaseStrokeContent;
.source "StrokeContent.java"


# instance fields
.field private final colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

.field private final layer:Lcom/oplus/anim/model/layer/BaseLayer;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/ShapeStroke;)V
    .locals 11
    .param p1, "effectiveAnimationDrawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layer"    # Lcom/oplus/anim/model/layer/BaseLayer;
    .param p3, "stroke"    # Lcom/oplus/anim/model/content/ShapeStroke;

    .line 30
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeStroke;->getCapType()Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v4

    .line 31
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeStroke;->getJoinType()Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeStroke;->getMiterLimit()F

    move-result v6

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeStroke;->getOpacity()Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    move-result-object v7

    .line 32
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeStroke;->getWidth()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v8

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeStroke;->getLineDashPattern()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeStroke;->getDashOffset()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v10

    .line 30
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/oplus/anim/animation/content/BaseStrokeContent;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/oplus/anim/model/animatable/AnimatableIntegerValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;)V

    .line 33
    iput-object p2, p0, Lcom/oplus/anim/animation/content/StrokeContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    .line 34
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeStroke;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/StrokeContent;->name:Ljava/lang/String;

    .line 35
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeStroke;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/anim/animation/content/StrokeContent;->hidden:Z

    .line 36
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeStroke;->getColor()Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableColorValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/StrokeContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 37
    iget-object v0, p0, Lcom/oplus/anim/animation/content/StrokeContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 38
    iget-object v0, p0, Lcom/oplus/anim/animation/content/StrokeContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 39
    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V
    .locals 2
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

    .line 61
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/oplus/anim/animation/content/BaseStrokeContent;->addValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V

    .line 62
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->STROKE_COLOR:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/oplus/anim/animation/content/StrokeContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 64
    :cond_0
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_2

    .line 65
    if-nez p2, :cond_1

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/StrokeContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 68
    :cond_1
    new-instance v0, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {v0, p2}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/StrokeContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 70
    iget-object v0, p0, Lcom/oplus/anim/animation/content/StrokeContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 71
    iget-object v0, p0, Lcom/oplus/anim/animation/content/StrokeContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    iget-object v1, p0, Lcom/oplus/anim/animation/content/StrokeContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, v1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 74
    :cond_2
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .line 43
    iget-boolean v0, p0, Lcom/oplus/anim/animation/content/StrokeContent;->hidden:Z

    if-eqz v0, :cond_0

    .line 44
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/animation/content/StrokeContent;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oplus/anim/animation/content/StrokeContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    check-cast v1, Lcom/oplus/anim/animation/keyframe/ColorKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/ColorKeyframeAnimation;->getIntValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object v0, p0, Lcom/oplus/anim/animation/content/StrokeContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/oplus/anim/animation/content/StrokeContent;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oplus/anim/animation/content/StrokeContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 50
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/anim/animation/content/BaseStrokeContent;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 51
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/oplus/anim/animation/content/StrokeContent;->name:Ljava/lang/String;

    return-object v0
.end method
