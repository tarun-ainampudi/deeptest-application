.class public abstract Lcom/oplus/anim/model/layer/BaseLayer;
.super Ljava/lang/Object;
.source "BaseLayer.java"

# interfaces
.implements Lcom/oplus/anim/animation/content/DrawingContent;
.implements Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/oplus/anim/model/KeyPathElement;


# static fields
.field private static final CLIP_SAVE_FLAG:I = 0x2

.field private static final CLIP_TO_LAYER_SAVE_FLAG:I = 0x10

.field private static final MATRIX_SAVE_FLAG:I = 0x1

.field private static final SAVE_FLAGS:I = 0x13


# instance fields
.field private final animations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "**>;>;"
        }
    .end annotation
.end field

.field final boundsMatrix:Landroid/graphics/Matrix;

.field private final clearPaint:Landroid/graphics/Paint;

.field private final contentPaint:Landroid/graphics/Paint;

.field private final drawTraceName:Ljava/lang/String;

.field private final dstInPaint:Landroid/graphics/Paint;

.field private final dstOutPaint:Landroid/graphics/Paint;

.field final effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field final layerModel:Lcom/oplus/anim/model/layer/Layer;

.field private mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final maskBoundsRect:Landroid/graphics/RectF;

.field private final matrix:Landroid/graphics/Matrix;

.field private final matteBoundsRect:Landroid/graphics/RectF;

.field private matteLayer:Lcom/oplus/anim/model/layer/BaseLayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mattePaint:Landroid/graphics/Paint;

.field private parentLayer:Lcom/oplus/anim/model/layer/BaseLayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private parentLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/layer/BaseLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final rect:Landroid/graphics/RectF;

.field private final tempMaskBoundsRect:Landroid/graphics/RectF;

.field final transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

.field private visible:Z


