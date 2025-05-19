.class public Lcom/oplus/anim/model/content/GradientStroke;
.super Ljava/lang/Object;
.source "GradientStroke.java"

# interfaces
.implements Lcom/oplus/anim/model/content/ContentModel;


# instance fields
.field private final capType:Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;

.field private final dashOffset:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final endPoint:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

.field private final gradientColor:Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;

.field private final gradientType:Lcom/oplus/anim/model/content/GradientType;

.field private final hidden:Z

.field private final joinType:Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;

.field private final lineDashPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            ">;"
        }
    .end annotation
.end field

.field private final miterLimit:F

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

.field private final startPoint:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

.field private final width:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/anim/model/content/GradientType;Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;Lcom/oplus/anim/model/animatable/AnimatablePointValue;Lcom/oplus/anim/model/animatable/AnimatablePointValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "gradientType"    # Lcom/oplus/anim/model/content/GradientType;
    .param p3, "gradientColor"    # Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;
    .param p4, "opacity"    # Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    .param p5, "startPoint"    # Lcom/oplus/anim/model/animatable/AnimatablePointValue;
    .param p6, "endPoint"    # Lcom/oplus/anim/model/animatable/AnimatablePointValue;
    .param p7, "width"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .param p8, "capType"    # Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;
    .param p9, "joinType"    # Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;
    .param p10, "miterLimit"    # F
    .param p12, "dashOffset"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13, "hidden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/model/content/GradientType;",
            "Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;",
            "Lcom/oplus/anim/model/animatable/AnimatablePointValue;",
            "Lcom/oplus/anim/model/animatable/AnimatablePointValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;",
            "Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;",
            "F",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            ">;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Z)V"
        }
    .end annotation

    .line 40
    .local p11, "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/animatable/AnimatableFloatValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/oplus/anim/model/content/GradientStroke;->name:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/oplus/anim/model/content/GradientStroke;->gradientType:Lcom/oplus/anim/model/content/GradientType;

    .line 43
    iput-object p3, p0, Lcom/oplus/anim/model/content/GradientStroke;->gradientColor:Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;

    .line 44
    iput-object p4, p0, Lcom/oplus/anim/model/content/GradientStroke;->opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    .line 45
    iput-object p5, p0, Lcom/oplus/anim/model/content/GradientStroke;->startPoint:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    .line 46
    iput-object p6, p0, Lcom/oplus/anim/model/content/GradientStroke;->endPoint:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    .line 47
    iput-object p7, p0, Lcom/oplus/anim/model/content/GradientStroke;->width:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 48
    iput-object p8, p0, Lcom/oplus/anim/model/content/GradientStroke;->capType:Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;

    .line 49
    iput-object p9, p0, Lcom/oplus/anim/model/content/GradientStroke;->joinType:Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;

    .line 50
    iput p10, p0, Lcom/oplus/anim/model/content/GradientStroke;->miterLimit:F

    .line 51
    iput-object p11, p0, Lcom/oplus/anim/model/content/GradientStroke;->lineDashPattern:Ljava/util/List;

    .line 52
    iput-object p12, p0, Lcom/oplus/anim/model/content/GradientStroke;->dashOffset:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 53
    iput-boolean p13, p0, Lcom/oplus/anim/model/content/GradientStroke;->hidden:Z

    .line 54
    return-void
.end method


# virtual methods
.method public getCapType()Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/oplus/anim/model/content/GradientStroke;->capType:Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;

    return-object v0
.end method

.method public getDashOffset()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/oplus/anim/model/content/GradientStroke;->dashOffset:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getEndPoint()Lcom/oplus/anim/model/animatable/AnimatablePointValue;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/oplus/anim/model/content/GradientStroke;->endPoint:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    return-object v0
.end method

.method public getGradientColor()Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/oplus/anim/model/content/GradientStroke;->gradientColor:Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;

    return-object v0
.end method

.method public getGradientType()Lcom/oplus/anim/model/content/GradientType;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/oplus/anim/model/content/GradientStroke;->gradientType:Lcom/oplus/anim/model/content/GradientType;

    return-object v0
.end method

.method public getJoinType()Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/oplus/anim/model/content/GradientStroke;->joinType:Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;

    return-object v0
.end method

.method public getLineDashPattern()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/oplus/anim/model/content/GradientStroke;->lineDashPattern:Ljava/util/List;

    return-object v0
.end method

.method public getMiterLimit()F
    .locals 1

    .line 102
    iget v0, p0, Lcom/oplus/anim/model/content/GradientStroke;->miterLimit:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/oplus/anim/model/content/GradientStroke;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpacity()Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/oplus/anim/model/content/GradientStroke;->opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    return-object v0
.end method

.method public getStartPoint()Lcom/oplus/anim/model/animatable/AnimatablePointValue;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/oplus/anim/model/content/GradientStroke;->startPoint:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    return-object v0
.end method

.method public getWidth()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/oplus/anim/model/content/GradientStroke;->width:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/oplus/anim/model/content/GradientStroke;->hidden:Z

    return v0
.end method

.method public toContent(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;)Lcom/oplus/anim/animation/content/Content;
    .locals 2
    .param p1, "drawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layer"    # Lcom/oplus/anim/model/layer/BaseLayer;

    .line 111
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GradientStroke to GradientStrokeContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 114
    :cond_0
    new-instance v0, Lcom/oplus/anim/animation/content/GradientStrokeContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/oplus/anim/animation/content/GradientStrokeContent;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/GradientStroke;)V

    return-object v0
.end method
