.class public Lcom/oplus/anim/animation/content/GradientFillContent;
.super Ljava/lang/Object;
.source "GradientFillContent.java"

# interfaces
.implements Lcom/oplus/anim/animation/content/DrawingContent;
.implements Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/oplus/anim/animation/content/KeyPathElementContent;


# static fields
.field private static final CACHE_STEPS_MS:I = 0x20


# instance fields
.field private final boundsRect:Landroid/graphics/RectF;

.field private final cacheSteps:I

.field private final colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/oplus/anim/model/content/GradientColor;",
            "Lcom/oplus/anim/model/content/GradientColor;",
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

.field private final endPointAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

.field private final layer:Lcom/oplus/anim/model/layer/BaseLayer;

.field private final linearGradientCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

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

.field private final radialGradientCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final shaderMatrix:Landroid/graphics/Matrix;

.field private final startPointAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/oplus/anim/model/content/GradientType;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/GradientFill;)V
    .locals 2
    .param p1, "effectiveAnimationDrawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layer"    # Lcom/oplus/anim/model/layer/BaseLayer;
    .param p3, "fill"    # Lcom/oplus/anim/model/content/GradientFill;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->linearGradientCache:Landroid/util/LongSparseArray;

    .line 48
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->radialGradientCache:Landroid/util/LongSparseArray;

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->shaderMatrix:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    .line 51
    new-instance v0, Lcom/oplus/anim/animation/LPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oplus/anim/animation/LPaint;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paths:Ljava/util/List;

    .line 65
    iput-object p2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    .line 66
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/GradientFill;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->name:Ljava/lang/String;

    .line 67
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/GradientFill;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->hidden:Z

    .line 68
    iput-object p1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 69
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/GradientFill;->getGradientType()Lcom/oplus/anim/model/content/GradientType;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->type:Lcom/oplus/anim/model/content/GradientType;

    .line 70
    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/GradientFill;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 71
    invoke-virtual {p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getComposition()Lcom/oplus/anim/EffectiveAnimationComposition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getDuration()F

    move-result v0

    const/high16 v1, 0x42000000    # 32.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->cacheSteps:I

    .line 73
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/GradientFill;->getGradientColor()Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 74
    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 75
    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 77
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/GradientFill;->getOpacity()Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 78
    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 79
    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 81
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/GradientFill;->getStartPoint()Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatablePointValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->startPointAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 82
    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->startPointAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 83
    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->startPointAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 85
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/GradientFill;->getEndPoint()Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatablePointValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->endPointAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 86
    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->endPointAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 87
    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->endPointAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 88
    return-void
.end method

.method private getGradientHash()I
    .locals 5

    .line 203
    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->startPointAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result v0

    iget v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->cacheSteps:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 204
    .local v0, "startPointProgress":I
    iget-object v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->endPointAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result v1

    iget v2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->cacheSteps:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 205
    .local v1, "endPointProgress":I
    iget-object v2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result v2

    iget v3, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->cacheSteps:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 206
    .local v2, "colorProgress":I
    const/16 v3, 0x11

    .line 207
    .local v3, "hash":I
    if-eqz v0, :cond_0

    .line 208
    mul-int/lit8 v4, v3, 0x1f

    mul-int v3, v4, v0

    .line 210
    :cond_0
    if-eqz v1, :cond_1

    .line 211
    mul-int/lit8 v4, v3, 0x1f

    mul-int v3, v4, v1

    .line 213
    :cond_1
    if-eqz v2, :cond_2

    .line 214
    mul-int/lit8 v4, v3, 0x1f

    mul-int v3, v4, v2

    .line 216
    :cond_2
    return v3
.end method

.method private getLinearGradient()Landroid/graphics/LinearGradient;
    .locals 17

    .line 162
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/oplus/anim/animation/content/GradientFillContent;->getGradientHash()I

    move-result v1

    .line 163
    .local v1, "gradientHash":I
    iget-object v2, v0, Lcom/oplus/anim/animation/content/GradientFillContent;->linearGradientCache:Landroid/util/LongSparseArray;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/LinearGradient;

    .line 164
    .local v2, "gradient":Landroid/graphics/LinearGradient;
    if-eqz v2, :cond_0

    .line 165
    return-object v2

    .line 167
    :cond_0
    iget-object v3, v0, Lcom/oplus/anim/animation/content/GradientFillContent;->startPointAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 168
    .local v3, "startPoint":Landroid/graphics/PointF;
    iget-object v4, v0, Lcom/oplus/anim/animation/content/GradientFillContent;->endPointAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 169
    .local v4, "endPoint":Landroid/graphics/PointF;
    iget-object v5, v0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/anim/model/content/GradientColor;

    .line 170
    .local v5, "gradientColor":Lcom/oplus/anim/model/content/GradientColor;
    invoke-virtual {v5}, Lcom/oplus/anim/model/content/GradientColor;->getColors()[I

    move-result-object v14

    .line 171
    .local v14, "colors":[I
    invoke-virtual {v5}, Lcom/oplus/anim/model/content/GradientColor;->getPositions()[F

    move-result-object v15

    .line 172
    .local v15, "positions":[F
    new-instance v16, Landroid/graphics/LinearGradient;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v8, v3, Landroid/graphics/PointF;->y:F

    iget v9, v4, Landroid/graphics/PointF;->x:F

    iget v10, v4, Landroid/graphics/PointF;->y:F

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v6, v16

    move-object v11, v14

    move-object v12, v15

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v2, v16

    .line 174
    iget-object v6, v0, Lcom/oplus/anim/animation/content/GradientFillContent;->linearGradientCache:Landroid/util/LongSparseArray;

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 175
    return-object v2
.end method

.method private getRadialGradient()Landroid/graphics/RadialGradient;
    .locals 22

    .line 179
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/oplus/anim/animation/content/GradientFillContent;->getGradientHash()I

    move-result v1

    .line 180
    .local v1, "gradientHash":I
    iget-object v2, v0, Lcom/oplus/anim/animation/content/GradientFillContent;->radialGradientCache:Landroid/util/LongSparseArray;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RadialGradient;

    .line 181
    .local v2, "gradient":Landroid/graphics/RadialGradient;
    if-eqz v2, :cond_0

    .line 182
    return-object v2

    .line 184
    :cond_0
    iget-object v3, v0, Lcom/oplus/anim/animation/content/GradientFillContent;->startPointAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 185
    .local v3, "startPoint":Landroid/graphics/PointF;
    iget-object v4, v0, Lcom/oplus/anim/animation/content/GradientFillContent;->endPointAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 186
    .local v4, "endPoint":Landroid/graphics/PointF;
    iget-object v5, v0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/anim/model/content/GradientColor;

    .line 187
    .local v5, "gradientColor":Lcom/oplus/anim/model/content/GradientColor;
    invoke-virtual {v5}, Lcom/oplus/anim/model/content/GradientColor;->getColors()[I

    move-result-object v13

    .line 188
    .local v13, "colors":[I
    invoke-virtual {v5}, Lcom/oplus/anim/model/content/GradientColor;->getPositions()[F

    move-result-object v14

    .line 189
    .local v14, "positions":[F
    iget v15, v3, Landroid/graphics/PointF;->x:F

    .line 190
    .local v15, "x0":F
    iget v12, v3, Landroid/graphics/PointF;->y:F

    .line 191
    .local v12, "y0":F
    iget v11, v4, Landroid/graphics/PointF;->x:F

    .line 192
    .local v11, "x1":F
    iget v10, v4, Landroid/graphics/PointF;->y:F

    .line 193
    .local v10, "y1":F
    sub-float v6, v11, v15

    float-to-double v6, v6

    sub-float v8, v10, v12

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    .line 194
    .local v6, "r":F
    const/4 v7, 0x0

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_1

    .line 195
    const v6, 0x3a83126f    # 0.001f

    .line 197
    .end local v6    # "r":F
    .local v16, "r":F
    :cond_1
    move/from16 v16, v6

    new-instance v17, Landroid/graphics/RadialGradient;

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v6, v17

    move v7, v15

    move v8, v12

    move/from16 v9, v16

    move/from16 v19, v10

    .end local v10    # "y1":F
    .local v19, "y1":F
    move-object v10, v13

    move/from16 v20, v11

    .end local v11    # "x1":F
    .local v20, "x1":F
    move-object v11, v14

    move/from16 v21, v12

    .end local v12    # "y0":F
    .local v21, "y0":F
    move-object/from16 v12, v18

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v2, v17

    .line 198
    iget-object v6, v0, Lcom/oplus/anim/animation/content/GradientFillContent;->radialGradientCache:Landroid/util/LongSparseArray;

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 199
    return-object v2
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

    .line 228
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TT;>;"
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_1

    .line 229
    if-nez p2, :cond_0

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 232
    :cond_0
    new-instance v0, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {v0, p2}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 234
    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 235
    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    iget-object v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, v1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 238
    :cond_1
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .line 107
    iget-boolean v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->hidden:Z

    if-eqz v0, :cond_0

    .line 108
    return-void

    .line 110
    :cond_0
    const-string v0, "GradientFillContent#draw"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 112
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v3}, Lcom/oplus/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 119
    iget-object v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->type:Lcom/oplus/anim/model/content/GradientType;

    sget-object v2, Lcom/oplus/anim/model/content/GradientType;->LINEAR:Lcom/oplus/anim/model/content/GradientType;

    if-ne v1, v2, :cond_2

    .line 120
    invoke-direct {p0}, Lcom/oplus/anim/animation/content/GradientFillContent;->getLinearGradient()Landroid/graphics/LinearGradient;

    move-result-object v1

    goto :goto_1

    .line 122
    :cond_2
    invoke-direct {p0}, Lcom/oplus/anim/animation/content/GradientFillContent;->getRadialGradient()Landroid/graphics/RadialGradient;

    move-result-object v1

    .line 124
    .local v1, "shader":Landroid/graphics/Shader;
    :goto_1
    iget-object v2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 125
    iget-object v2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 126
    iget-object v2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 128
    iget-object v2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_3

    .line 129
    iget-object v2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 132
    :cond_3
    int-to-float v2, p3

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 133
    .local v2, "alpha":I
    iget-object v3, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-static {v2, v0, v4}, Lcom/oplus/anim/utils/MiscUtils;->clamp(III)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 135
    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 136
    const-string v0, "GradientFillContent#draw"

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 137
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 5
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "applyParents"    # Z

    .line 141
    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 142
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v3}, Lcom/oplus/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 148
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

    .line 154
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public onValueChanged()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    .line 93
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

    .line 222
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/KeyPath;>;"
    invoke-static {p1, p2, p3, p4, p0}, Lcom/oplus/anim/utils/MiscUtils;->resolveKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;Lcom/oplus/anim/animation/content/KeyPathElementContent;)V

    .line 223
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

    .line 97
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/Content;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 98
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/animation/content/Content;

    .line 99
    .local v1, "content":Lcom/oplus/anim/animation/content/Content;
    instance-of v2, v1, Lcom/oplus/anim/animation/content/PathContent;

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paths:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v1    # "content":Lcom/oplus/anim/animation/content/Content;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
