.class public Lcom/oplus/anim/animation/content/EllipseContent;
.super Ljava/lang/Object;
.source "EllipseContent.java"

# interfaces
.implements Lcom/oplus/anim/animation/content/PathContent;
.implements Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/oplus/anim/animation/content/KeyPathElementContent;


# static fields
.field private static final ELLIPSE_CONTROL_POINT_PERCENTAGE:F = 0.55228f


# instance fields
.field private final circleShape:Lcom/oplus/anim/model/content/CircleShape;

.field private final effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field private isPathValid:Z

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final positionAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private trimPaths:Lcom/oplus/anim/animation/content/CompoundTrimPathContent;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/CircleShape;)V
    .locals 1
    .param p1, "effectiveAnimationDrawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layer"    # Lcom/oplus/anim/model/layer/BaseLayer;
    .param p3, "circleShape"    # Lcom/oplus/anim/model/content/CircleShape;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 32
    new-instance v0, Lcom/oplus/anim/animation/content/CompoundTrimPathContent;

    invoke-direct {v0}, Lcom/oplus/anim/animation/content/CompoundTrimPathContent;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/EllipseContent;->trimPaths:Lcom/oplus/anim/animation/content/CompoundTrimPathContent;

    .line 36
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/CircleShape;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/EllipseContent;->name:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/oplus/anim/animation/content/EllipseContent;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 38
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/CircleShape;->getSize()Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatablePointValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/EllipseContent;->sizeAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 39
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/CircleShape;->getPosition()Lcom/oplus/anim/model/animatable/AnimatableValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/anim/model/animatable/AnimatableValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/EllipseContent;->positionAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 40
    iput-object p3, p0, Lcom/oplus/anim/animation/content/EllipseContent;->circleShape:Lcom/oplus/anim/model/content/CircleShape;

    .line 42
    iget-object v0, p0, Lcom/oplus/anim/animation/content/EllipseContent;->sizeAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 43
    iget-object v0, p0, Lcom/oplus/anim/animation/content/EllipseContent;->positionAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 45
    iget-object v0, p0, Lcom/oplus/anim/animation/content/EllipseContent;->sizeAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 46
    iget-object v0, p0, Lcom/oplus/anim/animation/content/EllipseContent;->positionAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 47
    return-void
.end method

