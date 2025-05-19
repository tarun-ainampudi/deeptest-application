.class public abstract Lcom/oplus/anim/animation/content/BaseStrokeContent;
.super Ljava/lang/Object;
.source "BaseStrokeContent.java"

# interfaces
.implements Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/oplus/anim/animation/content/KeyPathElementContent;
.implements Lcom/oplus/anim/animation/content/DrawingContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;
    }
.end annotation


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

.field private final dashPatternAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dashPatternOffsetAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final dashPatternValues:[F

.field private final effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field private final layer:Lcom/oplus/anim/model/layer/BaseLayer;

.field private final opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final pathGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final pm:Landroid/graphics/PathMeasure;

.field private final rect:Landroid/graphics/RectF;

.field private final trimPathPath:Landroid/graphics/Path;

.field private final widthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/oplus/anim/model/animatable/AnimatableIntegerValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;)V
    .locals 4
    .param p1, "effectiveAnimationDrawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layer"    # Lcom/oplus/anim/model/layer/BaseLayer;
    .param p3, "cap"    # Landroid/graphics/Paint$Cap;
    .param p4, "join"    # Landroid/graphics/Paint$Join;
    .param p5, "miterLimit"    # F
    .param p6, "opacity"    # Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    .param p7, "width"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .param p9, "offset"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationDrawable;",
            "Lcom/oplus/anim/model/layer/BaseLayer;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "F",
            "Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            ">;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            ")V"
        }
    .end annotation

    .line 59
    .local p8, "dashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/animatable/AnimatableFloatValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/oplus/anim/animation/LPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oplus/anim/animation/LPaint;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    .line 42
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 43
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 60
    iput-object p1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 61
    iput-object p2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    .line 63
    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 65
    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 66
    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 68
    invoke-virtual {p6}, Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 69
    invoke-virtual {p7}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->widthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 71
    if-nez p9, :cond_0

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p9}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 76
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 77
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternValues:[F

    .line 79
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_1
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {p8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {v3}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 83
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 84
    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->widthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 85
    move v1, v0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 86
    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v2}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 88
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_3

    .line 89
    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 92
    :cond_3
    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 93
    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->widthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 95
    nop

    .local v0, "i":I
    :goto_3
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 96
    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 98
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_5

    .line 99
    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 101
    :cond_5
    return-void
.end method

.method private applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V
    .locals 5
    .param p1, "parentMatrix"    # Landroid/graphics/Matrix;

    .line 276
    const-string v0, "StrokeContent#applyDashPattern"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    const-string v0, "StrokeContent#applyDashPattern"

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 279
    return-void

    .line 282
    :cond_0
    invoke-static {p1}, Lcom/oplus/anim/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    .line 283
    .local v0, "scale":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 284
    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternValues:[F

    iget-object v3, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v1

    .line 289
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_1

    .line 290
    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aget v2, v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 291
    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aput v3, v2, v1

    goto :goto_1

    .line 294
    :cond_1
    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aget v2, v2, v1

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 295
    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aput v3, v2, v1

    .line 298
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aget v3, v2, v1

    mul-float/2addr v3, v0

    aput v3, v2, v1

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 301
    .local v1, "offset":F
    :goto_2
    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    iget-object v4, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternValues:[F

    invoke-direct {v3, v4, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 302
    const-string v2, "StrokeContent#applyDashPattern"

    invoke-static {v2}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 303
    return-void
.end method

.method private applyTrimPath(Landroid/graphics/Canvas;Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;Landroid/graphics/Matrix;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pathGroup"    # Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;
    .param p3, "parentMatrix"    # Landroid/graphics/Matrix;

    .line 183
    const-string v0, "StrokeContent#applyTrimPath"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 184
    invoke-static {p2}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Lcom/oplus/anim/animation/content/TrimPathContent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 185
    const-string v0, "StrokeContent#applyTrimPath"

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 186
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 189
    invoke-static {p2}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_1

    .line 190
    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {p2}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v2}, Lcom/oplus/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 189
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 192
    .end local v0    # "j":I
    :cond_1
    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 193
    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    .line 194
    .local v0, "totalLength":F
    :goto_1
    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_1

    .line 197
    :cond_2
    invoke-static {p2}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Lcom/oplus/anim/animation/content/TrimPathContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/anim/animation/content/TrimPathContent;->getOffset()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v0

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v1, v3

    .line 198
    .local v1, "offsetLength":F
    nop

    .line 199
    invoke-static {p2}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Lcom/oplus/anim/animation/content/TrimPathContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/anim/animation/content/TrimPathContent;->getStart()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    .line 200
    .local v3, "startLength":F
    nop

    .line 201
    invoke-static {p2}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Lcom/oplus/anim/animation/content/TrimPathContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/anim/animation/content/TrimPathContent;->getEnd()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v5, v0

    div-float/2addr v5, v4

    add-float/2addr v5, v1

    .line 203
    .local v5, "endLength":F
    const/4 v4, 0x0

    .line 204
    .local v4, "currentLength":F
    invoke-static {p2}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "j":I
    :goto_2
    if-ltz v6, :cond_a

    .line 205
    iget-object v7, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-static {p2}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v8}, Lcom/oplus/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 206
    iget-object v7, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-virtual {v7, p3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 207
    iget-object v7, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    iget-object v8, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-virtual {v7, v8, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 208
    iget-object v7, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v7}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v7

    .line 209
    .local v7, "length":F
    cmpl-float v8, v5, v0

    const/4 v9, 0x0

    if-lez v8, :cond_4

    sub-float v8, v5, v0

    add-float v10, v4, v7

    cmpg-float v8, v8, v10

    if-gez v8, :cond_4

    sub-float v8, v5, v0

    cmpg-float v8, v4, v8

    if-gez v8, :cond_4

    .line 214
    cmpl-float v8, v3, v0

    if-lez v8, :cond_3

    .line 215
    sub-float v8, v3, v0

    div-float/2addr v8, v7

    goto :goto_3

    .line 217
    :cond_3
    move v8, v9

    .line 219
    .local v8, "startValue":F
    :goto_3
    sub-float v10, v5, v0

    div-float/2addr v10, v7

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 220
    .local v10, "endValue":F
    iget-object v11, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-static {v11, v8, v10, v9}, Lcom/oplus/anim/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 221
    iget-object v9, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v11, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 222
    .end local v8    # "startValue":F
    .end local v10    # "endValue":F
    goto :goto_6

    .line 224
    :cond_4
    add-float v8, v4, v7

    cmpg-float v8, v8, v3

    if-ltz v8, :cond_9

    cmpl-float v8, v4, v5

    if-lez v8, :cond_5

    goto :goto_6

    .line 226
    :cond_5
    add-float v8, v4, v7

    cmpg-float v8, v8, v5

    if-gtz v8, :cond_6

    cmpg-float v8, v3, v4

    if-gez v8, :cond_6

    .line 227
    iget-object v8, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 230
    :cond_6
    cmpg-float v8, v3, v4

    if-gez v8, :cond_7

    .line 231
    const/4 v8, 0x0

    goto :goto_4

    .line 233
    :cond_7
    sub-float v8, v3, v4

    div-float/2addr v8, v7

    .line 236
    .restart local v8    # "startValue":F
    :goto_4
    add-float v10, v4, v7

    cmpl-float v10, v5, v10

    if-lez v10, :cond_8

    .line 237
    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_5

    .line 239
    :cond_8
    sub-float v10, v5, v4

    div-float/2addr v10, v7

    .line 241
    .restart local v10    # "endValue":F
    :goto_5
    iget-object v11, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-static {v11, v8, v10, v9}, Lcom/oplus/anim/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 242
    iget-object v9, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v11, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 244
    .end local v8    # "startValue":F
    .end local v10    # "endValue":F
    :cond_9
    :goto_6
    add-float/2addr v4, v7

    .line 204
    .end local v7    # "length":F
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_2

    .line 246
    .end local v6    # "j":I
    :cond_a
    const-string v2, "StrokeContent#applyTrimPath"

    invoke-static {v2}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 247
    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V
    .locals 2
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

    .line 315
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TT;>;"
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->OPACITY:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 317
    :cond_0
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->STROKE_WIDTH:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->widthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 319
    :cond_1
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    .line 320
    if-nez p2, :cond_2

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 323
    :cond_2
    new-instance v0, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {v0, p2}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 325
    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 326
    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, v1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 329
    :cond_3
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .line 146
    const-string v0, "StrokeContent#draw"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 147
    int-to-float v0, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    check-cast v2, Lcom/oplus/anim/animation/keyframe/IntegerKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/IntegerKeyframeAnimation;->getIntValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 148
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-static {v0, v2, v3}, Lcom/oplus/anim/utils/MiscUtils;->clamp(III)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 149
    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->widthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    check-cast v3, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v3}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v3

    invoke-static {p2}, Lcom/oplus/anim/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 150
    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    .line 152
    const-string v1, "StrokeContent#draw"

    invoke-static {v1}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 153
    return-void

    .line 155
    :cond_0
    invoke-direct {p0, p2}, Lcom/oplus/anim/animation/content/BaseStrokeContent;->applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V

    .line 157
    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 161
    :cond_1
    nop

    .local v2, "i":I
    :goto_0
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 162
    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;

    .line 165
    .local v2, "pathGroup":Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;
    invoke-static {v2}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Lcom/oplus/anim/animation/content/TrimPathContent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 166
    invoke-direct {p0, p1, v2, p2}, Lcom/oplus/anim/animation/content/BaseStrokeContent;->applyTrimPath(Landroid/graphics/Canvas;Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;Landroid/graphics/Matrix;)V

    goto :goto_2

    .line 168
    :cond_2
    const-string v3, "StrokeContent#buildPath"

    invoke-static {v3}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 169
    iget-object v3, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 170
    invoke-static {v2}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_3

    .line 171
    iget-object v4, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {v2}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v5}, Lcom/oplus/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 170
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 173
    .end local v3    # "j":I
    :cond_3
    const-string v3, "StrokeContent#buildPath"

    invoke-static {v3}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 174
    const-string v3, "StrokeContent#drawPath"

    invoke-static {v3}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 175
    iget-object v3, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 176
    const-string v3, "StrokeContent#drawPath"

    invoke-static {v3}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 161
    .end local v2    # "pathGroup":Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;
    :goto_2
    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_4
    const-string v1, "StrokeContent#draw"

    invoke-static {v1}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 180
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 7
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "applyParents"    # Z

    .line 251
    const-string v0, "StrokeContent#getBounds"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 253
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 254
    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;

    .line 255
    .local v2, "pathGroup":Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;
    move v3, v0

    .local v3, "j":I
    :goto_1
    invoke-static {v2}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 256
    iget-object v4, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {v2}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v5}, Lcom/oplus/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 253
    .end local v2    # "pathGroup":Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 261
    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->widthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    check-cast v0, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v0

    .line 262
    .local v0, "width":F
    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v0, v3

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    div-float v5, v0, v3

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    div-float v6, v0, v3

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    div-float v3, v0, v3

    add-float/2addr v6, v3

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 264
    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 266
    iget v1, p1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v2

    iget v4, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v2

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v2

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 272
    const-string v1, "StrokeContent#getBounds"

    invoke-static {v1}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 273
    return-void
.end method

.method public onValueChanged()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    .line 106
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

    .line 308
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/KeyPath;>;"
    invoke-static {p1, p2, p3, p4, p0}, Lcom/oplus/anim/utils/MiscUtils;->resolveKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;Lcom/oplus/anim/animation/content/KeyPathElementContent;)V

    .line 309
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 7
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

    .line 110
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/Content;>;"
    const/4 v0, 0x0

    .line 111
    .local v0, "trimPathContentBefore":Lcom/oplus/anim/animation/content/TrimPathContent;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 112
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/animation/content/Content;

    .line 113
    .local v2, "content":Lcom/oplus/anim/animation/content/Content;
    instance-of v3, v2, Lcom/oplus/anim/animation/content/TrimPathContent;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/oplus/anim/animation/content/TrimPathContent;

    .line 114
    invoke-virtual {v3}, Lcom/oplus/anim/animation/content/TrimPathContent;->getType()Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    move-result-object v3

    sget-object v4, Lcom/oplus/anim/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    if-ne v3, v4, :cond_0

    .line 115
    move-object v0, v2

    check-cast v0, Lcom/oplus/anim/animation/content/TrimPathContent;

    .line 111
    .end local v2    # "content":Lcom/oplus/anim/animation/content/Content;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 118
    .end local v1    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/content/TrimPathContent;->addListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 122
    :cond_2
    const/4 v1, 0x0

    .line 123
    .local v1, "currentPathGroup":Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_7

    .line 124
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/anim/animation/content/Content;

    .line 125
    .local v3, "content":Lcom/oplus/anim/animation/content/Content;
    instance-of v4, v3, Lcom/oplus/anim/animation/content/TrimPathContent;

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Lcom/oplus/anim/animation/content/TrimPathContent;

    .line 126
    invoke-virtual {v4}, Lcom/oplus/anim/animation/content/TrimPathContent;->getType()Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    move-result-object v4

    sget-object v6, Lcom/oplus/anim/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    if-ne v4, v6, :cond_4

    .line 127
    if-eqz v1, :cond_3

    .line 128
    iget-object v4, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_3
    new-instance v4, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;

    move-object v6, v3

    check-cast v6, Lcom/oplus/anim/animation/content/TrimPathContent;

    invoke-direct {v4, v6, v5}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/oplus/anim/animation/content/TrimPathContent;Lcom/oplus/anim/animation/content/BaseStrokeContent$1;)V

    move-object v1, v4

    .line 131
    move-object v4, v3

    check-cast v4, Lcom/oplus/anim/animation/content/TrimPathContent;

    invoke-virtual {v4, p0}, Lcom/oplus/anim/animation/content/TrimPathContent;->addListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_2

    .line 132
    :cond_4
    instance-of v4, v3, Lcom/oplus/anim/animation/content/PathContent;

    if-eqz v4, :cond_6

    .line 133
    if-nez v1, :cond_5

    .line 134
    new-instance v4, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;

    invoke-direct {v4, v0, v5}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/oplus/anim/animation/content/TrimPathContent;Lcom/oplus/anim/animation/content/BaseStrokeContent$1;)V

    move-object v1, v4

    .line 136
    :cond_5
    invoke-static {v1}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v3    # "content":Lcom/oplus/anim/animation/content/Content;
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 139
    .end local v2    # "i":I
    :cond_7
    if-eqz v1, :cond_8

    .line 140
    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_8
    return-void
.end method
