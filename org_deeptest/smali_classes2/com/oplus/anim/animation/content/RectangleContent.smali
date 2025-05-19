.class public Lcom/oplus/anim/animation/content/RectangleContent;
.super Ljava/lang/Object;
.source "RectangleContent.java"

# interfaces
.implements Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/oplus/anim/animation/content/KeyPathElementContent;
.implements Lcom/oplus/anim/animation/content/PathContent;


# instance fields
.field private final cornerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field private final hidden:Z

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

.field private final rect:Landroid/graphics/RectF;

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
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/RectangleShape;)V
    .locals 1
    .param p1, "effectiveAnimationDrawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layer"    # Lcom/oplus/anim/model/layer/BaseLayer;
    .param p3, "rectShape"    # Lcom/oplus/anim/model/content/RectangleShape;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 33
    new-instance v0, Lcom/oplus/anim/animation/content/CompoundTrimPathContent;

    invoke-direct {v0}, Lcom/oplus/anim/animation/content/CompoundTrimPathContent;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/RectangleContent;->trimPaths:Lcom/oplus/anim/animation/content/CompoundTrimPathContent;

    .line 37
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/RectangleShape;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/RectangleContent;->name:Ljava/lang/String;

    .line 38
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/RectangleShape;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/anim/animation/content/RectangleContent;->hidden:Z

    .line 39
    iput-object p1, p0, Lcom/oplus/anim/animation/content/RectangleContent;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 40
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/RectangleShape;->getPosition()Lcom/oplus/anim/model/animatable/AnimatableValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/anim/model/animatable/AnimatableValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/RectangleContent;->positionAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 41
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/RectangleShape;->getSize()Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatablePointValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/RectangleContent;->sizeAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 42
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/RectangleShape;->getCornerRadius()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 44
    iget-object v0, p0, Lcom/oplus/anim/animation/content/RectangleContent;->positionAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 45
    iget-object v0, p0, Lcom/oplus/anim/animation/content/RectangleContent;->sizeAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 46
    iget-object v0, p0, Lcom/oplus/anim/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 48
    iget-object v0, p0, Lcom/oplus/anim/animation/content/RectangleContent;->positionAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 49
    iget-object v0, p0, Lcom/oplus/anim/animation/content/RectangleContent;->sizeAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 50
    iget-object v0, p0, Lcom/oplus/anim/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 51
    return-void
.end method