# direct methods
.method constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;)V
    .locals 4
    .param p1, "effectiveAnimationDrawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layerModel"    # Lcom/oplus/anim/model/layer/Layer;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 55
    new-instance v0, Lcom/oplus/anim/animation/LPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oplus/anim/animation/LPaint;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Lcom/oplus/anim/animation/LPaint;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Lcom/oplus/anim/animation/LPaint;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Lcom/oplus/anim/animation/LPaint;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Lcom/oplus/anim/animation/LPaint;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Lcom/oplus/anim/animation/LPaint;

    invoke-direct {v0, v1}, Lcom/oplus/anim/animation/LPaint;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Lcom/oplus/anim/animation/LPaint;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Lcom/oplus/anim/animation/LPaint;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->clearPaint:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 77
    iput-boolean v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->visible:Z

    .line 79
    iput-object p1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 80
    iput-object p2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#draw"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    .line 82
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseLayer::name = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";layerModel.getMatteType() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getMatteType()Lcom/oplus/anim/model/layer/Layer$MatteType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; this = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getMatteType()Lcom/oplus/anim/model/layer/Layer$MatteType;

    move-result-object v0

    sget-object v2, Lcom/oplus/anim/model/layer/Layer$MatteType;->INVERT:Lcom/oplus/anim/model/layer/Layer$MatteType;

    if-ne v0, v2, :cond_1

    .line 87
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 92
    :goto_0
    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getTransform()Lcom/oplus/anim/model/animatable/AnimatableTransform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->createAnimation()Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    .line 93
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->addListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 94
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_3

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseLayer::layerModel.getMasks() ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 97
    :cond_3
    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 98
    new-instance v0, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    .line 99
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 102
    .local v1, "animation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<*Landroid/graphics/Path;>;"
    invoke-virtual {v1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 103
    .end local v1    # "animation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<*Landroid/graphics/Path;>;"
    goto :goto_2

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getOpacityAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 105
    .local v1, "animation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 106
    invoke-virtual {v1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 107
    .end local v1    # "animation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_3

    .line 109
    :cond_5
    invoke-direct {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->setupInOutAnimations()V

    .line 110
    return-void
.end method

.method private applyAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/oplus/anim/model/content/Mask;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "mask"    # Lcom/oplus/anim/model/content/Mask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/oplus/anim/model/content/Mask;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/oplus/anim/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 452
    .local p4, "maskAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<Lcom/oplus/anim/model/content/ShapeData;Landroid/graphics/Path;>;"
    .local p5, "opacityAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p4}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 453
    .local v0, "maskPath":Landroid/graphics/Path;
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 454
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v1, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 455
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x40233333    # 2.55f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 456
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 457
    return-void
.end method

.method private applyIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/oplus/anim/model/content/Mask;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "mask"    # Lcom/oplus/anim/model/content/Mask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/oplus/anim/model/content/Mask;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/oplus/anim/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 493
    .local p4, "maskAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<Lcom/oplus/anim/model/content/ShapeData;Landroid/graphics/Path;>;"
    .local p5, "opacityAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oplus/anim/model/layer/BaseLayer;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 494
    invoke-virtual {p4}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 495
    .local v0, "maskPath":Landroid/graphics/Path;
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 496
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v1, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 497
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x40233333    # 2.55f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 498
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 499
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 500
    return-void
.end method

.method private applyInvertedAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/oplus/anim/model/content/Mask;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "mask"    # Lcom/oplus/anim/model/content/Mask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/oplus/anim/model/content/Mask;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/oplus/anim/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 461
    .local p4, "maskAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<Lcom/oplus/anim/model/content/ShapeData;Landroid/graphics/Path;>;"
    .local p5, "opacityAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oplus/anim/model/layer/BaseLayer;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 462
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 463
    invoke-virtual {p4}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 464
    .local v0, "maskPath":Landroid/graphics/Path;
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 465
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v1, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 466
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x40233333    # 2.55f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 467
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 468
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 469
    return-void
.end method

.method private applyInvertedIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/oplus/anim/model/content/Mask;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "mask"    # Lcom/oplus/anim/model/content/Mask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/oplus/anim/model/content/Mask;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/oplus/anim/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 504
    .local p4, "maskAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<Lcom/oplus/anim/model/content/ShapeData;Landroid/graphics/Path;>;"
    .local p5, "opacityAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oplus/anim/model/layer/BaseLayer;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 505
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 506
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x40233333    # 2.55f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 507
    invoke-virtual {p4}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 508
    .local v0, "maskPath":Landroid/graphics/Path;
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 509
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v1, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 510
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 511
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 512
    return-void
.end method

.method private applyInvertedSubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/oplus/anim/model/content/Mask;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "mask"    # Lcom/oplus/anim/model/content/Mask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/oplus/anim/model/content/Mask;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/oplus/anim/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 481
    .local p4, "maskAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<Lcom/oplus/anim/model/content/ShapeData;Landroid/graphics/Path;>;"
    .local p5, "opacityAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oplus/anim/model/layer/BaseLayer;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 482
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 483
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x40233333    # 2.55f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 484
    invoke-virtual {p4}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 485
    .local v0, "maskPath":Landroid/graphics/Path;
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 486
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v1, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 487
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 488
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 489
    return-void
.end method

.method private applyMasks(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 408
    const-string v0, "Layer#saveLayer"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oplus/anim/model/layer/BaseLayer;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 410
    const-string v0, "Layer#saveLayer"

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 411
    nop

    .local v2, "i":I
    :goto_0
    move v0, v2

    .end local v2    # "i":I
    .local v0, "i":I
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 412
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/model/content/Mask;

    .line 413
    .local v1, "mask":Lcom/oplus/anim/model/content/Mask;
    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 414
    .local v8, "maskAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<Lcom/oplus/anim/model/content/ShapeData;Landroid/graphics/Path;>;"
    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getOpacityAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 415
    .local v9, "opacityAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v2, Lcom/oplus/anim/model/layer/BaseLayer$2;->$SwitchMap$com$oplus$anim$model$content$Mask$MaskMode:[I

    invoke-virtual {v1}, Lcom/oplus/anim/model/content/Mask;->getMaskMode()Lcom/oplus/anim/model/content/Mask$MaskMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/anim/model/content/Mask$MaskMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .end local v1    # "mask":Lcom/oplus/anim/model/content/Mask;
    .end local v8    # "maskAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<Lcom/oplus/anim/model/content/ShapeData;Landroid/graphics/Path;>;"
    .end local v9    # "opacityAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto/16 :goto_1

    .line 417
    .restart local v1    # "mask":Lcom/oplus/anim/model/content/Mask;
    .restart local v8    # "maskAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<Lcom/oplus/anim/model/content/ShapeData;Landroid/graphics/Path;>;"
    .restart local v9    # "opacityAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :pswitch_0
    invoke-virtual {v1}, Lcom/oplus/anim/model/content/Mask;->isInverted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    move-object v6, v8

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/oplus/anim/model/layer/BaseLayer;->applyInvertedAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/oplus/anim/model/content/Mask;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto/16 :goto_1

    .line 420
    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    move-object v6, v8

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/oplus/anim/model/layer/BaseLayer;->applyAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/oplus/anim/model/content/Mask;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 422
    goto/16 :goto_1

    .line 437
    :pswitch_1
    invoke-virtual {v1}, Lcom/oplus/anim/model/content/Mask;->isInverted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 438
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    move-object v6, v8

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/oplus/anim/model/layer/BaseLayer;->applyInvertedIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/oplus/anim/model/content/Mask;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_1

    .line 440
    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    move-object v6, v8

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/oplus/anim/model/layer/BaseLayer;->applyIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/oplus/anim/model/content/Mask;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_1

    .line 424
    :pswitch_2
    if-nez v0, :cond_2

    .line 426
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 427
    .local v2, "paint":Landroid/graphics/Paint;
    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 428
    iget-object v3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 430
    .end local v2    # "paint":Landroid/graphics/Paint;
    :cond_2
    invoke-virtual {v1}, Lcom/oplus/anim/model/content/Mask;->isInverted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 431
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    move-object v6, v8

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/oplus/anim/model/layer/BaseLayer;->applyInvertedSubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/oplus/anim/model/content/Mask;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_1

    .line 433
    :cond_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    move-object v6, v8

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/oplus/anim/model/layer/BaseLayer;->applySubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/oplus/anim/model/content/Mask;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 435
    nop

    .line 411
    .end local v1    # "mask":Lcom/oplus/anim/model/content/Mask;
    .end local v8    # "maskAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<Lcom/oplus/anim/model/content/ShapeData;Landroid/graphics/Path;>;"
    .end local v9    # "opacityAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_1
    add-int/lit8 v2, v0, 0x1

    goto/16 :goto_0

    .line 445
    .end local v0    # "i":I
    :cond_4
    const-string v0, "Layer#restoreLayer"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 447
    const-string v0, "Layer#restoreLayer"

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 448
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private applySubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/oplus/anim/model/content/Mask;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "mask"    # Lcom/oplus/anim/model/content/Mask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/oplus/anim/model/content/Mask;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/oplus/anim/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 473
    .local p4, "maskAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<Lcom/oplus/anim/model/content/ShapeData;Landroid/graphics/Path;>;"
    .local p5, "opacityAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p4}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 474
    .local v0, "maskPath":Landroid/graphics/Path;
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 475
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v1, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 476
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 477
    return-void
.end method

.method private buildParentLayerListIfNeeded()V
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 548
    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    if-nez v0, :cond_1

    .line 551
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 552
    return-void

    .line 555
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 556
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    .line 557
    .local v0, "layer":Lcom/oplus/anim/model/layer/BaseLayer;
    :goto_0
    if-eqz v0, :cond_2

    .line 558
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    iget-object v0, v0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    goto :goto_0

    .line 561
    :cond_2
    return-void
.end method

.method private clearCanvas(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 317
    const-string v0, "Layer#clearLayer"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v3, v0, v1

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v4, v0, v1

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float v5, v0, v1

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v6, v0, v1

    iget-object v7, p0, Lcom/oplus/anim/model/layer/BaseLayer;->clearPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 320
    const-string v0, "Layer#clearLayer"

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 321
    return-void
.end method

.method static forModel(Lcom/oplus/anim/model/layer/Layer;Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/layer/BaseLayer;
    .locals 2
    .param p0, "layerModel"    # Lcom/oplus/anim/model/layer/Layer;
    .param p1, "drawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 115
    sget-object v0, Lcom/oplus/anim/model/layer/BaseLayer$2;->$SwitchMap$com$oplus$anim$model$layer$Layer$LayerType:[I

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getLayerType()Lcom/oplus/anim/model/layer/Layer$LayerType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/anim/model/layer/Layer$LayerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown layer type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getLayerType()Lcom/oplus/anim/model/layer/Layer$LayerType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/L;->warn(Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 128
    :pswitch_0
    new-instance v0, Lcom/oplus/anim/model/layer/TextLayer;

    invoke-direct {v0, p1, p0}, Lcom/oplus/anim/model/layer/TextLayer;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;)V

    return-object v0

    .line 126
    :pswitch_1
    new-instance v0, Lcom/oplus/anim/model/layer/NullLayer;

    invoke-direct {v0, p1, p0}, Lcom/oplus/anim/model/layer/NullLayer;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;)V

    return-object v0

    .line 124
    :pswitch_2
    new-instance v0, Lcom/oplus/anim/model/layer/ImageLayer;

    invoke-direct {v0, p1, p0}, Lcom/oplus/anim/model/layer/ImageLayer;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;)V

    return-object v0

    .line 122
    :pswitch_3
    new-instance v0, Lcom/oplus/anim/model/layer/SolidLayer;

    invoke-direct {v0, p1, p0}, Lcom/oplus/anim/model/layer/SolidLayer;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;)V

    return-object v0

    .line 119
    :pswitch_4
    new-instance v0, Lcom/oplus/anim/model/layer/CompositionLayer;

    .line 120
    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getRefId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getPrecomps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1, p2}, Lcom/oplus/anim/model/layer/CompositionLayer;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;Ljava/util/List;Lcom/oplus/anim/EffectiveAnimationComposition;)V

    return-object v0

    .line 117
    :pswitch_5
    new-instance v0, Lcom/oplus/anim/model/layer/ShapeLayer;

    invoke-direct {v0, p1, p0}, Lcom/oplus/anim/model/layer/ShapeLayer;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private intersectBoundsWithMask(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 13
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 324
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 325
    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 330
    .local v0, "size":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 331
    iget-object v4, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v4}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/anim/model/content/Mask;

    .line 332
    .local v4, "mask":Lcom/oplus/anim/model/content/Mask;
    iget-object v5, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v5}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 333
    .local v5, "maskAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<*Landroid/graphics/Path;>;"
    invoke-virtual {v5}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Path;

    .line 334
    .local v6, "maskPath":Landroid/graphics/Path;
    iget-object v7, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v6}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 335
    iget-object v7, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v7, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 337
    sget-object v7, Lcom/oplus/anim/model/layer/BaseLayer$2;->$SwitchMap$com$oplus$anim$model$content$Mask$MaskMode:[I

    invoke-virtual {v4}, Lcom/oplus/anim/model/content/Mask;->getMaskMode()Lcom/oplus/anim/model/content/Mask$MaskMode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oplus/anim/model/content/Mask$MaskMode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 363
    iget-object v7, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v8, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 367
    if-nez v3, :cond_3

    .line 368
    iget-object v7, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/16 :goto_1

    .line 344
    :pswitch_0
    invoke-virtual {v4}, Lcom/oplus/anim/model/content/Mask;->isInverted()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 345
    return-void

    .line 347
    :cond_1
    iget-object v7, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v8, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 351
    if-nez v3, :cond_2

    .line 352
    iget-object v7, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_1

    .line 354
    :cond_2
    iget-object v7, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget-object v9, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    .line 355
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget-object v9, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget-object v10, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    .line 356
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget-object v10, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    iget-object v11, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    .line 357
    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iget-object v11, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    iget-object v12, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    .line 358
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 354
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 361
    goto :goto_1

    .line 341
    :pswitch_1
    return-void

    .line 370
    :cond_3
    iget-object v7, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget-object v9, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    .line 371
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget-object v9, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget-object v10, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    .line 372
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget-object v10, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    iget-object v11, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    .line 373
    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iget-object v11, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    iget-object v12, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    .line 374
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 370
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 330
    .end local v4    # "mask":Lcom/oplus/anim/model/content/Mask;
    .end local v5    # "maskAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<*Landroid/graphics/Path;>;"
    .end local v6    # "maskPath":Landroid/graphics/Path;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 380
    .end local v3    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v2

    .line 381
    .local v2, "intersects":Z
    if-nez v2, :cond_5

    .line 382
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 384
    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private intersectBoundsWithMatte(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 387
    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/oplus/anim/model/layer/Layer;->getMatteType()Lcom/oplus/anim/model/layer/Layer$MatteType;

    move-result-object v0

    sget-object v1, Lcom/oplus/anim/model/layer/Layer$MatteType;->INVERT:Lcom/oplus/anim/model/layer/Layer$MatteType;

    if-ne v0, v1, :cond_1

    .line 394
    return-void

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 398
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p2, v3}, Lcom/oplus/anim/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 399
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v0

    .line 400
    .local v0, "intersects":Z
    if-nez v0, :cond_2

    .line 401
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 403
    :cond_2
    return-void
.end method

.method private invalidateSelf()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    .line 183
    return-void
.end method

.method private recordRenderTime(F)V
    .locals 2
    .param p1, "ms"    # F

    .line 311
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getComposition()Lcom/oplus/anim/EffectiveAnimationComposition;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getPerformanceTracker()Lcom/oplus/anim/PerformanceTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v1}, Lcom/oplus/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/oplus/anim/PerformanceTracker;->recordRenderTime(Ljava/lang/String;F)V

    .line 314
    return-void
