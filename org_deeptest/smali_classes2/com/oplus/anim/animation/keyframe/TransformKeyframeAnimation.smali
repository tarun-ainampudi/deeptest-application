.class public Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;
.super Ljava/lang/Object;
.source "TransformKeyframeAnimation.java"


# instance fields
.field private anchorPoint:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private endOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
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

.field private final matrix:Landroid/graphics/Matrix;

.field private opacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private scale:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/oplus/anim/value/ScaleXY;",
            "Lcom/oplus/anim/value/ScaleXY;",
            ">;"
        }
    .end annotation
.end field

.field private skew:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final skewMatrix1:Landroid/graphics/Matrix;

.field private final skewMatrix2:Landroid/graphics/Matrix;

.field private final skewMatrix3:Landroid/graphics/Matrix;

.field private final skewValues:[F

.field private startOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
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


# direct methods
.method public constructor <init>(Lcom/oplus/anim/model/animatable/AnimatableTransform;)V
    .locals 2
    .param p1, "animatableTransform"    # Lcom/oplus/anim/model/animatable/AnimatableTransform;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    .line 56
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getAnchorPoint()Lcom/oplus/anim/model/animatable/AnimatablePathValue;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getAnchorPoint()Lcom/oplus/anim/model/animatable/AnimatablePathValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatablePathValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 57
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getPosition()Lcom/oplus/anim/model/animatable/AnimatableValue;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getPosition()Lcom/oplus/anim/model/animatable/AnimatableValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/anim/model/animatable/AnimatableValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 58
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getScale()Lcom/oplus/anim/model/animatable/AnimatableScaleValue;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getScale()Lcom/oplus/anim/model/animatable/AnimatableScaleValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableScaleValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 59
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getRotation()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getRotation()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 60
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getSkew()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getSkew()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    :goto_4
    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    .line 61
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v0, :cond_5

    .line 62
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix1:Landroid/graphics/Matrix;

    .line 63
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix2:Landroid/graphics/Matrix;

    .line 64
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix3:Landroid/graphics/Matrix;

    .line 65
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    goto :goto_5

    .line 67
    :cond_5
    iput-object v1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix1:Landroid/graphics/Matrix;

    .line 68
    iput-object v1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix2:Landroid/graphics/Matrix;

    .line 69
    iput-object v1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix3:Landroid/graphics/Matrix;

    .line 70
    iput-object v1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    .line 72
    :goto_5
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getSkewAngle()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getSkewAngle()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    :goto_6
    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    .line 73
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getOpacity()Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 74
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getOpacity()Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 76
    :cond_7
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getStartOpacity()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 77
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getStartOpacity()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_7

    .line 79
    :cond_8
    iput-object v1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 81
    :goto_7
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getEndOpacity()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 82
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getEndOpacity()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_8

    .line 84
    :cond_9
    iput-object v1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 86
    :goto_8
    return-void
.end method

.method private clearSkewValues()V
    .locals 3

    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addAnimationsToLayer(Lcom/oplus/anim/model/layer/BaseLayer;)V
    .locals 1
    .param p1, "layer"    # Lcom/oplus/anim/model/layer/BaseLayer;

    .line 89
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 90
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 91
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 93
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 94
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 95
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 96
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 97
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 98
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 99
    return-void
.end method

.method public addListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;

    .line 102
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_4

    .line 116
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_5

    .line 119
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 121
    :cond_5
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_6

    .line 122
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 124
    :cond_6
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v0, :cond_7

    .line 125
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 127
    :cond_7
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v0, :cond_8

    .line 128
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 130
    :cond_8
    return-void
.end method

.method public applyValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)Z
    .locals 3
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
            "TT;>;)Z"
        }
    .end annotation

    .line 282
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TT;>;"
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_ANCHOR_POINT:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {v0, p2, v1}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_0

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto/16 :goto_0

    .line 288
    :cond_1
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_POSITION:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_3

    .line 289
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez v0, :cond_2

    .line 290
    new-instance v0, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {v0, p2, v1}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_0

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto/16 :goto_0

    .line 294
    :cond_3
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_SCALE:Lcom/oplus/anim/value/ScaleXY;

    if-ne p1, v0, :cond_5

    .line 295
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez v0, :cond_4

    .line 296
    new-instance v0, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    new-instance v1, Lcom/oplus/anim/value/ScaleXY;

    invoke-direct {v1}, Lcom/oplus/anim/value/ScaleXY;-><init>()V

    invoke-direct {v0, p2, v1}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_0

    .line 298
    :cond_4
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto/16 :goto_0

    .line 300
    :cond_5
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_ROTATION:Ljava/lang/Float;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    .line 301
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez v0, :cond_6

    .line 302
    new-instance v0, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_0

    .line 304
    :cond_6
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto/16 :goto_0

    .line 306
    :cond_7
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_OPACITY:Ljava/lang/Integer;

    const/16 v2, 0x64

    if-ne p1, v0, :cond_9

    .line 307
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez v0, :cond_8

    .line 308
    new-instance v0, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_0

    .line 310
    :cond_8
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto/16 :goto_0

    .line 312
    :cond_9
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_START_OPACITY:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_b

    .line 313
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez v0, :cond_a

    .line 314
    new-instance v0, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_0

    .line 316
    :cond_a
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 318
    :cond_b
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_END_OPACITY:Ljava/lang/Float;

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_d

    .line 319
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez v0, :cond_c

    .line 320
    new-instance v0, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 322
    :cond_c
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 324
    :cond_d
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_SKEW:Ljava/lang/Float;

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v0, :cond_f

    .line 325
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    if-nez v0, :cond_e

    .line 326
    new-instance v0, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    new-instance v2, Lcom/oplus/anim/value/Keyframe;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/oplus/anim/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    .line 328
    :cond_e
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 329
    :cond_f
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_SKEW_ANGLE:Ljava/lang/Float;

    if-ne p1, v0, :cond_11

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v0, :cond_11

    .line 330
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    if-nez v0, :cond_10

    .line 331
    new-instance v0, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    new-instance v2, Lcom/oplus/anim/value/Keyframe;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/oplus/anim/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    .line 333
    :cond_10
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    .line 337
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 335
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public getEndOpacity()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 12

    .line 179
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 180
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 182
    .local v0, "position":Landroid/graphics/PointF;
    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    iget v2, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_1

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 187
    .end local v0    # "position":Landroid/graphics/PointF;
    :cond_1
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    instance-of v0, v0, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    check-cast v0, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v0

    .line 194
    .local v0, "rotation":F
    :goto_0
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    .line 195
    iget-object v2, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 199
    .end local v0    # "rotation":F
    :cond_3
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    .line 200
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    const/high16 v3, 0x42b40000    # 90.0f

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v0

    neg-float v0, v0

    add-float/2addr v0, v3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 201
    .local v0, "mCos":F
    :goto_1
    iget-object v4, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    if-nez v4, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v4}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v4

    neg-float v4, v4

    add-float/2addr v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 202
    .local v3, "mSin":F
    :goto_2
    iget-object v4, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v4}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 203
    .local v4, "aTan":F
    invoke-direct {p0}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->clearSkewValues()V

    .line 204
    iget-object v5, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    const/4 v6, 0x0

    aput v0, v5, v6

    .line 205
    iget-object v5, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    const/4 v7, 0x1

    aput v3, v5, v7

    .line 206
    iget-object v5, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    neg-float v8, v3

    const/4 v9, 0x3

    aput v8, v5, v9

    .line 207
    iget-object v5, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    const/4 v8, 0x4

    aput v0, v5, v8

    .line 208
    iget-object v5, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    const/16 v10, 0x8

    aput v2, v5, v10

    .line 209
    iget-object v5, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix1:Landroid/graphics/Matrix;

    iget-object v11, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    invoke-virtual {v5, v11}, Landroid/graphics/Matrix;->setValues([F)V

    .line 210
    invoke-direct {p0}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->clearSkewValues()V

    .line 211
    iget-object v5, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    aput v2, v5, v6

    .line 212
    iget-object v5, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    aput v4, v5, v9

    .line 213
    iget-object v5, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    aput v2, v5, v8

    .line 214
    iget-object v5, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    aput v2, v5, v10

    .line 215
    iget-object v5, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix2:Landroid/graphics/Matrix;

    iget-object v11, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    invoke-virtual {v5, v11}, Landroid/graphics/Matrix;->setValues([F)V

    .line 216
    invoke-direct {p0}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->clearSkewValues()V

    .line 217
    iget-object v5, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    aput v0, v5, v6

    .line 218
    iget-object v5, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    neg-float v6, v3

    aput v6, v5, v7

    .line 219
    iget-object v5, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    aput v3, v5, v9

    .line 220
    iget-object v5, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    aput v0, v5, v8

    .line 221
    iget-object v5, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    aput v2, v5, v10

    .line 222
    iget-object v5, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix3:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->setValues([F)V

    .line 223
    iget-object v5, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix2:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix1:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 224
    iget-object v5, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix3:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix2:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 226
    iget-object v5, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix3:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 229
    .end local v0    # "mCos":F
    .end local v3    # "mSin":F
    .end local v4    # "aTan":F
    :cond_6
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_8

    .line 230
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/value/ScaleXY;

    .line 231
    .local v0, "scaleTransform":Lcom/oplus/anim/value/ScaleXY;
    invoke-virtual {v0}, Lcom/oplus/anim/value/ScaleXY;->getScaleX()F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_7

    invoke-virtual {v0}, Lcom/oplus/anim/value/ScaleXY;->getScaleY()F

    move-result v3

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_8

    .line 232
    :cond_7
    iget-object v2, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lcom/oplus/anim/value/ScaleXY;->getScaleX()F

    move-result v3

    invoke-virtual {v0}, Lcom/oplus/anim/value/ScaleXY;->getScaleY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 236
    .end local v0    # "scaleTransform":Lcom/oplus/anim/value/ScaleXY;
    :cond_8
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_a

    .line 237
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 238
    .local v0, "anchorPoint":Landroid/graphics/PointF;
    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_9

    iget v2, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_a

    .line 239
    :cond_9
    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iget v3, v0, Landroid/graphics/PointF;->y:F

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 243
    .end local v0    # "anchorPoint":Landroid/graphics/PointF;
    :cond_a
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMatrixForRepeater(F)Landroid/graphics/Matrix;
    .locals 9
    .param p1, "amount"    # F

    .line 256
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 257
    .local v0, "position":Landroid/graphics/PointF;
    :goto_0
    iget-object v2, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/value/ScaleXY;

    .line 259
    .local v2, "scale":Lcom/oplus/anim/value/ScaleXY;
    :goto_1
    iget-object v3, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 260
    if-eqz v0, :cond_2

    .line 261
    iget-object v3, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, p1

    iget v5, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, p1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 263
    :cond_2
    if-eqz v2, :cond_3

    .line 264
    iget-object v3, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    .line 265
    invoke-virtual {v2}, Lcom/oplus/anim/value/ScaleXY;->getScaleX()F

    move-result v4

    float-to-double v4, v4

    float-to-double v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 266
    invoke-virtual {v2}, Lcom/oplus/anim/value/ScaleXY;->getScaleY()F

    move-result v5

    float-to-double v5, v5

    float-to-double v7, p1

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    .line 264
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 268
    :cond_3
    iget-object v3, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_7

    .line 269
    iget-object v3, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 270
    .local v3, "rotation":F
    iget-object v4, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 271
    .local v1, "anchorPoint":Landroid/graphics/PointF;
    :goto_2
    iget-object v4, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    mul-float v5, v3, p1

    const/4 v6, 0x0

    if-nez v1, :cond_5

    move v7, v6

    goto :goto_3

    :cond_5
    iget v7, v1, Landroid/graphics/PointF;->x:F

    :goto_3
    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    iget v6, v1, Landroid/graphics/PointF;->y:F

    :goto_4
    invoke-virtual {v4, v5, v7, v6}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 274
    .end local v1    # "anchorPoint":Landroid/graphics/PointF;
    .end local v3    # "rotation":F
    :cond_7
    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    return-object v1
.end method

.method public getOpacity()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    return-object v0
.end method

.method public getStartOpacity()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    return-object v0
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .line 133
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_4

    .line 147
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 149
    :cond_4
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_5

    .line 150
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_6

    .line 153
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 155
    :cond_6
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v0, :cond_7

    .line 156
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->setProgress(F)V

    .line 158
    :cond_7
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v0, :cond_8

    .line 159
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->setProgress(F)V

    .line 161
    :cond_8
    return-void
.end method
