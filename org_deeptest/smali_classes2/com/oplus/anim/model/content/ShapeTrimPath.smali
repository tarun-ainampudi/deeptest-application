.class public Lcom/oplus/anim/model/content/ShapeTrimPath;
.super Ljava/lang/Object;
.source "ShapeTrimPath.java"

# interfaces
.implements Lcom/oplus/anim/model/content/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/model/content/ShapeTrimPath$Type;
    }
.end annotation


# instance fields
.field private final end:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private final hidden:Z

.field private final name:Ljava/lang/String;

.field private final offset:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private final start:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private final type:Lcom/oplus/anim/model/content/ShapeTrimPath$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/anim/model/content/ShapeTrimPath$Type;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/oplus/anim/model/content/ShapeTrimPath$Type;
    .param p3, "start"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .param p4, "end"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .param p5, "offset"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .param p6, "hidden"    # Z

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/oplus/anim/model/content/ShapeTrimPath;->name:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/oplus/anim/model/content/ShapeTrimPath;->type:Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    .line 22
    iput-object p3, p0, Lcom/oplus/anim/model/content/ShapeTrimPath;->start:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 23
    iput-object p4, p0, Lcom/oplus/anim/model/content/ShapeTrimPath;->end:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 24
    iput-object p5, p0, Lcom/oplus/anim/model/content/ShapeTrimPath;->offset:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 25
    iput-boolean p6, p0, Lcom/oplus/anim/model/content/ShapeTrimPath;->hidden:Z

    .line 26
    return-void
.end method


# virtual methods
.method public getEnd()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/oplus/anim/model/content/ShapeTrimPath;->end:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/oplus/anim/model/content/ShapeTrimPath;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/oplus/anim/model/content/ShapeTrimPath;->offset:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getStart()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/oplus/anim/model/content/ShapeTrimPath;->start:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getType()Lcom/oplus/anim/model/content/ShapeTrimPath$Type;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/oplus/anim/model/content/ShapeTrimPath;->type:Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/oplus/anim/model/content/ShapeTrimPath;->hidden:Z

    return v0
.end method

.method public toContent(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;)Lcom/oplus/anim/animation/content/Content;
    .locals 2
    .param p1, "drawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layer"    # Lcom/oplus/anim/model/layer/BaseLayer;

    .line 54
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeTrimPath to TrimPathContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 57
    :cond_0
    new-instance v0, Lcom/oplus/anim/animation/content/TrimPathContent;

    invoke-direct {v0, p2, p0}, Lcom/oplus/anim/animation/content/TrimPathContent;-><init>(Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/ShapeTrimPath;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trim Path: {start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/model/content/ShapeTrimPath;->start:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/model/content/ShapeTrimPath;->end:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/model/content/ShapeTrimPath;->offset:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
