.class public Lcom/oplus/anim/model/content/GradientFill;
.super Ljava/lang/Object;
.source "GradientFill.java"

# interfaces
.implements Lcom/oplus/anim/model/content/ContentModel;


# instance fields
.field private final endPoint:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

.field private final fillType:Landroid/graphics/Path$FillType;

.field private final gradientColor:Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;

.field private final gradientType:Lcom/oplus/anim/model/content/GradientType;

.field private final hidden:Z

.field private final highlightAngle:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final highlightLength:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

.field private final startPoint:Lcom/oplus/anim/model/animatable/AnimatablePointValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/anim/model/content/GradientType;Landroid/graphics/Path$FillType;Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;Lcom/oplus/anim/model/animatable/AnimatablePointValue;Lcom/oplus/anim/model/animatable/AnimatablePointValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "gradientType"    # Lcom/oplus/anim/model/content/GradientType;
    .param p3, "fillType"    # Landroid/graphics/Path$FillType;
    .param p4, "gradientColor"    # Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;
    .param p5, "opacity"    # Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    .param p6, "startPoint"    # Lcom/oplus/anim/model/animatable/AnimatablePointValue;
    .param p7, "endPoint"    # Lcom/oplus/anim/model/animatable/AnimatablePointValue;
    .param p8, "highlightLength"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .param p9, "highlightAngle"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .param p10, "hidden"    # Z

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/oplus/anim/model/content/GradientFill;->gradientType:Lcom/oplus/anim/model/content/GradientType;

    .line 38
    iput-object p3, p0, Lcom/oplus/anim/model/content/GradientFill;->fillType:Landroid/graphics/Path$FillType;

    .line 39
    iput-object p4, p0, Lcom/oplus/anim/model/content/GradientFill;->gradientColor:Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;

    .line 40
    iput-object p5, p0, Lcom/oplus/anim/model/content/GradientFill;->opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    .line 41
    iput-object p6, p0, Lcom/oplus/anim/model/content/GradientFill;->startPoint:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    .line 42
    iput-object p7, p0, Lcom/oplus/anim/model/content/GradientFill;->endPoint:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    .line 43
    iput-object p1, p0, Lcom/oplus/anim/model/content/GradientFill;->name:Ljava/lang/String;

    .line 44
    iput-object p8, p0, Lcom/oplus/anim/model/content/GradientFill;->highlightLength:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 45
    iput-object p9, p0, Lcom/oplus/anim/model/content/GradientFill;->highlightAngle:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 46
    iput-boolean p10, p0, Lcom/oplus/anim/model/content/GradientFill;->hidden:Z

    .line 47
    return-void
.end method


# virtual methods
.method public getEndPoint()Lcom/oplus/anim/model/animatable/AnimatablePointValue;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/oplus/anim/model/content/GradientFill;->endPoint:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    return-object v0
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/oplus/anim/model/content/GradientFill;->fillType:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public getGradientColor()Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/oplus/anim/model/content/GradientFill;->gradientColor:Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;

    return-object v0
.end method

.method public getGradientType()Lcom/oplus/anim/model/content/GradientType;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/oplus/anim/model/content/GradientFill;->gradientType:Lcom/oplus/anim/model/content/GradientType;

    return-object v0
.end method

.method getHighlightAngle()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/oplus/anim/model/content/GradientFill;->highlightAngle:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method getHighlightLength()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/oplus/anim/model/content/GradientFill;->highlightLength:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/oplus/anim/model/content/GradientFill;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpacity()Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/oplus/anim/model/content/GradientFill;->opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    return-object v0
.end method

.method public getStartPoint()Lcom/oplus/anim/model/animatable/AnimatablePointValue;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/oplus/anim/model/content/GradientFill;->startPoint:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/oplus/anim/model/content/GradientFill;->hidden:Z

    return v0
.end method

.method public toContent(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;)Lcom/oplus/anim/animation/content/Content;
    .locals 2
    .param p1, "drawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layer"    # Lcom/oplus/anim/model/layer/BaseLayer;

    .line 93
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GradientFill to GradientFillContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 96
    :cond_0
    new-instance v0, Lcom/oplus/anim/animation/content/GradientFillContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/oplus/anim/animation/content/GradientFillContent;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/GradientFill;)V

    return-object v0
.end method
