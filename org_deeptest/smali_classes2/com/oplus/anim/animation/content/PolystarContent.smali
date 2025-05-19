.class public Lcom/oplus/anim/animation/content/PolystarContent;
.super Ljava/lang/Object;
.source "PolystarContent.java"

# interfaces
.implements Lcom/oplus/anim/animation/content/PathContent;
.implements Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/oplus/anim/animation/content/KeyPathElementContent;


# static fields
.field private static final POLYGON_MAGIC_NUMBER:F = 0.25f

.field private static final POLYSTAR_MAGIC_NUMBER:F = 0.47829f


# instance fields
.field private final effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field private final hidden:Z

.field private final innerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
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

.field private final innerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
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

.field private isPathValid:Z

.field private final name:Ljava/lang/String;

.field private final outerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final outerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final pointsAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

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

.field private final rotationAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private trimPaths:Lcom/oplus/anim/animation/content/CompoundTrimPathContent;

.field private final type:Lcom/oplus/anim/model/content/PolystarShape$Type;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/PolystarShape;)V
    .locals 2
    .param p1, "effectiveAnimationDrawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layer"    # Lcom/oplus/anim/model/layer/BaseLayer;
    .param p3, "polystarShape"    # Lcom/oplus/anim/model/content/PolystarShape;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 46
    new-instance v0, Lcom/oplus/anim/animation/content/CompoundTrimPathContent;

    invoke-direct {v0}, Lcom/oplus/anim/animation/content/CompoundTrimPathContent;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->trimPaths:Lcom/oplus/anim/animation/content/CompoundTrimPathContent;

    .line 51
    iput-object p1, p0, Lcom/oplus/anim/animation/content/PolystarContent;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 53
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/PolystarShape;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->name:Ljava/lang/String;

    .line 54
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/PolystarShape;->getType()Lcom/oplus/anim/model/content/PolystarShape$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->type:Lcom/oplus/anim/model/content/PolystarShape$Type;

    .line 55
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/PolystarShape;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->hidden:Z

    .line 56
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/PolystarShape;->getPoints()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->pointsAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 57
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/PolystarShape;->getPosition()Lcom/oplus/anim/model/animatable/AnimatableValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/anim/model/animatable/AnimatableValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->positionAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 58
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/PolystarShape;->getRotation()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->rotationAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 59
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/PolystarShape;->getOuterRadius()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 60
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/PolystarShape;->getOuterRoundedness()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 61
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->type:Lcom/oplus/anim/model/content/PolystarShape$Type;

    sget-object v1, Lcom/oplus/anim/model/content/PolystarShape$Type;->STAR:Lcom/oplus/anim/model/content/PolystarShape$Type;

    if-ne v0, v1, :cond_0

    .line 62
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/PolystarShape;->getInnerRadius()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 63
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/PolystarShape;->getInnerRoundedness()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 65
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 66
    iput-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->pointsAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 70
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->positionAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 71
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->rotationAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 72
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 73
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 74
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->type:Lcom/oplus/anim/model/content/PolystarShape$Type;

    sget-object v1, Lcom/oplus/anim/model/content/PolystarShape$Type;->STAR:Lcom/oplus/anim/model/content/PolystarShape$Type;

    if-ne v0, v1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 76
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->pointsAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 80
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->positionAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 81
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->rotationAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 82
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 83
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 84
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->type:Lcom/oplus/anim/model/content/PolystarShape$Type;

    sget-object v1, Lcom/oplus/anim/model/content/PolystarShape$Type;->STAR:Lcom/oplus/anim/model/content/PolystarShape$Type;

    if-ne v0, v1, :cond_2

    .line 85
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 86
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 88
    :cond_2
    return-void
.end method

