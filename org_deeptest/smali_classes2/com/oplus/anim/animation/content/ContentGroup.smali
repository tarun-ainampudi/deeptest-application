.class public Lcom/oplus/anim/animation/content/ContentGroup;
.super Ljava/lang/Object;
.source "ContentGroup.java"

# interfaces
.implements Lcom/oplus/anim/animation/content/DrawingContent;
.implements Lcom/oplus/anim/animation/content/PathContent;
.implements Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/oplus/anim/model/KeyPathElement;


# instance fields
.field private final contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/content/Content;",
            ">;"
        }
    .end annotation
.end field

.field private final effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field private final hidden:Z

.field private final matrix:Landroid/graphics/Matrix;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private pathContents:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/content/PathContent;",
            ">;"
        }
    .end annotation
.end field

.field private final rect:Landroid/graphics/RectF;

.field private transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/ShapeGroup;)V
    .locals 7
    .param p1, "effectiveAnimationDrawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layer"    # Lcom/oplus/anim/model/layer/BaseLayer;
    .param p3, "shapeGroup"    # Lcom/oplus/anim/model/content/ShapeGroup;

    .line 41
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeGroup;->getName()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeGroup;->isHidden()Z

    move-result v4

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeGroup;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/oplus/anim/animation/content/ContentGroup;->contentsFromModels(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 43
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeGroup;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/animation/content/ContentGroup;->findTransform(Ljava/util/List;)Lcom/oplus/anim/model/animatable/AnimatableTransform;

    move-result-object v6

    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/oplus/anim/animation/content/ContentGroup;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Ljava/lang/String;ZLjava/util/List;Lcom/oplus/anim/model/animatable/AnimatableTransform;)V

    .line 44
    return-void
.end method

.method constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Ljava/lang/String;ZLjava/util/List;Lcom/oplus/anim/model/animatable/AnimatableTransform;)V
    .locals 4
    .param p1, "effectiveAnimationDrawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layer"    # Lcom/oplus/anim/model/layer/BaseLayer;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "hidden"    # Z
    .param p6, "transform"    # Lcom/oplus/anim/model/animatable/AnimatableTransform;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationDrawable;",
            "Lcom/oplus/anim/model/layer/BaseLayer;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/content/Content;",
            ">;",
            "Lcom/oplus/anim/model/animatable/AnimatableTransform;",
            ")V"
        }
    .end annotation

    .line 46
    .local p5, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/Content;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    .line 30
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    .line 47
    iput-object p3, p0, Lcom/oplus/anim/animation/content/ContentGroup;->name:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/oplus/anim/animation/content/ContentGroup;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 49
    iput-boolean p4, p0, Lcom/oplus/anim/animation/content/ContentGroup;->hidden:Z

    .line 50
    iput-object p5, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    .line 51
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentGroup::name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 55
    :cond_0
    if-eqz p6, :cond_1

    .line 56
    invoke-virtual {p6}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->createAnimation()Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    .line 57
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->addAnimationsToLayer(Lcom/oplus/anim/model/layer/BaseLayer;)V

    .line 58
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->addListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 61
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "greedyContents":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/GreedyContent;>;"
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 63
    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/animation/content/Content;

    .line 64
    .local v2, "content":Lcom/oplus/anim/animation/content/Content;
    instance-of v3, v2, Lcom/oplus/anim/animation/content/GreedyContent;

    if-eqz v3, :cond_2

    .line 65
    move-object v3, v2

    check-cast v3, Lcom/oplus/anim/animation/content/GreedyContent;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v2    # "content":Lcom/oplus/anim/animation/content/Content;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 69
    .end local v1    # "i":I
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/animation/content/GreedyContent;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p5, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/oplus/anim/animation/content/GreedyContent;->absorbContent(Ljava/util/ListIterator;)V

    .line 69
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 72
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method private static contentsFromModels(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "drawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p1, "layer"    # Lcom/oplus/anim/model/layer/BaseLayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationDrawable;",
            "Lcom/oplus/anim/model/layer/BaseLayer;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/content/ContentModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/content/Content;",
            ">;"
        }
    .end annotation

    .line 76
    .local p2, "contentModels":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .local v0, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/Content;>;"
    sget-boolean v1, Lcom/oplus/anim/utils/OplusLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v1, :cond_0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentGroup::contentsFromModels()::contentModels.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 80
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 81
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/model/content/ContentModel;

    invoke-interface {v2, p0, p1}, Lcom/oplus/anim/model/content/ContentModel;->toContent(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;)Lcom/oplus/anim/animation/content/Content;

    move-result-object v2

    .line 82
    .local v2, "content":Lcom/oplus/anim/animation/content/Content;
    sget-boolean v3, Lcom/oplus/anim/utils/OplusLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v3, :cond_1

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentGroup::contentsFromModels()::content + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 85
    :cond_1
    if-eqz v2, :cond_3

    .line 86
    sget-boolean v3, Lcom/oplus/anim/utils/OplusLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v3, :cond_2

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentGroup::contentsFromModels()::content = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 89
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v2    # "content":Lcom/oplus/anim/animation/content/Content;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "i":I
    :cond_4
    return-object v0
