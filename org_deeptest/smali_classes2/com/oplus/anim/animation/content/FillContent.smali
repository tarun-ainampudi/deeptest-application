.class public Lcom/oplus/anim/animation/content/FillContent;
.super Ljava/lang/Object;
.source "FillContent.java"

# interfaces
.implements Lcom/oplus/anim/animation/content/DrawingContent;
.implements Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/oplus/anim/animation/content/KeyPathElementContent;


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

.field private final effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field private final hidden:Z

.field private final layer:Lcom/oplus/anim/model/layer/BaseLayer;

.field private final name:Ljava/lang/String;

.field private final opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/content/PathContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/ShapeFill;)V
    .locals 2
    .param p1, "effectiveAnimationDrawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layer"    # Lcom/oplus/anim/model/layer/BaseLayer;
    .param p3, "fill"    # Lcom/oplus/anim/model/content/ShapeFill;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->path:Landroid/graphics/Path;

    .line 33
    new-instance v0, Lcom/oplus/anim/animation/LPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oplus/anim/animation/LPaint;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->paths:Ljava/util/List;

    .line 45
    iput-object p2, p0, Lcom/oplus/anim/animation/content/FillContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    .line 46
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeFill;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->name:Ljava/lang/String;

    .line 47
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeFill;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/anim/animation/content/FillContent;->hidden:Z

    .line 48
    iput-object p1, p0, Lcom/oplus/anim/animation/content/FillContent;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 49
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeFill;->getColor()Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeFill;->getOpacity()Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->path:Landroid/graphics/Path;

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeFill;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 57
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeFill;->getColor()Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableColorValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 58
    iget-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 59
    iget-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 60
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeFill;->getOpacity()Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 61
    iget-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 62
    iget-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 63
    return-void

    .line 50
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 51
    iput-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 52
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

    .line 134
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TT;>;"
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->COLOR:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 136
    :cond_0
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->OPACITY:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 138
    :cond_1
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    .line 139
    if-nez p2, :cond_2

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 142
    :cond_2
    new-instance v0, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {v0, p2}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 144
    iget-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 145
    iget-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    iget-object v1, p0, Lcom/oplus/anim/animation/content/FillContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, v1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 148
    :cond_3
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .line 87
    iget-boolean v0, p0, Lcom/oplus/anim/animation/content/FillContent;->hidden:Z

    if-eqz v0, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    const-string v0, "FillContent#draw"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oplus/anim/animation/content/FillContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    check-cast v1, Lcom/oplus/anim/animation/keyframe/ColorKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/ColorKeyframeAnimation;->getIntValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    int-to-float v0, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/oplus/anim/animation/content/FillContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 93
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/oplus/anim/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/oplus/anim/utils/MiscUtils;->clamp(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 95
    iget-object v1, p0, Lcom/oplus/anim/animation/content/FillContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/oplus/anim/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oplus/anim/animation/content/FillContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/oplus/anim/animation/content/FillContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 100
    nop

    .local v3, "i":I
    :goto_0
    move v1, v3

    .end local v3    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lcom/oplus/anim/animation/content/FillContent;->paths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 101
    iget-object v2, p0, Lcom/oplus/anim/animation/content/FillContent;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/oplus/anim/animation/content/FillContent;->paths:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v3}, Lcom/oplus/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 100
    add-int/lit8 v3, v1, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/oplus/anim/animation/content/FillContent;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oplus/anim/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 106
    const-string v1, "FillContent#draw"

    invoke-static {v1}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 107
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 5
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "applyParents"    # Z

    .line 111
    iget-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 112
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oplus/anim/animation/content/FillContent;->paths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/oplus/anim/animation/content/FillContent;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/oplus/anim/animation/content/FillContent;->paths:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v3}, Lcom/oplus/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/oplus/anim/animation/content/FillContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 117
    iget v0, p1, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v1

    iget v3, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v1

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v1

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 123
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public onValueChanged()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    .line 68
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

    .line 128
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/KeyPath;>;"
    invoke-static {p1, p2, p3, p4, p0}, Lcom/oplus/anim/utils/MiscUtils;->resolveKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;Lcom/oplus/anim/animation/content/KeyPathElementContent;)V

    .line 129
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 4
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

    .line 72
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/Content;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 73
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/animation/content/Content;

    .line 74
    .local v1, "content":Lcom/oplus/anim/animation/content/Content;
    instance-of v2, v1, Lcom/oplus/anim/animation/content/PathContent;

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/oplus/anim/animation/content/FillContent;->paths:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v1    # "content":Lcom/oplus/anim/animation/content/Content;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