.method private createPolygonPath()V
    .locals 32

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oplus/anim/animation/content/PolystarContent;->pointsAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 256
    .local v1, "points":I
    iget-object v2, v0, Lcom/oplus/anim/animation/content/PolystarContent;->rotationAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/oplus/anim/animation/content/PolystarContent;->rotationAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    .line 258
    .local v2, "currentAngle":D
    :goto_0
    const-wide v4, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v4

    .line 260
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 262
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v6, v1

    div-double/2addr v4, v6

    double-to-float v4, v4

    .line 264
    .local v4, "anglePerPoint":F
    iget-object v5, v0, Lcom/oplus/anim/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    .line 265
    .local v5, "roundedness":F
    iget-object v6, v0, Lcom/oplus/anim/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v6}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 270
    .local v6, "radius":F
    float-to-double v7, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    double-to-float v7, v7

    .line 271
    .local v7, "x":F
    float-to-double v8, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v8, v8

    .line 272
    .local v8, "y":F
    iget-object v9, v0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 273
    float-to-double v9, v4

    add-double/2addr v2, v9

    .line 275
    int-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    .line 276
    .local v9, "numPoints":D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    int-to-double v12, v11

    cmpg-double v12, v12, v9

    if-gez v12, :cond_2

    .line 277
    move v12, v7

    .line 278
    .local v12, "previousX":F
    move v13, v8

    .line 279
    .local v13, "previousY":F
    float-to-double v14, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v7, v14

    .line 280
    float-to-double v14, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v8, v14

    .line 282
    const/4 v14, 0x0

    cmpl-float v14, v5, v14

    if-eqz v14, :cond_1

    .line 283
    float-to-double v14, v13

    move-wide/from16 v23, v9

    .end local v9    # "numPoints":D
    .local v23, "numPoints":D
    float-to-double v9, v12

    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v9, v14

    double-to-float v9, v9

    .line 284
    .local v9, "cp1Theta":F
    float-to-double v14, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v10, v14

    .line 285
    .local v10, "cp1Dx":F
    float-to-double v14, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v14, v14

    .line 287
    .local v14, "cp1Dy":F
    move/from16 v27, v1

    move-wide/from16 v28, v2

    .end local v1    # "points":I
    .end local v2    # "currentAngle":D
    .local v27, "points":I
    .local v28, "currentAngle":D
    float-to-double v1, v8

    move/from16 v30, v4

    .end local v4    # "anglePerPoint":F
    .local v30, "anglePerPoint":F
    float-to-double v3, v7

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v1, v3

    double-to-float v1, v1

    .line 288
    .local v1, "cp2Theta":F
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 289
    .local v2, "cp2Dx":F
    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 291
    .local v3, "cp2Dy":F
    mul-float v4, v6, v5

    const/high16 v15, 0x3e800000    # 0.25f

    mul-float/2addr v4, v15

    mul-float/2addr v4, v10

    .line 292
    .local v4, "cp1x":F
    mul-float v16, v6, v5

    mul-float v16, v16, v15

    mul-float v25, v16, v14

    .line 293
    .local v25, "cp1y":F
    mul-float v16, v6, v5

    mul-float v16, v16, v15

    mul-float v26, v16, v2

    .line 294
    .local v26, "cp2x":F
    mul-float v16, v6, v5

    mul-float v16, v16, v15

    mul-float v15, v16, v3

    .line 295
    .local v15, "cp2y":F
    move/from16 v31, v1

    .end local v1    # "cp2Theta":F
    .local v31, "cp2Theta":F
    iget-object v1, v0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    sub-float v17, v12, v4

    sub-float v18, v13, v25

    add-float v19, v7, v26

    add-float v20, v8, v15

    move-object/from16 v16, v1

    move/from16 v21, v7

    move/from16 v22, v8

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 296
    .end local v2    # "cp2Dx":F
    .end local v3    # "cp2Dy":F
    .end local v4    # "cp1x":F
    .end local v9    # "cp1Theta":F
    .end local v10    # "cp1Dx":F
    .end local v14    # "cp1Dy":F
    .end local v15    # "cp2y":F
    .end local v25    # "cp1y":F
    .end local v26    # "cp2x":F
    .end local v31    # "cp2Theta":F
    goto :goto_2

    .line 297
    .end local v23    # "numPoints":D
    .end local v27    # "points":I
    .end local v28    # "currentAngle":D
    .end local v30    # "anglePerPoint":F
    .local v1, "points":I
    .local v2, "currentAngle":D
    .local v4, "anglePerPoint":F
    .local v9, "numPoints":D
    :cond_1
    move/from16 v27, v1

    move-wide/from16 v28, v2

    move/from16 v30, v4

    move-wide/from16 v23, v9

    .end local v1    # "points":I
    .end local v2    # "currentAngle":D
    .end local v4    # "anglePerPoint":F
    .end local v9    # "numPoints":D
    .restart local v23    # "numPoints":D
    .restart local v27    # "points":I
    .restart local v28    # "currentAngle":D
    .restart local v30    # "anglePerPoint":F
    iget-object v1, v0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 300
    :goto_2
    move/from16 v1, v30

    .end local v30    # "anglePerPoint":F
    .local v1, "anglePerPoint":F
    float-to-double v2, v1

    add-double v2, v28, v2

    .line 276
    .end local v28    # "currentAngle":D
    .restart local v2    # "currentAngle":D
    add-int/lit8 v11, v11, 0x1

    move v4, v1

    move-wide/from16 v9, v23

    move/from16 v1, v27

    goto/16 :goto_1

    .line 303
    .end local v11    # "i":I
    .end local v12    # "previousX":F
    .end local v13    # "previousY":F
    .end local v23    # "numPoints":D
    .end local v27    # "points":I
    .local v1, "points":I
    .restart local v4    # "anglePerPoint":F
    .restart local v9    # "numPoints":D
    :cond_2
    move/from16 v27, v1

    move-wide/from16 v28, v2

    move v1, v4

    move-wide/from16 v23, v9

    .end local v2    # "currentAngle":D
    .end local v4    # "anglePerPoint":F
    .end local v9    # "numPoints":D
    .local v1, "anglePerPoint":F
    .restart local v23    # "numPoints":D
    .restart local v27    # "points":I
    .restart local v28    # "currentAngle":D
    iget-object v2, v0, Lcom/oplus/anim/animation/content/PolystarContent;->positionAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 304
    .local v2, "position":Landroid/graphics/PointF;
    iget-object v3, v0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v9, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v9}, Landroid/graphics/Path;->offset(FF)V

    .line 305
    iget-object v3, v0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 306
    return-void