.end method

.method static findTransform(Ljava/util/List;)Lcom/oplus/anim/model/animatable/AnimatableTransform;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/content/ContentModel;",
            ">;)",
            "Lcom/oplus/anim/model/animatable/AnimatableTransform;"
        }
    .end annotation

    .line 97
    .local p0, "contentModels":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 98
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/model/content/ContentModel;

    .line 99
    .local v1, "contentModel":Lcom/oplus/anim/model/content/ContentModel;
    instance-of v2, v1, Lcom/oplus/anim/model/animatable/AnimatableTransform;

    if-eqz v2, :cond_1

    .line 100
    sget-boolean v2, Lcom/oplus/anim/utils/OplusLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v2, :cond_0

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentGroup::findTransform()::contentModel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 103
    :cond_0
    move-object v2, v1

    check-cast v2, Lcom/oplus/anim/model/animatable/AnimatableTransform;

    return-object v2

    .line 97
    .end local v1    # "contentModel":Lcom/oplus/anim/model/content/ContentModel;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
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

    .line 258
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TT;>;"
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->applyValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)Z

    .line 261
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .line 175
    iget-boolean v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->hidden:Z

    if-eqz v0, :cond_0

    .line 176
    return-void

    .line 178
    :cond_0
    const-string v0, "ContentGroup#draw"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 181
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/oplus/anim/animation/content/ContentGroup;->transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 183
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0x64

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 184
    .local v0, "opacity":I
    :goto_0
    int-to-float v1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    int-to-float v2, p3

    mul-float/2addr v1, v2

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 185
    .local v0, "alpha":I
    goto :goto_1

    .line 186
    .end local v0    # "alpha":I
    :cond_2
    move v0, p3

    .line 189
    .restart local v0    # "alpha":I
    :goto_1
    iget-object v1, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_5

    .line 190
    iget-object v2, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 191
    .local v2, "content":Ljava/lang/Object;
    instance-of v3, v2, Lcom/oplus/anim/animation/content/DrawingContent;

    if-eqz v3, :cond_4

    .line 192
    sget-boolean v3, Lcom/oplus/anim/utils/OplusLog;->DEBUG_DRAW:Z

    if-eqz v3, :cond_3

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentGroup::draw() content = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v2

    check-cast v4, Lcom/oplus/anim/animation/content/DrawingContent;

    invoke-interface {v4}, Lcom/oplus/anim/animation/content/DrawingContent;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 195
    :cond_3
    move-object v3, v2

    check-cast v3, Lcom/oplus/anim/animation/content/DrawingContent;

    iget-object v4, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v3, p1, v4, v0}, Lcom/oplus/anim/animation/content/DrawingContent;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 189
    .end local v2    # "content":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 198
    .end local v1    # "i":I
    :cond_5
    const-string v1, "ContentGroup#draw"

    invoke-static {v1}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 199
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 5
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "applyParents"    # Z

    .line 203
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 204
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/oplus/anim/animation/content/ContentGroup;->transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 208
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 209
    iget-object v1, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/animation/content/Content;

    .line 210
    .local v1, "content":Lcom/oplus/anim/animation/content/Content;
    instance-of v2, v1, Lcom/oplus/anim/animation/content/DrawingContent;

    if-eqz v2, :cond_1

    .line 211
    move-object v2, v1

    check-cast v2, Lcom/oplus/anim/animation/content/DrawingContent;

    iget-object v3, p0, Lcom/oplus/anim/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v2, v3, v4, p3}, Lcom/oplus/anim/animation/content/DrawingContent;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 212
    iget-object v2, p0, Lcom/oplus/anim/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 208
    .end local v1    # "content":Lcom/oplus/anim/animation/content/Content;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 215
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 5

    .line 156
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 157
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/oplus/anim/animation/content/ContentGroup;->transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 161
    iget-boolean v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->hidden:Z

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    return-object v0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 165
    iget-object v1, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/animation/content/Content;

    .line 166
    .local v1, "content":Lcom/oplus/anim/animation/content/Content;
    instance-of v2, v1, Lcom/oplus/anim/animation/content/PathContent;

    if-eqz v2, :cond_2

    .line 167
    iget-object v2, p0, Lcom/oplus/anim/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    move-object v3, v1

    check-cast v3, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v3}, Lcom/oplus/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 164
    .end local v1    # "content":Lcom/oplus/anim/animation/content/Content;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 170
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method getPathList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/content/PathContent;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/animation/content/Content;

    .line 137
    .local v1, "content":Lcom/oplus/anim/animation/content/Content;
    instance-of v2, v1, Lcom/oplus/anim/animation/content/PathContent;

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/oplus/anim/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v1    # "content":Lcom/oplus/anim/animation/content/Content;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    return-object v0
.end method