.end method

.method private saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "all"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 190
    if-eqz p4, :cond_0

    const/16 v0, 0x1f

    goto :goto_0

    :cond_0
    const/16 v0, 0x13

    :goto_0
    invoke-virtual {p1, p2, p3, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    goto :goto_1

    .line 192
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 194
    :goto_1
    return-void
.end method

.method private setupInOutAnimations()V
    .locals 6

    .line 159
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/oplus/anim/model/layer/Layer;->getInOutKeyframes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 160
    new-instance v0, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    .line 161
    invoke-virtual {v2}, Lcom/oplus/anim/model/layer/Layer;->getInOutKeyframes()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 162
    .local v0, "inOutAnimation":Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;
    sget-boolean v2, Lcom/oplus/anim/utils/OplusLog;->DEBUG_BUILD_LAYER:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 163
    move v2, v3

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v4}, Lcom/oplus/anim/model/layer/Layer;->getInOutKeyframes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BaseLayer::create InOutAnimations, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v5}, Lcom/oplus/anim/model/layer/Layer;->getInOutKeyframes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/anim/value/Keyframe;

    invoke-virtual {v5}, Lcom/oplus/anim/value/Keyframe;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->setIsDiscrete()V

    .line 168
    new-instance v2, Lcom/oplus/anim/model/layer/BaseLayer$1;

    invoke-direct {v2, p0, v0}, Lcom/oplus/anim/model/layer/BaseLayer$1;-><init>(Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;)V

    invoke-virtual {v0, v2}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 174
    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {p0, v1}, Lcom/oplus/anim/model/layer/BaseLayer;->setVisible(Z)V

    .line 175
    invoke-virtual {p0, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 176
    .end local v0    # "inOutAnimation":Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;
    goto :goto_2

    .line 177
    :cond_2
    invoke-virtual {p0, v1}, Lcom/oplus/anim/model/layer/BaseLayer;->setVisible(Z)V

    .line 179
    :goto_2
    return-void
.end method


# virtual methods
.method public addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 1
    .param p1    # Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "**>;)V"
        }
    .end annotation

    .line 197
    .local p1, "newAnimation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<**>;"
    if-nez p1, :cond_0

    .line 198
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->animations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    return-void
.end method

