.class public Lcom/oplus/anim/model/content/ShapePath;
.super Ljava/lang/Object;
.source "ShapePath.java"

# interfaces
.implements Lcom/oplus/anim/model/content/ContentModel;


# instance fields
.field private final hidden:Z

.field private final index:I

.field private final name:Ljava/lang/String;

.field private final shapePath:Lcom/oplus/anim/model/animatable/AnimatableShapeValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/oplus/anim/model/animatable/AnimatableShapeValue;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "shapePath"    # Lcom/oplus/anim/model/animatable/AnimatableShapeValue;
    .param p4, "hidden"    # Z

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/oplus/anim/model/content/ShapePath;->name:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/oplus/anim/model/content/ShapePath;->index:I

    .line 19
    iput-object p3, p0, Lcom/oplus/anim/model/content/ShapePath;->shapePath:Lcom/oplus/anim/model/animatable/AnimatableShapeValue;

    .line 20
    iput-boolean p4, p0, Lcom/oplus/anim/model/content/ShapePath;->hidden:Z

    .line 21
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/oplus/anim/model/content/ShapePath;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getShapePath()Lcom/oplus/anim/model/animatable/AnimatableShapeValue;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/oplus/anim/model/content/ShapePath;->shapePath:Lcom/oplus/anim/model/animatable/AnimatableShapeValue;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/oplus/anim/model/content/ShapePath;->hidden:Z

    return v0
.end method

.method public toContent(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;)Lcom/oplus/anim/animation/content/Content;
    .locals 2
    .param p1, "drawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layer"    # Lcom/oplus/anim/model/layer/BaseLayer;

    .line 33
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapePath to ShapeContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 36
    :cond_0
    new-instance v0, Lcom/oplus/anim/animation/content/ShapeContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/oplus/anim/animation/content/ShapeContent;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/ShapePath;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapePath{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/model/content/ShapePath;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/anim/model/content/ShapePath;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
