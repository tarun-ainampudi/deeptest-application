.class public Lcom/oplus/anim/model/layer/ImageLayer;
.super Lcom/oplus/anim/model/layer/BaseLayer;
.source "ImageLayer.java"


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

.field private final dst:Landroid/graphics/Rect;

.field private final paint:Landroid/graphics/Paint;

.field private final src:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;)V
    .locals 2
    .param p1, "effectiveAnimationDrawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layerModel"    # Lcom/oplus/anim/model/layer/Layer;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/oplus/anim/model/layer/BaseLayer;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;)V

    .line 25
    new-instance v0, Lcom/oplus/anim/animation/LPaint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/oplus/anim/animation/LPaint;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/ImageLayer;->src:Landroid/graphics/Rect;

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    .line 33
    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/oplus/anim/model/layer/ImageLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/oplus/anim/model/layer/Layer;->getRefId()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "refId":Ljava/lang/String;
    iget-object v1, p0, Lcom/oplus/anim/model/layer/ImageLayer;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v1, v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getImageAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
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

    .line 75
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/oplus/anim/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V

    .line 76
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_1

    .line 77
    if-nez p2, :cond_0

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/model/layer/ImageLayer;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {v0, p2}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/ImageLayer;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 85
    :cond_1
    :goto_0
    return-void
.end method

.method public drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .line 37
    invoke-direct {p0}, Lcom/oplus/anim/model/layer/ImageLayer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 38
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v1

    .line 42
    .local v1, "density":F
    const-string v2, "ImageLayer#draw"

    invoke-static {v2}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/oplus/anim/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 44
    iget-object v2, p0, Lcom/oplus/anim/model/layer/ImageLayer;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_1

    .line 45
    iget-object v2, p0, Lcom/oplus/anim/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/oplus/anim/model/layer/ImageLayer;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 47
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 48
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 49
    iget-object v2, p0, Lcom/oplus/anim/model/layer/ImageLayer;->src:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 50
    iget-object v2, p0, Lcom/oplus/anim/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 51
    iget-object v2, p0, Lcom/oplus/anim/model/layer/ImageLayer;->src:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oplus/anim/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oplus/anim/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 53
    const-string v2, "ImageLayer#draw"

    invoke-static {v2}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 54
    return-void

    .line 39
    .end local v1    # "density":F
    :cond_2
    :goto_0
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 4
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "applyParents"    # Z

    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/anim/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 59
    invoke-direct {p0}, Lcom/oplus/anim/model/layer/ImageLayer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v3

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 62
    iget-object v1, p0, Lcom/oplus/anim/model/layer/ImageLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 64
    :cond_0
    return-void
.end method
