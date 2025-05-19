.class public Lcom/oplus/anim/model/layer/SolidLayer;
.super Lcom/oplus/anim/model/layer/BaseLayer;
.source "SolidLayer.java"


# instance fields
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

.field private final layerModel:Lcom/oplus/anim/model/layer/Layer;

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final points:[F

.field private final rect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;)V
    .locals 2
    .param p1, "effectiveAnimationDrawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layerModel"    # Lcom/oplus/anim/model/layer/Layer;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/oplus/anim/model/layer/BaseLayer;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;)V

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/SolidLayer;->rect:Landroid/graphics/RectF;

    .line 23
    new-instance v0, Lcom/oplus/anim/animation/LPaint;

    invoke-direct {v0}, Lcom/oplus/anim/animation/LPaint;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    .line 24
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oplus/anim/model/layer/SolidLayer;->points:[F

    .line 25
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    .line 32
    iput-object p2, p0, Lcom/oplus/anim/model/layer/SolidLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    .line 34
    iget-object v0, p0, Lcom/oplus/anim/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 35
    iget-object v0, p0, Lcom/oplus/anim/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object v0, p0, Lcom/oplus/anim/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getSolidColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    return-void
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

    .line 89
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/oplus/anim/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V

    .line 90
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_1

    .line 91
    if-nez p2, :cond_0

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/model/layer/SolidLayer;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {v0, p2}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/SolidLayer;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 98
    :cond_1
    :goto_0
    return-void
.end method

.method public drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .line 41
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oplus/anim/model/layer/SolidLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v1}, Lcom/oplus/anim/model/layer/Layer;->getSolidColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 42
    .local v1, "backgroundAlpha":I
    if-nez v1, :cond_0

    .line 43
    return-void

    .line 45
    :cond_0
    const-string v2, "SolidLayer#draw"

    invoke-static {v2}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 47
    iget-object v2, v0, Lcom/oplus/anim/model/layer/SolidLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    if-nez v2, :cond_1

    const/16 v2, 0x64

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/oplus/anim/model/layer/SolidLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 48
    .local v2, "opacity":I
    :goto_0
    move/from16 v3, p3

    int-to-float v4, v3

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    int-to-float v6, v1

    div-float/2addr v6, v5

    int-to-float v7, v2

    mul-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    mul-float/2addr v4, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 49
    .local v4, "alpha":I
    iget-object v5, v0, Lcom/oplus/anim/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 50
    iget-object v5, v0, Lcom/oplus/anim/model/layer/SolidLayer;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v5, :cond_2

    .line 51
    iget-object v5, v0, Lcom/oplus/anim/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/oplus/anim/model/layer/SolidLayer;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v6}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/ColorFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 53
    :cond_2
    if-lez v4, :cond_3

    .line 54
    iget-object v5, v0, Lcom/oplus/anim/model/layer/SolidLayer;->points:[F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 55
    iget-object v5, v0, Lcom/oplus/anim/model/layer/SolidLayer;->points:[F

    const/4 v8, 0x1

    aput v7, v5, v8

    .line 56
    iget-object v5, v0, Lcom/oplus/anim/model/layer/SolidLayer;->points:[F

    iget-object v9, v0, Lcom/oplus/anim/model/layer/SolidLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v9}, Lcom/oplus/anim/model/layer/Layer;->getSolidWidth()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x2

    aput v9, v5, v10

    .line 57
    iget-object v5, v0, Lcom/oplus/anim/model/layer/SolidLayer;->points:[F

    const/4 v9, 0x3

    aput v7, v5, v9

    .line 58
    iget-object v5, v0, Lcom/oplus/anim/model/layer/SolidLayer;->points:[F

    iget-object v11, v0, Lcom/oplus/anim/model/layer/SolidLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v11}, Lcom/oplus/anim/model/layer/Layer;->getSolidWidth()I

    move-result v11

    int-to-float v11, v11

    const/4 v12, 0x4

    aput v11, v5, v12

    .line 59
    iget-object v5, v0, Lcom/oplus/anim/model/layer/SolidLayer;->points:[F

    iget-object v11, v0, Lcom/oplus/anim/model/layer/SolidLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v11}, Lcom/oplus/anim/model/layer/Layer;->getSolidHeight()I

    move-result v11

    int-to-float v11, v11

    const/4 v13, 0x5

    aput v11, v5, v13

    .line 60
    iget-object v5, v0, Lcom/oplus/anim/model/layer/SolidLayer;->points:[F

    const/4 v11, 0x6

    aput v7, v5, v11

    .line 61
    iget-object v5, v0, Lcom/oplus/anim/model/layer/SolidLayer;->points:[F

    iget-object v7, v0, Lcom/oplus/anim/model/layer/SolidLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v7}, Lcom/oplus/anim/model/layer/Layer;->getSolidHeight()I

    move-result v7

    int-to-float v7, v7

    const/4 v14, 0x7

    aput v7, v5, v14

    .line 65
    iget-object v5, v0, Lcom/oplus/anim/model/layer/SolidLayer;->points:[F

    move-object/from16 v7, p2

    invoke-virtual {v7, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 66
    iget-object v5, v0, Lcom/oplus/anim/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 67
    iget-object v5, v0, Lcom/oplus/anim/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    iget-object v15, v0, Lcom/oplus/anim/model/layer/SolidLayer;->points:[F

    aget v15, v15, v6

    iget-object v6, v0, Lcom/oplus/anim/model/layer/SolidLayer;->points:[F

    aget v6, v6, v8

    invoke-virtual {v5, v15, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 68
    iget-object v5, v0, Lcom/oplus/anim/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/oplus/anim/model/layer/SolidLayer;->points:[F

    aget v6, v6, v10

    iget-object v10, v0, Lcom/oplus/anim/model/layer/SolidLayer;->points:[F

    aget v9, v10, v9

    invoke-virtual {v5, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 69
    iget-object v5, v0, Lcom/oplus/anim/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/oplus/anim/model/layer/SolidLayer;->points:[F

    aget v6, v6, v12

    iget-object v9, v0, Lcom/oplus/anim/model/layer/SolidLayer;->points:[F

    aget v9, v9, v13

    invoke-virtual {v5, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 70
    iget-object v5, v0, Lcom/oplus/anim/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/oplus/anim/model/layer/SolidLayer;->points:[F

    aget v6, v6, v11

    iget-object v9, v0, Lcom/oplus/anim/model/layer/SolidLayer;->points:[F

    aget v9, v9, v14

    invoke-virtual {v5, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 71
    iget-object v5, v0, Lcom/oplus/anim/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/oplus/anim/model/layer/SolidLayer;->points:[F

    const/4 v9, 0x0

    aget v6, v6, v9

    iget-object v9, v0, Lcom/oplus/anim/model/layer/SolidLayer;->points:[F

    aget v8, v9, v8

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 72
    iget-object v5, v0, Lcom/oplus/anim/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 73
    iget-object v5, v0, Lcom/oplus/anim/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/oplus/anim/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual {v8, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 75
    :cond_3
    move-object/from16 v8, p1

    move-object/from16 v7, p2

    :goto_1
    const-string v5, "SolidLayer#draw"

    invoke-static {v5}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 76
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 4
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "applyParents"    # Z

    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/anim/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 81
    iget-object v0, p0, Lcom/oplus/anim/model/layer/SolidLayer;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/anim/model/layer/SolidLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v1}, Lcom/oplus/anim/model/layer/Layer;->getSolidWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/anim/model/layer/SolidLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v2}, Lcom/oplus/anim/model/layer/Layer;->getSolidHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 82
    iget-object v0, p0, Lcom/oplus/anim/model/layer/SolidLayer;->boundsMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/oplus/anim/model/layer/SolidLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 83
    iget-object v0, p0, Lcom/oplus/anim/model/layer/SolidLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 84
    return-void
.end method
