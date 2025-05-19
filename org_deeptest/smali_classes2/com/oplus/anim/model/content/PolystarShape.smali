.class public Lcom/oplus/anim/model/content/PolystarShape;
.super Ljava/lang/Object;
.source "PolystarShape.java"

# interfaces
.implements Lcom/oplus/anim/model/content/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/model/content/PolystarShape$Type;
    }
.end annotation


# instance fields
.field private final hidden:Z

.field private final innerRadius:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private final innerRoundedness:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private final name:Ljava/lang/String;

.field private final outerRadius:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private final outerRoundedness:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private final points:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private final position:Lcom/oplus/anim/model/animatable/AnimatableValue;
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

.field private final type:Lcom/oplus/anim/model/content/PolystarShape$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/anim/model/content/PolystarShape$Type;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/oplus/anim/model/content/PolystarShape$Type;
    .param p3, "points"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .param p5, "rotation"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .param p6, "innerRadius"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .param p7, "outerRadius"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .param p8, "innerRoundedness"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .param p9, "outerRoundedness"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .param p10, "hidden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/model/content/PolystarShape$Type;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Z)V"
        }
    .end annotation

    .line 28
    .local p4, "position":Lcom/oplus/anim/model/animatable/AnimatableValue;, "Lcom/oplus/anim/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/oplus/anim/model/content/PolystarShape;->name:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/oplus/anim/model/content/PolystarShape;->type:Lcom/oplus/anim/model/content/PolystarShape$Type;

    .line 31
    iput-object p3, p0, Lcom/oplus/anim/model/content/PolystarShape;->points:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 32
    iput-object p4, p0, Lcom/oplus/anim/model/content/PolystarShape;->position:Lcom/oplus/anim/model/animatable/AnimatableValue;

    .line 33
    iput-object p5, p0, Lcom/oplus/anim/model/content/PolystarShape;->rotation:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 34
    iput-object p6, p0, Lcom/oplus/anim/model/content/PolystarShape;->innerRadius:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 35
    iput-object p7, p0, Lcom/oplus/anim/model/content/PolystarShape;->outerRadius:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 36
    iput-object p8, p0, Lcom/oplus/anim/model/content/PolystarShape;->innerRoundedness:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 37
    iput-object p9, p0, Lcom/oplus/anim/model/content/PolystarShape;->outerRoundedness:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 38
    iput-boolean p10, p0, Lcom/oplus/anim/model/content/PolystarShape;->hidden:Z

    .line 39
    return-void
.end method


# virtual methods
.method public getInnerRadius()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/oplus/anim/model/content/PolystarShape;->innerRadius:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getInnerRoundedness()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/oplus/anim/model/content/PolystarShape;->innerRoundedness:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/oplus/anim/model/content/PolystarShape;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOuterRadius()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/oplus/anim/model/content/PolystarShape;->outerRadius:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getOuterRoundedness()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/oplus/anim/model/content/PolystarShape;->outerRoundedness:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getPoints()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/oplus/anim/model/content/PolystarShape;->points:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getPosition()Lcom/oplus/anim/model/animatable/AnimatableValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/anim/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/oplus/anim/model/content/PolystarShape;->position:Lcom/oplus/anim/model/animatable/AnimatableValue;

    return-object v0
.end method

.method public getRotation()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/oplus/anim/model/content/PolystarShape;->rotation:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getType()Lcom/oplus/anim/model/content/PolystarShape$Type;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/oplus/anim/model/content/PolystarShape;->type:Lcom/oplus/anim/model/content/PolystarShape$Type;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/oplus/anim/model/content/PolystarShape;->hidden:Z

    return v0
.end method

.method public toContent(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;)Lcom/oplus/anim/animation/content/Content;
    .locals 2
    .param p1, "drawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layer"    # Lcom/oplus/anim/model/layer/BaseLayer;

    .line 83
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PolystarShape to RepeaterContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 86
    :cond_0
    new-instance v0, Lcom/oplus/anim/animation/content/PolystarContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/oplus/anim/animation/content/PolystarContent;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/PolystarShape;)V

    return-object v0
.end method