.method public addValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V
    .locals 1
    .param p2    # Lcom/oplus/anim/value/EffectiveValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/oplus/anim/value/EffectiveValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 610
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TT;>;"
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->applyValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)Z

    .line 611
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .line 226
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 227
    iget-boolean v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->visible:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/oplus/anim/model/layer/Layer;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->buildParentLayerListIfNeeded()V

    .line 232
    const-string v0, "Layer#parentMatrix"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 234
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 235
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 236
    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/anim/model/layer/BaseLayer;

    iget-object v3, v3, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v3}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 235
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 238
    .end local v0    # "i":I
    :cond_1
    const-string v0, "Layer#parentMatrix"

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 239
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v0, 0x64

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 240
    .local v0, "opacity":I
    :goto_1
    int-to-float v2, p3

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    int-to-float v4, v0

    mul-float/2addr v2, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 242
    .local v2, "alpha":I
    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v3

    if-nez v3, :cond_3

    .line 243
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v3}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 244
    const-string v1, "Layer#drawLayer"

    invoke-static {v1}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v1, v2}, Lcom/oplus/anim/model/layer/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 246
    const-string v1, "Layer#drawLayer"

    invoke-static {v1}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 248
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-static {v1}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    move-result v1

    .line 249
    .local v1, "end":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oplus/anim/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " draw end time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 250
    invoke-direct {p0, v1}, Lcom/oplus/anim/model/layer/BaseLayer;->recordRenderTime(F)V

    .line 251
    return-void

    .line 254
    .end local v1    # "end":F
    :cond_3
    const-string v3, "Layer#computeBounds"

    invoke-static {v3}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 255
    iget-object v3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/oplus/anim/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 264
    iget-object v3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, v3, p2}, Lcom/oplus/anim/model/layer/BaseLayer;->intersectBoundsWithMatte(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 266
    iget-object v3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v4}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 267
    iget-object v3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v3, v4}, Lcom/oplus/anim/model/layer/BaseLayer;->intersectBoundsWithMask(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 269
    const-string v3, "Layer#computeBounds"

    invoke-static {v3}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 271
    iget-object v3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 272
    const-string v3, "Layer#saveLayer"

    invoke-static {v3}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 273
    iget-object v3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v3, v4, v1}, Lcom/oplus/anim/model/layer/BaseLayer;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 274
    const-string v1, "Layer#saveLayer"

    invoke-static {v1}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 277
    invoke-direct {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 278
    const-string v1, "Layer#drawLayer"

    invoke-static {v1}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v1, v2}, Lcom/oplus/anim/model/layer/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 280
    const-string v1, "Layer#drawLayer"

    invoke-static {v1}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 282
    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 283
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/oplus/anim/model/layer/BaseLayer;->applyMasks(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 286
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 287
    const-string v1, "Layer#drawMatte"

    invoke-static {v1}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 288
    const-string v1, "Layer#saveLayer"

    invoke-static {v1}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v1, v3, v5}, Lcom/oplus/anim/model/layer/BaseLayer;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 290
    const-string v1, "Layer#saveLayer"

    invoke-static {v1}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 291
    invoke-direct {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 293
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-virtual {v1, p1, p2, v2}, Lcom/oplus/anim/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 294
    const-string v1, "Layer#restoreLayer"

    invoke-static {v1}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 296
    const-string v1, "Layer#restoreLayer"

    invoke-static {v1}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 297
    const-string v1, "Layer#drawMatte"

    invoke-static {v1}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 300
    :cond_5
    const-string v1, "Layer#restoreLayer"

    invoke-static {v1}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 302
    const-string v1, "Layer#restoreLayer"

    invoke-static {v1}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 304
    :cond_6
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-static {v1}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    move-result v1

    .line 305
    .local v1, "endtime":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oplus/anim/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " draw end,time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0, v1}, Lcom/oplus/anim/model/layer/BaseLayer;->recordRenderTime(F)V

    .line 308
    return-void

    .line 228
    .end local v0    # "opacity":I
    .end local v1    # "endtime":F
    .end local v2    # "alpha":I
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 229
    return-void
.end method

.method abstract drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "applyParents"    # Z
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 208
    invoke-direct {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->buildParentLayerListIfNeeded()V

    .line 209
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 211
    if-eqz p3, :cond_1

    .line 212
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 214
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/model/layer/BaseLayer;

    iget-object v2, v2, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 213
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 216
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    iget-object v1, v1, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 222
    return-void
.end method

.method getLayerModel()Lcom/oplus/anim/model/layer/Layer;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/oplus/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasMasksOnThisLayer()Z
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasMatteOnThisLayer()Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onValueChanged()V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->invalidateSelf()V

    .line 140
    return-void
.end method

.method resolveChildKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;)V
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

    .line 605
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/KeyPath;>;"
    return-void
.end method

.method public resolveKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;)V
    .locals 3
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

    .line 576
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/KeyPath;>;"
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_KEYPATH:Z

    if-eqz v0, :cond_0

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseLayer::resolveKeyPath()::this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; keyPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/anim/model/KeyPath;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 579
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/oplus/anim/model/KeyPath;->matches(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 580
    return-void

    .line 583
    :cond_1
    const-string v0, "__container"

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 584
    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/oplus/anim/model/KeyPath;->addKey(Ljava/lang/String;)Lcom/oplus/anim/model/KeyPath;

    move-result-object p4

    .line 586
    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/oplus/anim/model/KeyPath;->fullyResolvesTo(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 587
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_KEYPATH:Z

    if-eqz v0, :cond_2

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseLayer::resolveKeyPath()::name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 590
    :cond_2
    invoke-virtual {p4, p0}, Lcom/oplus/anim/model/KeyPath;->resolve(Lcom/oplus/anim/model/KeyPathElement;)Lcom/oplus/anim/model/KeyPath;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/oplus/anim/model/KeyPath;->propagateToChildren(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 595
    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/oplus/anim/model/KeyPath;->incrementDepthBy(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, p2

    .line 596
    .local v0, "newDepth":I
    sget-boolean v1, Lcom/oplus/anim/utils/OplusLog;->DEBUG_KEYPATH:Z

    if-eqz v1, :cond_4

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseLayer::resolveKeyPath()::newDepth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 599
    :cond_4
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/oplus/anim/model/layer/BaseLayer;->resolveChildKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;)V

    .line 601
    .end local v0    # "newDepth":I
    :cond_5
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    .line 571
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/Content;>;"
    return-void
.end method

.method setMatteLayer(Lcom/oplus/anim/model/layer/BaseLayer;)V
    .locals 0
    .param p1, "matteLayer"    # Lcom/oplus/anim/model/layer/BaseLayer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 147
    iput-object p1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    .line 148
    return-void
.end method

.method setParentLayer(Lcom/oplus/anim/model/layer/BaseLayer;)V
    .locals 0
    .param p1, "parentLayer"    # Lcom/oplus/anim/model/layer/BaseLayer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 155
    iput-object p1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    .line 156
    return-void
.end method

.method setProgress(F)V
    .locals 4
    .param p1, "progress"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 527
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->setProgress(F)V

    .line 528
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 529
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 530
    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/oplus/anim/model/layer/Layer;->getTimeStretch()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/oplus/anim/model/layer/Layer;->getTimeStretch()F

    move-result v0

    div-float/2addr p1, v0

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    if-eqz v0, :cond_2

    .line 538
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    iget-object v0, v0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/oplus/anim/model/layer/Layer;->getTimeStretch()F

    move-result v0

    .line 539
    .local v0, "matteTimeStretch":F
    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    mul-float v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/oplus/anim/model/layer/BaseLayer;->setProgress(F)V

    .line 541
    .end local v0    # "matteTimeStretch":F
    :cond_2
    nop

    .local v1, "i":I
    :goto_1
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->animations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 542
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->animations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 541
    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    .line 544
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 519
    iget-boolean v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->visible:Z

    if-eq p1, v0, :cond_0

    .line 520
    iput-boolean p1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->visible:Z

    .line 521
    invoke-direct {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->invalidateSelf()V

    .line 523
    :cond_0
    return-void
.end method
