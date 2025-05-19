.class public Lcom/oplus/anim/value/EffectiveRelativePointValueCallback;
.super Lcom/oplus/anim/value/EffectiveValueCallback;
.source "EffectiveRelativePointValueCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/anim/value/EffectiveValueCallback<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final point:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/oplus/anim/value/EffectiveValueCallback;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/value/EffectiveRelativePointValueCallback;->point:Landroid/graphics/PointF;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "staticValue"    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    invoke-direct {p0, p1}, Lcom/oplus/anim/value/EffectiveValueCallback;-><init>(Ljava/lang/Object;)V

    .line 15
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/value/EffectiveRelativePointValueCallback;->point:Landroid/graphics/PointF;

    .line 22
    return-void
.end method


# virtual methods
.method public getOffset(Lcom/oplus/anim/value/EffectiveFrameInfo;)Landroid/graphics/PointF;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/EffectiveFrameInfo<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 46
    .local p1, "frameInfo":Lcom/oplus/anim/value/EffectiveFrameInfo;, "Lcom/oplus/anim/value/EffectiveFrameInfo<Landroid/graphics/PointF;>;"
    iget-object v0, p0, Lcom/oplus/anim/value/EffectiveRelativePointValueCallback;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/oplus/anim/value/EffectiveRelativePointValueCallback;->value:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must provide a static value in the constructor , call setValue, or override getValue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValue(Lcom/oplus/anim/value/EffectiveFrameInfo;)Landroid/graphics/PointF;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/EffectiveFrameInfo<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 26
    .local p1, "frameInfo":Lcom/oplus/anim/value/EffectiveFrameInfo;, "Lcom/oplus/anim/value/EffectiveFrameInfo<Landroid/graphics/PointF;>;"
    iget-object v0, p0, Lcom/oplus/anim/value/EffectiveRelativePointValueCallback;->point:Landroid/graphics/PointF;

    .line 28
    invoke-virtual {p1}, Lcom/oplus/anim/value/EffectiveFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 29
    invoke-virtual {p1}, Lcom/oplus/anim/value/EffectiveFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 30
    invoke-virtual {p1}, Lcom/oplus/anim/value/EffectiveFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v3

    .line 27
    invoke-static {v1, v2, v3}, Lcom/oplus/anim/utils/MiscUtils;->lerp(FFF)F

    move-result v1

    .line 32
    invoke-virtual {p1}, Lcom/oplus/anim/value/EffectiveFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 33
    invoke-virtual {p1}, Lcom/oplus/anim/value/EffectiveFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 34
    invoke-virtual {p1}, Lcom/oplus/anim/value/EffectiveFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v4

    .line 31
    invoke-static {v2, v3, v4}, Lcom/oplus/anim/utils/MiscUtils;->lerp(FFF)F

    move-result v2

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/oplus/anim/value/EffectiveRelativePointValueCallback;->getOffset(Lcom/oplus/anim/value/EffectiveFrameInfo;)Landroid/graphics/PointF;

    move-result-object v0

    .line 38
    .local v0, "offset":Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/oplus/anim/value/EffectiveRelativePointValueCallback;->point:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->offset(FF)V

    .line 39
    iget-object v1, p0, Lcom/oplus/anim/value/EffectiveRelativePointValueCallback;->point:Landroid/graphics/PointF;

    return-object v1
.end method

.method public bridge synthetic getValue(Lcom/oplus/anim/value/EffectiveFrameInfo;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/oplus/anim/value/EffectiveRelativePointValueCallback;->getValue(Lcom/oplus/anim/value/EffectiveFrameInfo;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
