.class public Lcom/oplus/anim/value/EffectiveRelativeFloatValueCallback;
.super Lcom/oplus/anim/value/EffectiveValueCallback;
.source "EffectiveRelativeFloatValueCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/anim/value/EffectiveValueCallback<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/oplus/anim/value/EffectiveValueCallback;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;)V
    .locals 0
    .param p1, "staticValue"    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0, p1}, Lcom/oplus/anim/value/EffectiveValueCallback;-><init>(Ljava/lang/Object;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getOffset(Lcom/oplus/anim/value/EffectiveFrameInfo;)Ljava/lang/Float;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/EffectiveFrameInfo<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 33
    .local p1, "frameInfo":Lcom/oplus/anim/value/EffectiveFrameInfo;, "Lcom/oplus/anim/value/EffectiveFrameInfo<Ljava/lang/Float;>;"
    iget-object v0, p0, Lcom/oplus/anim/value/EffectiveRelativeFloatValueCallback;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/oplus/anim/value/EffectiveRelativeFloatValueCallback;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    return-object v0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must provide a static value in the constructor , call setValue, or override getValue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue(Lcom/oplus/anim/value/EffectiveFrameInfo;)Ljava/lang/Float;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/EffectiveFrameInfo<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 23
    .local p1, "frameInfo":Lcom/oplus/anim/value/EffectiveFrameInfo;, "Lcom/oplus/anim/value/EffectiveFrameInfo<Ljava/lang/Float;>;"
    nop

    .line 24
    invoke-virtual {p1}, Lcom/oplus/anim/value/EffectiveFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 25
    invoke-virtual {p1}, Lcom/oplus/anim/value/EffectiveFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 26
    invoke-virtual {p1}, Lcom/oplus/anim/value/EffectiveFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v2

    .line 23
    invoke-static {v0, v1, v2}, Lcom/oplus/anim/utils/MiscUtils;->lerp(FFF)F

    move-result v0

    .line 28
    .local v0, "originalValue":F
    invoke-virtual {p0, p1}, Lcom/oplus/anim/value/EffectiveRelativeFloatValueCallback;->getOffset(Lcom/oplus/anim/value/EffectiveFrameInfo;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 29
    .local v1, "offset":F
    add-float v2, v0, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic getValue(Lcom/oplus/anim/value/EffectiveFrameInfo;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/oplus/anim/value/EffectiveRelativeFloatValueCallback;->getValue(Lcom/oplus/anim/value/EffectiveFrameInfo;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
