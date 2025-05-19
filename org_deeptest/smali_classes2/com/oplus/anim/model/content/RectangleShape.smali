.class public Lcom/oplus/anim/model/content/RectangleShape;
.super Ljava/lang/Object;
.source "RectangleShape.java"

# interfaces
.implements Lcom/oplus/anim/model/content/ContentModel;


# instance fields
.field private final cornerRadius:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private final hidden:Z

.field private final name:Ljava/lang/String;

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

.field private final size:Lcom/oplus/anim/model/animatable/AnimatablePointValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/anim/model/animatable/AnimatableValue;Lcom/oplus/anim/model/animatable/AnimatablePointValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "size"    # Lcom/oplus/anim/model/animatable/AnimatablePointValue;
    .param p4, "cornerRadius"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .param p5, "hidden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/oplus/anim/model/animatable/AnimatablePointValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Z)V"
        }
    .end annotation

    .line 22
    .local p2, "position":Lcom/oplus/anim/model/animatable/AnimatableValue;, "Lcom/oplus/anim/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/oplus/anim/model/content/RectangleShape;->name:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/oplus/anim/model/content/RectangleShape;->position:Lcom/oplus/anim/model/animatable/AnimatableValue;

    .line 25
    iput-object p3, p0, Lcom/oplus/anim/model/content/RectangleShape;->size:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    .line 26
    iput-object p4, p0, Lcom/oplus/anim/model/content/RectangleShape;->cornerRadius:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 27
    iput-boolean p5, p0, Lcom/oplus/anim/model/content/RectangleShape;->hidden:Z

    .line 28
    return-void
.end method


# virtual methods
.method public getCornerRadius()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/oplus/anim/model/content/RectangleShape;->cornerRadius:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/oplus/anim/model/content/RectangleShape;->name:Ljava/lang/String;

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

    .line 43
    iget-object v0, p0, Lcom/oplus/anim/model/content/RectangleShape;->position:Lcom/oplus/anim/model/animatable/AnimatableValue;

    return-object v0
.end method

.method public getSize()Lcom/oplus/anim/model/animatable/AnimatablePointValue;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/oplus/anim/model/content/RectangleShape;->size:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/oplus/anim/model/content/RectangleShape;->hidden:Z

    return v0
.end method

.method public toContent(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;)Lcom/oplus/anim/animation/content/Content;
    .locals 2
    .param p1, "drawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layer"    # Lcom/oplus/anim/model/layer/BaseLayer;

    .line 52
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectangleShape to RectangleContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 55
    :cond_0
    new-instance v0, Lcom/oplus/anim/animation/content/RectangleContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/oplus/anim/animation/content/RectangleContent;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/RectangleShape;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectangleShape{position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/model/content/RectangleShape;->position:Lcom/oplus/anim/model/animatable/AnimatableValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/model/content/RectangleShape;->size:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
