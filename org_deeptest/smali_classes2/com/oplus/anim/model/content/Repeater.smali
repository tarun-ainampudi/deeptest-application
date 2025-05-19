.class public Lcom/oplus/anim/model/content/Repeater;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Lcom/oplus/anim/model/content/ContentModel;


# instance fields
.field private final copies:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private final hidden:Z

.field private final name:Ljava/lang/String;

.field private final offset:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private final transform:Lcom/oplus/anim/model/animatable/AnimatableTransform;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableTransform;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "copies"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .param p3, "offset"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .param p4, "transform"    # Lcom/oplus/anim/model/animatable/AnimatableTransform;
    .param p5, "hidden"    # Z

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/oplus/anim/model/content/Repeater;->name:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/oplus/anim/model/content/Repeater;->copies:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 24
    iput-object p3, p0, Lcom/oplus/anim/model/content/Repeater;->offset:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 25
    iput-object p4, p0, Lcom/oplus/anim/model/content/Repeater;->transform:Lcom/oplus/anim/model/animatable/AnimatableTransform;

    .line 26
    iput-boolean p5, p0, Lcom/oplus/anim/model/content/Repeater;->hidden:Z

    .line 27
    return-void
.end method


# virtual methods
.method public getCopies()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/oplus/anim/model/content/Repeater;->copies:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/oplus/anim/model/content/Repeater;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/oplus/anim/model/content/Repeater;->offset:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getTransform()Lcom/oplus/anim/model/animatable/AnimatableTransform;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/oplus/anim/model/content/Repeater;->transform:Lcom/oplus/anim/model/animatable/AnimatableTransform;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/oplus/anim/model/content/Repeater;->hidden:Z

    return v0
.end method

.method public toContent(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;)Lcom/oplus/anim/animation/content/Content;
    .locals 2
    .param p1, "drawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layer"    # Lcom/oplus/anim/model/layer/BaseLayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 52
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Repeater to RepeaterContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 55
    :cond_0
    new-instance v0, Lcom/oplus/anim/animation/content/RepeaterContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/oplus/anim/animation/content/RepeaterContent;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/Repeater;)V

    return-object v0
.end method
