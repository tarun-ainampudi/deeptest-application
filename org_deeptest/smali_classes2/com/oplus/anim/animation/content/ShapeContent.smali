.class public Lcom/oplus/anim/animation/content/ShapeContent;
.super Ljava/lang/Object;
.source "ShapeContent.java"

# interfaces
.implements Lcom/oplus/anim/animation/content/PathContent;
.implements Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# instance fields
.field private final effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field private final hidden:Z

.field private isPathValid:Z

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final shapeAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private trimPaths:Lcom/oplus/anim/animation/content/CompoundTrimPathContent;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/ShapePath;)V
    .locals 1
    .param p1, "effectiveAnimationDrawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layer"    # Lcom/oplus/anim/model/layer/BaseLayer;
    .param p3, "shape"    # Lcom/oplus/anim/model/content/ShapePath;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    .line 22
    new-instance v0, Lcom/oplus/anim/animation/content/CompoundTrimPathContent;

    invoke-direct {v0}, Lcom/oplus/anim/animation/content/CompoundTrimPathContent;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/ShapeContent;->trimPaths:Lcom/oplus/anim/animation/content/CompoundTrimPathContent;

    .line 25
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapePath;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/ShapeContent;->name:Ljava/lang/String;

    .line 26
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapePath;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/anim/animation/content/ShapeContent;->hidden:Z

    .line 27
    iput-object p1, p0, Lcom/oplus/anim/animation/content/ShapeContent;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 28
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapePath;->getShapePath()Lcom/oplus/anim/model/animatable/AnimatableShapeValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableShapeValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/ShapeContent;->shapeAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 29
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ShapeContent;->shapeAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 30
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ShapeContent;->shapeAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 31
    return-void
.end method

.method private invalidate()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/animation/content/ShapeContent;->isPathValid:Z

    .line 40
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ShapeContent;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    .line 41
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ShapeContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 3

    .line 59
    iget-boolean v0, p0, Lcom/oplus/anim/animation/content/ShapeContent;->isPathValid:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    return-object v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 65
    iget-boolean v0, p0, Lcom/oplus/anim/animation/content/ShapeContent;->hidden:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 66
    iput-boolean v1, p0, Lcom/oplus/anim/animation/content/ShapeContent;->isPathValid:Z

    .line 67
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    return-object v0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oplus/anim/animation/content/ShapeContent;->shapeAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 71
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 73
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ShapeContent;->trimPaths:Lcom/oplus/anim/animation/content/CompoundTrimPathContent;

    iget-object v2, p0, Lcom/oplus/anim/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lcom/oplus/anim/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 75
    iput-boolean v1, p0, Lcom/oplus/anim/animation/content/ShapeContent;->isPathValid:Z

    .line 76
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method public onValueChanged()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/oplus/anim/animation/content/ShapeContent;->invalidate()V

    .line 36
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

    .line 45
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/Content;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 46
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/animation/content/Content;

    .line 47
    .local v1, "content":Lcom/oplus/anim/animation/content/Content;
    instance-of v2, v1, Lcom/oplus/anim/animation/content/TrimPathContent;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/oplus/anim/animation/content/TrimPathContent;

    .line 48
    invoke-virtual {v2}, Lcom/oplus/anim/animation/content/TrimPathContent;->getType()Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    move-result-object v2

    sget-object v3, Lcom/oplus/anim/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    if-ne v2, v3, :cond_0

    .line 50
    move-object v2, v1

    check-cast v2, Lcom/oplus/anim/animation/content/TrimPathContent;

    .line 51
    .local v2, "trimPath":Lcom/oplus/anim/animation/content/TrimPathContent;
    iget-object v3, p0, Lcom/oplus/anim/animation/content/ShapeContent;->trimPaths:Lcom/oplus/anim/animation/content/CompoundTrimPathContent;

    invoke-virtual {v3, v2}, Lcom/oplus/anim/animation/content/CompoundTrimPathContent;->addTrimPath(Lcom/oplus/anim/animation/content/TrimPathContent;)V

    .line 52
    invoke-virtual {v2, p0}, Lcom/oplus/anim/animation/content/TrimPathContent;->addListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 45
    .end local v1    # "content":Lcom/oplus/anim/animation/content/Content;
    .end local v2    # "trimPath":Lcom/oplus/anim/animation/content/TrimPathContent;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