.end method

.method private createStarPath()V
    .locals 48

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oplus/anim/animation/content/PolystarContent;->pointsAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 150
    .local v1, "points":F
    iget-object v2, v0, Lcom/oplus/anim/animation/content/PolystarContent;->rotationAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/oplus/anim/animation/content/PolystarContent;->rotationAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    .line 152
    .local v2, "currentAngle":D
    :goto_0
    const-wide v4, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v4

    .line 154
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 156
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v6, v1

    div-double/2addr v4, v6

    double-to-float v4, v4

    .line 157
    .local v4, "anglePerPoint":F
    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    .line 158
    .local v6, "halfAnglePerPoint":F
    float-to-int v7, v1

    int-to-float v7, v7

    sub-float v7, v1, v7

    .line 159
    .local v7, "partialPointAmount":F
    const/4 v8, 0x0

    cmpl-float v9, v7, v8

    if-eqz v9, :cond_1

    .line 160
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v7

    mul-float/2addr v9, v6

    float-to-double v9, v9

    add-double/2addr v2, v9

    .line 163
    :cond_1
    iget-object v9, v0, Lcom/oplus/anim/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v9}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 165
    .local v9, "outerRadius":F
    iget-object v10, v0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v10}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 167
    .local v10, "innerRadius":F
    const/4 v11, 0x0

    .line 168
    .local v11, "innerRoundedness":F
    iget-object v12, v0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    const/high16 v13, 0x42c80000    # 100.0f

    if-eqz v12, :cond_2

    .line 169
    iget-object v12, v0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v12}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    div-float v11, v12, v13

    .line 171
    :cond_2
    const/4 v12, 0x0

    .line 172
    .local v12, "outerRoundedness":F
    iget-object v14, v0, Lcom/oplus/anim/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v14, :cond_3

    .line 173
    iget-object v14, v0, Lcom/oplus/anim/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v14}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    div-float/2addr v14, v13

    .line 180
    move v12, v14

    :cond_3
    const/4 v13, 0x0

    .line 181
    .local v13, "partialPointRadius":F
    cmpl-float v14, v7, v8

    if-eqz v14, :cond_4

    .line 182
    sub-float v14, v9, v10

    mul-float/2addr v14, v7

    add-float v13, v10, v14

    .line 183
    float-to-double v14, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v14, v14

    .line 184
    .local v14, "x":F
    move/from16 v19, v9

    .end local v9    # "outerRadius":F
    .local v19, "outerRadius":F
    float-to-double v8, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v8, v15

    double-to-float v8, v8

    .line 185
    .local v8, "y":F
    iget-object v9, v0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v9, v14, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 186
    mul-float v9, v4, v7

    div-float/2addr v9, v5

    move/from16 v21, v6

    .end local v6    # "halfAnglePerPoint":F
    .local v21, "halfAnglePerPoint":F
    float-to-double v5, v9

    add-double/2addr v2, v5

    .line 195
    move/from16 v22, v8

    move/from16 v5, v19

    move/from16 v6, v21

    goto :goto_1

    .line 188
    .end local v8    # "y":F
    .end local v14    # "x":F
    .end local v19    # "outerRadius":F
    .end local v21    # "halfAnglePerPoint":F
    .restart local v6    # "halfAnglePerPoint":F
    .restart local v9    # "outerRadius":F
    :cond_4
    move/from16 v21, v6

    move/from16 v19, v9

    .end local v6    # "halfAnglePerPoint":F
    .end local v9    # "outerRadius":F
    .restart local v19    # "outerRadius":F
    .restart local v21    # "halfAnglePerPoint":F
    move/from16 v5, v19

    .end local v19    # "outerRadius":F
    .local v5, "outerRadius":F
    float-to-double v8, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v8, v14

    double-to-float v14, v8

    .line 189
    .restart local v14    # "x":F
    float-to-double v8, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v8, v15

    double-to-float v8, v8

    .line 190
    .restart local v8    # "y":F
    iget-object v6, v0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v6, v14, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 191
    move/from16 v22, v8

    move/from16 v6, v21

    .end local v8    # "y":F
    .end local v21    # "halfAnglePerPoint":F
    .restart local v6    # "halfAnglePerPoint":F
    .local v22, "y":F
    float-to-double v8, v6

    add-double/2addr v2, v8

    .line 195
    :goto_1
    const/4 v8, 0x0

    .line 196
    .local v8, "longSegment":Z
    move-wide/from16 v23, v2

    .end local v2    # "currentAngle":D
    .local v23, "currentAngle":D
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v15

    .line 197
    .local v2, "numPoints":D
    move/from16 v17, v14

    move v14, v8

    const/4 v8, 0x0

    .local v8, "i":I
    .local v14, "longSegment":Z
    .local v17, "x":F
    :goto_2
    move/from16 v25, v10

    .end local v10    # "innerRadius":F
    .local v25, "innerRadius":F
    int-to-double v9, v8

    cmpg-double v9, v9, v2

    if-gez v9, :cond_13

    .line 198
    if-eqz v14, :cond_5

    move v9, v5

    goto :goto_3

    :cond_5
    move/from16 v9, v25

    .line 199
    .local v9, "radius":F
    :goto_3
    move v10, v6

    .line 200
    .local v10, "dTheta":F
    const/16 v18, 0x0

    cmpl-float v19, v13, v18

    if-eqz v19, :cond_7

    move/from16 v26, v5

    move/from16 v27, v6

    .end local v5    # "outerRadius":F
    .end local v6    # "halfAnglePerPoint":F
    .local v26, "outerRadius":F
    .local v27, "halfAnglePerPoint":F
    int-to-double v5, v8

    sub-double v28, v2, v15

    cmpl-double v5, v5, v28

    if-nez v5, :cond_6

    .line 201
    mul-float v5, v4, v7

    const/high16 v6, 0x40000000    # 2.0f

    div-float v10, v5, v6

    goto :goto_4

    .line 203
    :cond_6
    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_4

    .end local v26    # "outerRadius":F
    .end local v27    # "halfAnglePerPoint":F
    .restart local v5    # "outerRadius":F
    .restart local v6    # "halfAnglePerPoint":F
    :cond_7
    move/from16 v26, v5

    move/from16 v27, v6

    const/high16 v6, 0x40000000    # 2.0f

    .end local v5    # "outerRadius":F
    .end local v6    # "halfAnglePerPoint":F
    .restart local v26    # "outerRadius":F
    .restart local v27    # "halfAnglePerPoint":F
    :goto_4
    const/4 v5, 0x0

    cmpl-float v19, v13, v5

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    if-eqz v19, :cond_8

    move/from16 v30, v7

    .end local v7    # "partialPointAmount":F
    .local v30, "partialPointAmount":F
    int-to-double v6, v8

    sub-double v28, v2, v20

    cmpl-double v5, v6, v28

    if-nez v5, :cond_9

    .line 204
    move v9, v13

    goto :goto_5

    .line 206
    .end local v30    # "partialPointAmount":F
    .restart local v7    # "partialPointAmount":F
    :cond_8
    move/from16 v30, v7

    .end local v7    # "partialPointAmount":F
    .restart local v30    # "partialPointAmount":F
    :cond_9
    :goto_5
    move/from16 v5, v17

    .line 207
    .local v5, "previousX":F
    move/from16 v6, v22

    .line 208
    .local v6, "previousY":F
    move/from16 v31, v1

    move-wide/from16 v32, v2

    .end local v1    # "points":F
    .end local v2    # "numPoints":D
    .local v31, "points":F
    .local v32, "numPoints":D
    float-to-double v1, v9

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v1, v1, v28

    double-to-float v1, v1

    .line 209
    .end local v17    # "x":F
    .local v1, "x":F
    float-to-double v2, v9

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v2, v2, v28

    double-to-float v2, v2

    .line 211
    .end local v22    # "y":F
    .local v2, "y":F
    const/4 v3, 0x0

    cmpl-float v7, v11, v3

    if-nez v7, :cond_a

    cmpl-float v7, v12, v3

    if-nez v7, :cond_a

    .line 212
    iget-object v3, v0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 244
    move/from16 v41, v4

    move/from16 v45, v9

    move/from16 v44, v10

    move/from16 v42, v11

    move/from16 v43, v12

    const/16 v18, 0x0

    goto/16 :goto_b

    .line 214
    :cond_a
    move/from16 v41, v4

    .end local v4    # "anglePerPoint":F
    .local v41, "anglePerPoint":F
    float-to-double v3, v6

    move/from16 v42, v11

    move/from16 v43, v12

    .end local v11    # "innerRoundedness":F
    .end local v12    # "outerRoundedness":F
    .local v42, "innerRoundedness":F
    .local v43, "outerRoundedness":F
    float-to-double v11, v5

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    const-wide v11, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v3, v11

    double-to-float v3, v3

    .line 215
    .local v3, "cp1Theta":F
    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v4, v11

    .line 216
    .local v4, "cp1Dx":F
    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v7, v11

    .line 218
    .local v7, "cp1Dy":F
    float-to-double v11, v2

    move/from16 v45, v9

    move/from16 v44, v10

    .end local v9    # "radius":F
    .end local v10    # "dTheta":F
    .local v44, "dTheta":F
    .local v45, "radius":F
    float-to-double v9, v1

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    const-wide v11, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v9, v11

    double-to-float v9, v9

    .line 219
    .local v9, "cp2Theta":F
    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 220
    .local v10, "cp2Dx":F
    float-to-double v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    .line 222
    .local v11, "cp2Dy":F
    if-eqz v14, :cond_b

    move/from16 v12, v42

    goto :goto_6

    :cond_b
    move/from16 v12, v43

    .line 223
    .local v12, "cp1Roundedness":F
    :goto_6
    if-eqz v14, :cond_c

    move/from16 v17, v43

    goto :goto_7

    :cond_c
    move/from16 v17, v42

    .line 224
    .local v17, "cp2Roundedness":F
    :goto_7
    if-eqz v14, :cond_d

    move/from16 v19, v25

    goto :goto_8

    :cond_d
    move/from16 v19, v26

    .line 225
    .local v19, "cp1Radius":F
    :goto_8
    if-eqz v14, :cond_e

    move/from16 v22, v26

    goto :goto_9

    :cond_e
    move/from16 v22, v25

    .line 227
    .local v22, "cp2Radius":F
    :goto_9
    mul-float v28, v19, v12

    const v29, 0x3ef4e26d    # 0.47829f

    mul-float v28, v28, v29

    mul-float v28, v28, v4

    .line 228
    .local v28, "cp1x":F
    mul-float v34, v19, v12

    mul-float v34, v34, v29

    mul-float v34, v34, v7

    .line 229
    .local v34, "cp1y":F
    mul-float v35, v22, v17

    mul-float v35, v35, v29

    mul-float v35, v35, v10

    .line 230
    .local v35, "cp2x":F
    mul-float v36, v22, v17

    mul-float v36, v36, v29

    mul-float v36, v36, v11

    .line 231
    .local v36, "cp2y":F
    const/16 v18, 0x0

    cmpl-float v29, v30, v18

    if-eqz v29, :cond_10

    .line 232
    if-nez v8, :cond_f

    .line 233
    mul-float v28, v28, v30

    .line 234
    mul-float v34, v34, v30

    .line 241
    move/from16 v46, v3

    move/from16 v47, v4

    goto :goto_a

    .line 235
    :cond_f
    move/from16 v46, v3

    move/from16 v47, v4

    .end local v3    # "cp1Theta":F
    .end local v4    # "cp1Dx":F
    .local v46, "cp1Theta":F
    .local v47, "cp1Dx":F
    int-to-double v3, v8

    sub-double v20, v32, v20

    cmpl-double v3, v3, v20

    if-nez v3, :cond_11

    .line 236
    mul-float v35, v35, v30

    .line 237
    mul-float v36, v36, v30

    goto :goto_a

    .line 241
    .end local v46    # "cp1Theta":F
    .end local v47    # "cp1Dx":F
    .restart local v3    # "cp1Theta":F
    .restart local v4    # "cp1Dx":F
    :cond_10
    move/from16 v46, v3

    move/from16 v47, v4

    .end local v34    # "cp1y":F
    .end local v35    # "cp2x":F
    .end local v36    # "cp2y":F
    .local v3, "cp1y":F
    .local v4, "cp2x":F
    .local v20, "cp2y":F
    .restart local v46    # "cp1Theta":F
    .restart local v47    # "cp1Dx":F
    :cond_11
    :goto_a
    move/from16 v3, v34

    move/from16 v4, v35

    move/from16 v20, v36

    iget-object v15, v0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    sub-float v35, v5, v28

    sub-float v36, v6, v3

    add-float v37, v1, v4

    add-float v38, v2, v20

    move-object/from16 v34, v15

    move/from16 v39, v1

    move/from16 v40, v2

    invoke-virtual/range {v34 .. v40}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 244
    .end local v3    # "cp1y":F
    .end local v4    # "cp2x":F
    .end local v7    # "cp1Dy":F
    .end local v9    # "cp2Theta":F
    .end local v10    # "cp2Dx":F
    .end local v11    # "cp2Dy":F
    .end local v12    # "cp1Roundedness":F
    .end local v17    # "cp2Roundedness":F
    .end local v19    # "cp1Radius":F
    .end local v20    # "cp2y":F
    .end local v22    # "cp2Radius":F
    .end local v28    # "cp1x":F
    .end local v46    # "cp1Theta":F
    .end local v47    # "cp1Dx":F
    :goto_b
    move/from16 v10, v44

    .end local v44    # "dTheta":F
    .local v10, "dTheta":F
    float-to-double v3, v10

    add-double v23, v23, v3

    .line 245
    if-nez v14, :cond_12

    const/4 v9, 0x1

    goto :goto_c

    :cond_12
    const/4 v9, 0x0

    :goto_c
    move v14, v9

    .line 197
    .end local v10    # "dTheta":F
    .end local v45    # "radius":F
    add-int/lit8 v8, v8, 0x1

    move/from16 v17, v1

    move/from16 v22, v2

    move/from16 v10, v25

    move/from16 v5, v26

    move/from16 v6, v27

    move/from16 v7, v30

    move/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v41

    move/from16 v11, v42

    move/from16 v12, v43

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    goto/16 :goto_2

    .line 249
    .end local v8    # "i":I
    .end local v26    # "outerRadius":F
    .end local v27    # "halfAnglePerPoint":F
    .end local v30    # "partialPointAmount":F
    .end local v31    # "points":F
    .end local v32    # "numPoints":D
    .end local v41    # "anglePerPoint":F
    .end local v42    # "innerRoundedness":F
    .end local v43    # "outerRoundedness":F
    .local v1, "points":F
    .local v2, "numPoints":D
    .local v4, "anglePerPoint":F
    .local v5, "outerRadius":F
    .local v6, "halfAnglePerPoint":F
    .local v7, "partialPointAmount":F
    .local v11, "innerRoundedness":F
    .local v12, "outerRoundedness":F
    .local v17, "x":F
    .local v22, "y":F
    :cond_13
    move/from16 v31, v1

    move-wide/from16 v32, v2

    move/from16 v41, v4

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v30, v7

    move/from16 v42, v11

    move/from16 v43, v12

    .end local v1    # "points":F
    .end local v2    # "numPoints":D
    .end local v4    # "anglePerPoint":F
    .end local v5    # "outerRadius":F
    .end local v6    # "halfAnglePerPoint":F
    .end local v7    # "partialPointAmount":F
    .end local v11    # "innerRoundedness":F
    .end local v12    # "outerRoundedness":F
    .restart local v26    # "outerRadius":F
    .restart local v27    # "halfAnglePerPoint":F
    .restart local v30    # "partialPointAmount":F
    .restart local v31    # "points":F
    .restart local v32    # "numPoints":D
    .restart local v41    # "anglePerPoint":F
    .restart local v42    # "innerRoundedness":F
    .restart local v43    # "outerRoundedness":F
    iget-object v1, v0, Lcom/oplus/anim/animation/content/PolystarContent;->positionAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 250
    .local v1, "position":Landroid/graphics/PointF;
    iget-object v2, v0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->offset(FF)V

    .line 251
    iget-object v2, v0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 252
    return-void
