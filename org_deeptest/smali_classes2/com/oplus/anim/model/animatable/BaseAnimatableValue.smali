.class abstract Lcom/oplus/anim/model/animatable/BaseAnimatableValue;
.super Ljava/lang/Object;
.source "BaseAnimatableValue.java"

# interfaces
.implements Lcom/oplus/anim/model/animatable/AnimatableValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/oplus/anim/model/animatable/AnimatableValue<",
        "TV;TO;>;"
    }
.end annotation


# instance fields
.field final keyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/value/Keyframe<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 16
    .local p0, "this":Lcom/oplus/anim/model/animatable/BaseAnimatableValue;, "Lcom/oplus/anim/model/animatable/BaseAnimatableValue<TV;TO;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/oplus/anim/value/Keyframe;

    invoke-direct {v0, p1}, Lcom/oplus/anim/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/anim/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;)V

    .line 17
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/anim/value/Keyframe<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 19
    .local p0, "this":Lcom/oplus/anim/model/animatable/BaseAnimatableValue;, "Lcom/oplus/anim/model/animatable/BaseAnimatableValue<TV;TO;>;"
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/value/Keyframe<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/oplus/anim/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public getKeyframes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/anim/value/Keyframe<",
            "TV;>;>;"
        }
    .end annotation

    .line 24
    .local p0, "this":Lcom/oplus/anim/model/animatable/BaseAnimatableValue;, "Lcom/oplus/anim/model/animatable/BaseAnimatableValue<TV;TO;>;"
    iget-object v0, p0, Lcom/oplus/anim/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    return-object v0
.end method

.method public isStatic()Z
    .locals 3

    .line 29
    .local p0, "this":Lcom/oplus/anim/model/animatable/BaseAnimatableValue;, "Lcom/oplus/anim/model/animatable/BaseAnimatableValue<TV;TO;>;"
    iget-object v0, p0, Lcom/oplus/anim/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/anim/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/value/Keyframe;

    invoke-virtual {v0}, Lcom/oplus/anim/value/Keyframe;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    .local p0, "this":Lcom/oplus/anim/model/animatable/BaseAnimatableValue;, "Lcom/oplus/anim/model/animatable/BaseAnimatableValue<TV;TO;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/oplus/anim/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    const-string v1, "values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