.method private invalidate()V
    .locals 1

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/animation/content/EllipseContent;->isPathValid:Z

    .line 56
    iget-object v0, p0, Lcom/oplus/anim/animation/content/EllipseContent;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    .line 57
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

    .line 132
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TT;>;"
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->ELLIPSE_SIZE:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/oplus/anim/animation/content/EllipseContent;->sizeAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 134
    :cond_0
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->POSITION:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/oplus/anim/animation/content/EllipseContent;->positionAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    .line 137
    :cond_1
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/oplus/anim/animation/content/EllipseContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 23

    .line 78
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/oplus/anim/animation/content/EllipseContent;->isPathValid:Z

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, v0, Lcom/oplus/anim/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    return-object v1

    .line 82
    :cond_0
    iget-object v1, v0, Lcom/oplus/anim/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 84
    iget-object v1, v0, Lcom/oplus/anim/animation/content/EllipseContent;->circleShape:Lcom/oplus/anim/model/content/CircleShape;

    invoke-virtual {v1}, Lcom/oplus/anim/model/content/CircleShape;->isHidden()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 85
    iput-boolean v2, v0, Lcom/oplus/anim/animation/content/EllipseContent;->isPathValid:Z

    .line 86
    iget-object v1, v0, Lcom/oplus/anim/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    return-object v1

    .line 89
    :cond_1
    iget-object v1, v0, Lcom/oplus/anim/animation/content/EllipseContent;->sizeAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 90
    .local v1, "size":Landroid/graphics/PointF;
    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 91
    .local v3, "halfWidth":F
    iget v5, v1, Landroid/graphics/PointF;->y:F

    div-float v4, v5, v4

    .line 94
    .local v4, "halfHeight":F
    const v5, 0x3f0d6239    # 0.55228f

    mul-float v13, v3, v5

    .line 95
    .local v13, "cpW":F
    mul-float v14, v4, v5

    .line 97
    .local v14, "cpH":F
    iget-object v5, v0, Lcom/oplus/anim/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 98
    iget-object v5, v0, Lcom/oplus/anim/animation/content/EllipseContent;->circleShape:Lcom/oplus/anim/model/content/CircleShape;

    invoke-virtual {v5}, Lcom/oplus/anim/model/content/CircleShape;->isReversed()Z

    move-result v5

    const/4 v15, 0x0

    if-eqz v5, :cond_2

    .line 99
    iget-object v5, v0, Lcom/oplus/anim/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    neg-float v6, v4

    invoke-virtual {v5, v15, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 100
    iget-object v5, v0, Lcom/oplus/anim/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    sub-float v17, v15, v13

    neg-float v6, v4

    neg-float v7, v3

    sub-float v20, v15, v14

    neg-float v8, v3

    const/16 v22, 0x0

    move-object/from16 v16, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v21, v8

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 101
    iget-object v6, v0, Lcom/oplus/anim/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    neg-float v7, v3

    add-float v8, v14, v15

    sub-float v9, v15, v13

    const/4 v11, 0x0

    move v10, v4

    move v12, v4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 102
    iget-object v5, v0, Lcom/oplus/anim/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    add-float v6, v13, v15

    add-float v9, v14, v15

    move v7, v4

    move v8, v3

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 103
    iget-object v5, v0, Lcom/oplus/anim/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    sub-float v7, v15, v14

    add-float v8, v13, v15

    neg-float v9, v4

    const/4 v10, 0x0

    neg-float v11, v4

    move v6, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v5, v0, Lcom/oplus/anim/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    neg-float v6, v4

    invoke-virtual {v5, v15, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 106
    iget-object v5, v0, Lcom/oplus/anim/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    add-float v6, v13, v15

    neg-float v7, v4

    sub-float v9, v15, v14

    const/4 v11, 0x0

    move v8, v3

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 107
    iget-object v5, v0, Lcom/oplus/anim/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    add-float v7, v14, v15

    add-float v8, v13, v15

    const/4 v10, 0x0

    move v6, v3

    move v9, v4

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 108
    iget-object v6, v0, Lcom/oplus/anim/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    sub-float v7, v15, v13

    neg-float v9, v3

    add-float v10, v14, v15

    neg-float v11, v3

    const/4 v12, 0x0

    move v8, v4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 109
    iget-object v5, v0, Lcom/oplus/anim/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    neg-float v6, v3

    sub-float v18, v15, v14

    sub-float v19, v15, v13

    neg-float v7, v4

    const/16 v21, 0x0

    neg-float v8, v4

    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v20, v7

    move/from16 v22, v8

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 112
    :goto_0
    iget-object v5, v0, Lcom/oplus/anim/animation/content/EllipseContent;->positionAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 113
    .local v5, "position":Landroid/graphics/PointF;
    iget-object v6, v0, Lcom/oplus/anim/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->offset(FF)V

    .line 115
    iget-object v6, v0, Lcom/oplus/anim/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 117
    iget-object v6, v0, Lcom/oplus/anim/animation/content/EllipseContent;->trimPaths:Lcom/oplus/anim/animation/content/CompoundTrimPathContent;

    iget-object v7, v0, Lcom/oplus/anim/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    invoke-virtual {v6, v7}, Lcom/oplus/anim/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 119
    iput-boolean v2, v0, Lcom/oplus/anim/animation/content/EllipseContent;->isPathValid:Z

    .line 120
    iget-object v2, v0, Lcom/oplus/anim/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    return-object v2
.end method

.method public onValueChanged()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/oplus/anim/animation/content/EllipseContent;->invalidate()V

    .line 52
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

    .line 126
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/KeyPath;>;"
    invoke-static {p1, p2, p3, p4, p0}, Lcom/oplus/anim/utils/MiscUtils;->resolveKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;Lcom/oplus/anim/animation/content/KeyPathElementContent;)V

    .line 127
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

    .line 61
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/Content;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 62
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/animation/content/Content;

    .line 63
    .local v1, "content":Lcom/oplus/anim/animation/content/Content;
    instance-of v2, v1, Lcom/oplus/anim/animation/content/TrimPathContent;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/oplus/anim/animation/content/TrimPathContent;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/content/TrimPathContent;->getType()Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    move-result-object v2

    sget-object v3, Lcom/oplus/anim/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    if-ne v2, v3, :cond_0

    .line 64
    move-object v2, v1

    check-cast v2, Lcom/oplus/anim/animation/content/TrimPathContent;

    .line 65
    .local v2, "trimPath":Lcom/oplus/anim/animation/content/TrimPathContent;
    iget-object v3, p0, Lcom/oplus/anim/animation/content/EllipseContent;->trimPaths:Lcom/oplus/anim/animation/content/CompoundTrimPathContent;

    invoke-virtual {v3, v2}, Lcom/oplus/anim/animation/content/CompoundTrimPathContent;->addTrimPath(Lcom/oplus/anim/animation/content/TrimPathContent;)V

    .line 66
    invoke-virtual {v2, p0}, Lcom/oplus/anim/animation/content/TrimPathContent;->addListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 61
    .end local v1    # "content":Lcom/oplus/anim/animation/content/Content;
    .end local v2    # "trimPath":Lcom/oplus/anim/animation/content/TrimPathContent;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