.end method

.method private invalidate()V
    .locals 1

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->isPathValid:Z

    .line 97
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    .line 98
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

    .line 317
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TT;>;"
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->POLYSTAR_POINTS:Ljava/lang/Float;

    if-ne p1, v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->pointsAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 319
    :cond_0
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->POLYSTAR_ROTATION:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->rotationAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 321
    :cond_1
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->POSITION:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->positionAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 323
    :cond_2
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->POLYSTAR_INNER_RADIUS:Ljava/lang/Float;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_3

    .line 324
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 325
    :cond_3
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->POLYSTAR_OUTER_RADIUS:Ljava/lang/Float;

    if-ne p1, v0, :cond_4

    .line 326
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 327
    :cond_4
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->POLYSTAR_INNER_ROUNDEDNESS:Ljava/lang/Float;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_5

    .line 329
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 330
    :cond_5
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->POLYSTAR_OUTER_ROUNDEDNESS:Ljava/lang/Float;

    if-ne p1, v0, :cond_6

    .line 331
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    .line 333
    :cond_6
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 3

    .line 115
    iget-boolean v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->isPathValid:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    return-object v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 121
    iget-boolean v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->hidden:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 122
    iput-boolean v1, p0, Lcom/oplus/anim/animation/content/PolystarContent;->isPathValid:Z

    .line 123
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    return-object v0

    .line 126
    :cond_1
    sget-object v0, Lcom/oplus/anim/animation/content/PolystarContent$1;->$SwitchMap$com$oplus$anim$model$content$PolystarShape$Type:[I

    iget-object v2, p0, Lcom/oplus/anim/animation/content/PolystarContent;->type:Lcom/oplus/anim/model/content/PolystarShape$Type;

    invoke-virtual {v2}, Lcom/oplus/anim/model/content/PolystarShape$Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 131
    :pswitch_0
    invoke-direct {p0}, Lcom/oplus/anim/animation/content/PolystarContent;->createPolygonPath()V

    goto :goto_0

    .line 128
    :pswitch_1
    invoke-direct {p0}, Lcom/oplus/anim/animation/content/PolystarContent;->createStarPath()V

    .line 129
    nop

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 137
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->trimPaths:Lcom/oplus/anim/animation/content/CompoundTrimPathContent;

    iget-object v2, p0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lcom/oplus/anim/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 139
    iput-boolean v1, p0, Lcom/oplus/anim/animation/content/PolystarContent;->isPathValid:Z

    .line 140
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onValueChanged()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/oplus/anim/animation/content/PolystarContent;->invalidate()V

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

    .line 311
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/KeyPath;>;"
    invoke-static {p1, p2, p3, p4, p0}, Lcom/oplus/anim/utils/MiscUtils;->resolveKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;Lcom/oplus/anim/animation/content/KeyPathElementContent;)V

    .line 312
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

    .line 102
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/Content;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 103
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/animation/content/Content;

    .line 104
    .local v1, "content":Lcom/oplus/anim/animation/content/Content;
    instance-of v2, v1, Lcom/oplus/anim/animation/content/TrimPathContent;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/oplus/anim/animation/content/TrimPathContent;

    .line 105
    invoke-virtual {v2}, Lcom/oplus/anim/animation/content/TrimPathContent;->getType()Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    move-result-object v2

    sget-object v3, Lcom/oplus/anim/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    if-ne v2, v3, :cond_0

    .line 106
    move-object v2, v1

    check-cast v2, Lcom/oplus/anim/animation/content/TrimPathContent;

    .line 107
    .local v2, "trimPath":Lcom/oplus/anim/animation/content/TrimPathContent;
    iget-object v3, p0, Lcom/oplus/anim/animation/content/PolystarContent;->trimPaths:Lcom/oplus/anim/animation/content/CompoundTrimPathContent;

    invoke-virtual {v3, v2}, Lcom/oplus/anim/animation/content/CompoundTrimPathContent;->addTrimPath(Lcom/oplus/anim/animation/content/TrimPathContent;)V

    .line 108
    invoke-virtual {v2, p0}, Lcom/oplus/anim/animation/content/TrimPathContent;->addListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 102
    .end local v1    # "content":Lcom/oplus/anim/animation/content/Content;
    .end local v2    # "trimPath":Lcom/oplus/anim/animation/content/TrimPathContent;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
