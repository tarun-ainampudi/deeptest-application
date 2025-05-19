.class public Lcom/oplus/anim/value/EffectiveRelativeIntegerValueCallback;
.super Lcom/oplus/anim/value/EffectiveValueCallback;
.source "EffectiveRelativeIntegerValueCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/anim/value/EffectiveValueCallback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/oplus/anim/value/EffectiveValueCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffset(Lcom/oplus/anim/value/EffectiveFrameInfo;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/EffectiveFrameInfo<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 26
    .local p1, "frameInfo":Lcom/oplus/anim/value/EffectiveFrameInfo;, "Lcom/oplus/anim/value/EffectiveFrameInfo<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/oplus/anim/value/EffectiveRelativeIntegerValueCallback;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/oplus/anim/value/EffectiveRelativeIntegerValueCallback;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must provide a static value in the constructor , call setValue, or override getValue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue(Lcom/oplus/anim/value/EffectiveFrameInfo;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/EffectiveFrameInfo<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 13
    .local p1, "frameInfo":Lcom/oplus/anim/value/EffectiveFrameInfo;, "Lcom/oplus/anim/value/EffectiveFrameInfo<Ljava/lang/Integer;>;"
    nop

    .line 14
    invoke-virtual {p1}, Lcom/oplus/anim/value/EffectiveFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 15
    invoke-virtual {p1}, Lcom/oplus/anim/value/EffectiveFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 16
    invoke-virtual {p1}, Lcom/oplus/anim/value/EffectiveFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v2

    .line 13
    invoke-static {v0, v1, v2}, Lcom/oplus/anim/utils/MiscUtils;->lerp(IIF)I

    move-result v0

    .line 18
    .local v0, "originalValue":I
    invoke-virtual {p0, p1}, Lcom/oplus/anim/value/EffectiveRelativeIntegerValueCallback;->getOffset(Lcom/oplus/anim/value/EffectiveFrameInfo;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 19
    .local v1, "newValue":I
    add-int v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic getValue(Lcom/oplus/anim/value/EffectiveFrameInfo;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/oplus/anim/value/EffectiveRelativeIntegerValueCallback;->getValue(Lcom/oplus/anim/value/EffectiveFrameInfo;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