.method private invalidate()V
    .locals 1

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/animation/content/RectangleContent;->isPathValid:Z

    .line 65
    iget-object v0, p0, Lcom/oplus/anim/animation/content/RectangleContent;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    .line 66
    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V
    .locals 0
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

    .line 165
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TT;>;"
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/oplus/anim/animation/content/RectangleContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 17

    .line 83
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/oplus/anim/animation/content/RectangleContent;->isPathValid:Z

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, v0, Lcom/oplus/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    return-object v1

    .line 87
    :cond_0
    iget-object v1, v0, Lcom/oplus/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 89
    iget-boolean v1, v0, Lcom/oplus/anim/animation/content/RectangleContent;->hidden:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 90
    iput-boolean v2, v0, Lcom/oplus/anim/animation/content/RectangleContent;->isPathValid:Z

    .line 91
    iget-object v1, v0, Lcom/oplus/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    return-object v1

    .line 94
    :cond_1
    iget-object v1, v0, Lcom/oplus/anim/animation/content/RectangleContent;->sizeAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 95
    .local v1, "size":Landroid/graphics/PointF;
    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 96
    .local v3, "halfWidth":F
    iget v5, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v5, v4

    .line 97
    .local v5, "halfHeight":F
    iget-object v6, v0, Lcom/oplus/anim/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    const/4 v7, 0x0

    if-nez v6, :cond_2

    .line 98
    move v6, v7

    goto :goto_0

    .line 97
    :cond_2
    iget-object v6, v0, Lcom/oplus/anim/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    check-cast v6, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    .line 98
    invoke-virtual {v6}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v6

    .line 99
    .local v6, "radius":F
    :goto_0
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 100
    .local v8, "maxRadius":F
    cmpl-float v9, v6, v8

    if-lez v9, :cond_3

    .line 101
    move v6, v8

    .line 105
    :cond_3
    iget-object v9, v0, Lcom/oplus/anim/animation/content/RectangleContent;->positionAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v9}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    .line 107
    .local v9, "position":Landroid/graphics/PointF;
    iget-object v10, v0, Lcom/oplus/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget v11, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v3

    iget v12, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v5

    add-float/2addr v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 109
    iget-object v10, v0, Lcom/oplus/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget v11, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v3

    iget v12, v9, Landroid/graphics/PointF;->y:F

    add-float/2addr v12, v5

    sub-float/2addr v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 111
    cmpl-float v10, v6, v7

    const/4 v11, 0x0

    const/high16 v12, 0x42b40000    # 90.0f

    if-lez v10, :cond_4

    .line 112
    iget-object v10, v0, Lcom/oplus/anim/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    iget v13, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v13, v3

    mul-float v14, v6, v4

    sub-float/2addr v13, v14

    iget v14, v9, Landroid/graphics/PointF;->y:F

    add-float/2addr v14, v5

    mul-float v15, v6, v4

    sub-float/2addr v14, v15

    iget v15, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v15, v3

    iget v2, v9, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v5

    invoke-virtual {v10, v13, v14, v15, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 116
    iget-object v2, v0, Lcom/oplus/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/oplus/anim/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v10, v7, v12, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 119
    :cond_4
    iget-object v2, v0, Lcom/oplus/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v3

    add-float/2addr v10, v6

    iget v13, v9, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v5

    invoke-virtual {v2, v10, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 121
    cmpl-float v2, v6, v7

    if-lez v2, :cond_5

    .line 122
    iget-object v2, v0, Lcom/oplus/anim/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v3

    iget v13, v9, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v5

    mul-float v14, v6, v4

    sub-float/2addr v13, v14

    iget v14, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v3

    mul-float v15, v6, v4

    add-float/2addr v14, v15

    iget v15, v9, Landroid/graphics/PointF;->y:F

    add-float/2addr v15, v5

    invoke-virtual {v2, v10, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 126
    iget-object v2, v0, Lcom/oplus/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/oplus/anim/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v10, v12, v12, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 129
    :cond_5
    iget-object v2, v0, Lcom/oplus/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v3

    iget v13, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v5

    add-float/2addr v13, v6

    invoke-virtual {v2, v10, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 131
    cmpl-float v2, v6, v7

    if-lez v2, :cond_6

    .line 132
    iget-object v2, v0, Lcom/oplus/anim/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v3

    iget v13, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v5

    iget v14, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v3

    mul-float v15, v6, v4

    add-float/2addr v14, v15

    iget v15, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v15, v5

    mul-float v16, v6, v4

    add-float v15, v15, v16

    invoke-virtual {v2, v10, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 136
    iget-object v2, v0, Lcom/oplus/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/oplus/anim/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    const/high16 v13, 0x43340000    # 180.0f

    invoke-virtual {v2, v10, v13, v12, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 139
    :cond_6
    iget-object v2, v0, Lcom/oplus/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v3

    sub-float/2addr v10, v6

    iget v13, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v5

    invoke-virtual {v2, v10, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 141
    cmpl-float v2, v6, v7

    if-lez v2, :cond_7

    .line 142
    iget-object v2, v0, Lcom/oplus/anim/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    iget v7, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v3

    mul-float v10, v6, v4

    sub-float/2addr v7, v10

    iget v10, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v5

    iget v13, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v13, v3

    iget v14, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v14, v5

    mul-float/2addr v4, v6

    add-float/2addr v14, v4

    invoke-virtual {v2, v7, v10, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 146
    iget-object v2, v0, Lcom/oplus/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/oplus/anim/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    const/high16 v7, 0x43870000    # 270.0f

    invoke-virtual {v2, v4, v7, v12, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 148
    :cond_7
    iget-object v2, v0, Lcom/oplus/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 150
    iget-object v2, v0, Lcom/oplus/anim/animation/content/RectangleContent;->trimPaths:Lcom/oplus/anim/animation/content/CompoundTrimPathContent;

    iget-object v4, v0, Lcom/oplus/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v4}, Lcom/oplus/anim/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 152
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/oplus/anim/animation/content/RectangleContent;->isPathValid:Z

    .line 153
    iget-object v2, v0, Lcom/oplus/anim/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    return-object v2
.end method

.method public onValueChanged()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/oplus/anim/animation/content/RectangleContent;->invalidate()V

    .line 61
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

    .line 159
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/KeyPath;>;"
    invoke-static {p1, p2, p3, p4, p0}, Lcom/oplus/anim/utils/MiscUtils;->resolveKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;Lcom/oplus/anim/animation/content/KeyPathElementContent;)V

    .line 160
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

    .line 70
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/Content;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 71
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/animation/content/Content;

    .line 72
    .local v1, "content":Lcom/oplus/anim/animation/content/Content;
    instance-of v2, v1, Lcom/oplus/anim/animation/content/TrimPathContent;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/oplus/anim/animation/content/TrimPathContent;

    .line 73
    invoke-virtual {v2}, Lcom/oplus/anim/animation/content/TrimPathContent;->getType()Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    move-result-object v2

    sget-object v3, Lcom/oplus/anim/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    if-ne v2, v3, :cond_0

    .line 74
    move-object v2, v1

    check-cast v2, Lcom/oplus/anim/animation/content/TrimPathContent;

    .line 75
    .local v2, "trimPath":Lcom/oplus/anim/animation/content/TrimPathContent;
    iget-object v3, p0, Lcom/oplus/anim/animation/content/RectangleContent;->trimPaths:Lcom/oplus/anim/animation/content/CompoundTrimPathContent;

    invoke-virtual {v3, v2}, Lcom/oplus/anim/animation/content/CompoundTrimPathContent;->addTrimPath(Lcom/oplus/anim/animation/content/TrimPathContent;)V

    .line 76
    invoke-virtual {v2, p0}, Lcom/oplus/anim/animation/content/TrimPathContent;->addListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 70
    .end local v1    # "content":Lcom/oplus/anim/animation/content/Content;
    .end local v2    # "trimPath":Lcom/oplus/anim/animation/content/TrimPathContent;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