.method getTransformationMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 150
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public onValueChanged()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    .line 112
    return-void
.end method

.method public resolveKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;)V
    .locals 5
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

    .line 220
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/KeyPath;>;"
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_KEYPATH:Z

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "ContentGroup::resolveChildKeyPath()"

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/anim/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/oplus/anim/model/KeyPath;->matches(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    return-void

    .line 227
    :cond_1
    const-string v0, "__container"

    invoke-virtual {p0}, Lcom/oplus/anim/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 228
    invoke-virtual {p0}, Lcom/oplus/anim/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/oplus/anim/model/KeyPath;->addKey(Ljava/lang/String;)Lcom/oplus/anim/model/KeyPath;

    move-result-object p4

    .line 230
    invoke-virtual {p0}, Lcom/oplus/anim/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/oplus/anim/model/KeyPath;->fullyResolvesTo(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 231
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_KEYPATH:Z

    if-eqz v0, :cond_2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentGroup::resolveChildKeyPath():name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 234
    :cond_2
    invoke-virtual {p4, p0}, Lcom/oplus/anim/model/KeyPath;->resolve(Lcom/oplus/anim/model/KeyPathElement;)Lcom/oplus/anim/model/KeyPath;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/anim/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/oplus/anim/model/KeyPath;->propagateToChildren(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 239
    invoke-virtual {p0}, Lcom/oplus/anim/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/oplus/anim/model/KeyPath;->incrementDepthBy(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, p2

    .line 240
    .local v0, "newDepth":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 241
    iget-object v2, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/animation/content/Content;

    .line 242
    .local v2, "content":Lcom/oplus/anim/animation/content/Content;
    sget-boolean v3, Lcom/oplus/anim/utils/OplusLog;->DEBUG_KEYPATH:Z

    if-eqz v3, :cond_4

    .line 243
    const-string v3, "ContentGroup::resolveChildKeyPath()"

    invoke-static {v3}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 245
    :cond_4
    instance-of v3, v2, Lcom/oplus/anim/model/KeyPathElement;

    if-eqz v3, :cond_6

    .line 246
    move-object v3, v2

    check-cast v3, Lcom/oplus/anim/model/KeyPathElement;

    .line 247
    .local v3, "element":Lcom/oplus/anim/model/KeyPathElement;
    sget-boolean v4, Lcom/oplus/anim/utils/OplusLog;->DEBUG_KEYPATH:Z

    if-eqz v4, :cond_5

    .line 248
    const-string v4, "ContentGroup::resolveChildKeyPath()"

    invoke-static {v4}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 250
    :cond_5
    invoke-interface {v3, p1, v0, p3, p4}, Lcom/oplus/anim/model/KeyPathElement;->resolveKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;)V

    .line 240
    .end local v2    # "content":Lcom/oplus/anim/animation/content/Content;
    .end local v3    # "element":Lcom/oplus/anim/model/KeyPathElement;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    .end local v0    # "newDepth":I
    .end local v1    # "i":I
    :cond_7
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 5
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

    .line 122
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/Content;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    .local v0, "myContentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/Content;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    iget-object v1, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 126
    iget-object v2, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/animation/content/Content;

    .line 127
    .local v2, "content":Lcom/oplus/anim/animation/content/Content;
    iget-object v3, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/oplus/anim/animation/content/Content;->setContents(Ljava/util/List;Ljava/util/List;)V

    .line 128
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v2    # "content":Lcom/oplus/anim/animation/content/Content;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 130
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
