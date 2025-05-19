.class public Lcom/oplus/anim/model/animatable/AnimatableTransform;
.super Ljava/lang/Object;
.source "AnimatableTransform.java"

# interfaces
.implements Lcom/oplus/anim/animation/content/ModifierContent;
.implements Lcom/oplus/anim/model/content/ContentModel;


# instance fields
.field private final anchorPoint:Lcom/oplus/anim/model/animatable/AnimatablePathValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final endOpacity:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final position:Lcom/oplus/anim/model/animatable/AnimatableValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotation:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final scale:Lcom/oplus/anim/model/animatable/AnimatableScaleValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final skew:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final skewAngle:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final startOpacity:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 38
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/oplus/anim/model/animatable/AnimatableTransform;-><init>(Lcom/oplus/anim/model/animatable/AnimatablePathValue;Lcom/oplus/anim/model/animatable/AnimatableValue;Lcom/oplus/anim/model/animatable/AnimatableScaleValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/oplus/anim/model/animatable/AnimatablePathValue;Lcom/oplus/anim/model/animatable/AnimatableValue;Lcom/oplus/anim/model/animatable/AnimatableScaleValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;)V
    .locals 0
    .param p1, "anchorPoint"    # Lcom/oplus/anim/model/animatable/AnimatablePathValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/oplus/anim/model/animatable/AnimatableValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "scale"    # Lcom/oplus/anim/model/animatable/AnimatableScaleValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "rotation"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "opacity"    # Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "startOpacity"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "endOpacity"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "skew"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "skewAngle"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/model/animatable/AnimatablePathValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/oplus/anim/model/animatable/AnimatableScaleValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            ")V"
        }
    .end annotation

    .line 45
    .local p2, "position":Lcom/oplus/anim/model/animatable/AnimatableValue;, "Lcom/oplus/anim/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->anchorPoint:Lcom/oplus/anim/model/animatable/AnimatablePathValue;

    .line 47
    iput-object p2, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->position:Lcom/oplus/anim/model/animatable/AnimatableValue;

    .line 48
    iput-object p3, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->scale:Lcom/oplus/anim/model/animatable/AnimatableScaleValue;

    .line 49
    iput-object p4, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->rotation:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 50
    iput-object p5, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    .line 51
    iput-object p6, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->startOpacity:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 52
    iput-object p7, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->endOpacity:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 53
    iput-object p8, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->skew:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 54
    iput-object p9, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->skewAngle:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 55
    return-void
.end method

.method private print()Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "AnimatableTransform:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->anchorPoint:Lcom/oplus/anim/model/animatable/AnimatablePathValue;

    if-eqz v1, :cond_0

    .line 113
    const-string v1, "anchorPoint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->anchorPoint:Lcom/oplus/anim/model/animatable/AnimatablePathValue;

    invoke-virtual {v1}, Lcom/oplus/anim/model/animatable/AnimatablePathValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->scale:Lcom/oplus/anim/model/animatable/AnimatableScaleValue;

    if-eqz v1, :cond_1

    .line 116
    const-string v1, "scale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->scale:Lcom/oplus/anim/model/animatable/AnimatableScaleValue;

    invoke-virtual {v1}, Lcom/oplus/anim/model/animatable/AnimatableScaleValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->rotation:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    if-eqz v1, :cond_2

    .line 119
    const-string v1, "rotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->rotation:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    if-eqz v1, :cond_3

    .line 122
    const-string v1, "opacity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    invoke-virtual {v1}, Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_3
    iget-object v1, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->skew:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    if-eqz v1, :cond_4

    .line 125
    const-string v1, "skew = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->skew:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_4
    iget-object v1, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->skewAngle:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    if-eqz v1, :cond_5

    .line 128
    const-string v1, "skewAngle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->skewAngle:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_5
    iget-object v1, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->startOpacity:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    if-eqz v1, :cond_6

    .line 131
    const-string v1, "startOpacity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->startOpacity:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_6
    iget-object v1, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->endOpacity:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    if-eqz v1, :cond_7

    .line 134
    const-string v1, "endOpacity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->endOpacity:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_7
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createAnimation()Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;
    .locals 2

    .line 103
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatableTransform create TransformKeyframeAnimation, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 106
    :cond_0
    new-instance v0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-direct {v0, p0}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;-><init>(Lcom/oplus/anim/model/animatable/AnimatableTransform;)V

    return-object v0
.end method

.method public getAnchorPoint()Lcom/oplus/anim/model/animatable/AnimatablePathValue;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->anchorPoint:Lcom/oplus/anim/model/animatable/AnimatablePathValue;

    return-object v0
.end method

.method public getEndOpacity()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->endOpacity:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getOpacity()Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    return-object v0
.end method

.method public getPosition()Lcom/oplus/anim/model/animatable/AnimatableValue;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/anim/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->position:Lcom/oplus/anim/model/animatable/AnimatableValue;

    return-object v0
.end method

.method public getRotation()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->rotation:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getScale()Lcom/oplus/anim/model/animatable/AnimatableScaleValue;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->scale:Lcom/oplus/anim/model/animatable/AnimatableScaleValue;

    return-object v0
.end method

.method public getSkew()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->skew:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getSkewAngle()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->skewAngle:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getStartOpacity()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/oplus/anim/model/animatable/AnimatableTransform;->startOpacity:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public toContent(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;)Lcom/oplus/anim/animation/content/Content;
    .locals 1
    .param p1, "drawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layer"    # Lcom/oplus/anim/model/layer/BaseLayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 143
    const/4 v0, 0x0

    return-object v0
.end method
