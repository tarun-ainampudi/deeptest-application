.class public Lcom/oplus/anim/model/content/ShapeStroke;
.super Ljava/lang/Object;
.source "ShapeStroke.java"

# interfaces
.implements Lcom/oplus/anim/model/content/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;,
        Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;
    }
.end annotation


# instance fields
.field private final capType:Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;

.field private final color:Lcom/oplus/anim/model/animatable/AnimatableColorValue;

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

.field private final offset:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

.field private final width:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/oplus/anim/model/animatable/AnimatableColorValue;Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;FZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offset"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "color"    # Lcom/oplus/anim/model/animatable/AnimatableColorValue;
    .param p5, "opacity"    # Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    .param p6, "width"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .param p7, "capType"    # Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;
    .param p8, "joinType"    # Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;
    .param p9, "miterLimit"    # F
    .param p10, "hidden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            ">;",
            "Lcom/oplus/anim/model/animatable/AnimatableColorValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;",
            "Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;",
            "FZ)V"
        }
    .end annotation

    .line 33
    .local p3, "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/animatable/AnimatableFloatValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/oplus/anim/model/content/ShapeStroke;->name:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/oplus/anim/model/content/ShapeStroke;->offset:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 36
    iput-object p3, p0, Lcom/oplus/anim/model/content/ShapeStroke;->lineDashPattern:Ljava/util/List;

    .line 37
    iput-object p4, p0, Lcom/oplus/anim/model/content/ShapeStroke;->color:Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    .line 38
    iput-object p5, p0, Lcom/oplus/anim/model/content/ShapeStroke;->opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    .line 39
    iput-object p6, p0, Lcom/oplus/anim/model/content/ShapeStroke;->width:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 40
    iput-object p7, p0, Lcom/oplus/anim/model/content/ShapeStroke;->capType:Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;

    .line 41
    iput-object p8, p0, Lcom/oplus/anim/model/content/ShapeStroke;->joinType:Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;

    .line 42
    iput p9, p0, Lcom/oplus/anim/model/content/ShapeStroke;->miterLimit:F

    .line 43
    iput-boolean p10, p0, Lcom/oplus/anim/model/content/ShapeStroke;->hidden:Z

    .line 44
    return-void
.end method


# virtual methods
.method public getCapType()Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/oplus/anim/model/content/ShapeStroke;->capType:Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;

    return-object v0
.end method

.method public getColor()Lcom/oplus/anim/model/animatable/AnimatableColorValue;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/oplus/anim/model/content/ShapeStroke;->color:Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    return-object v0
.end method

.method public getDashOffset()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/oplus/anim/model/content/ShapeStroke;->offset:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getJoinType()Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/oplus/anim/model/content/ShapeStroke;->joinType:Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;

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

    .line 71
    iget-object v0, p0, Lcom/oplus/anim/model/content/ShapeStroke;->lineDashPattern:Ljava/util/List;

    return-object v0
.end method

.method public getMiterLimit()F
    .locals 1

    .line 87
    iget v0, p0, Lcom/oplus/anim/model/content/ShapeStroke;->miterLimit:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/oplus/anim/model/content/ShapeStroke;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpacity()Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/oplus/anim/model/content/ShapeStroke;->opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    return-object v0
.end method

.method public getWidth()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/oplus/anim/model/content/ShapeStroke;->width:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/oplus/anim/model/content/ShapeStroke;->hidden:Z

    return v0
.end method

.method public toContent(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;)Lcom/oplus/anim/animation/content/Content;
    .locals 2
    .param p1, "drawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layer"    # Lcom/oplus/anim/model/layer/BaseLayer;

    .line 48
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeStroke to StrokeContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 51
    :cond_0
    new-instance v0, Lcom/oplus/anim/animation/content/StrokeContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/oplus/anim/animation/content/StrokeContent;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/ShapeStroke;)V

    return-object v0
.end method
