.class public Lcom/oplus/anim/value/EffectiveFrameInfo;
.super Ljava/lang/Object;
.source "EffectiveFrameInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private endFrame:F

.field private endValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private interpolatedKeyframeProgress:F

.field private linearKeyframeProgress:F

.field private overallProgress:F

.field private startFrame:F

.field private startValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    .local p0, "this":Lcom/oplus/anim/value/EffectiveFrameInfo;, "Lcom/oplus/anim/value/EffectiveFrameInfo<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndFrame()F
    .locals 1

    .line 40
    .local p0, "this":Lcom/oplus/anim/value/EffectiveFrameInfo;, "Lcom/oplus/anim/value/EffectiveFrameInfo<TT;>;"
    iget v0, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->endFrame:F

    return v0
.end method

.method public getEndValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/oplus/anim/value/EffectiveFrameInfo;, "Lcom/oplus/anim/value/EffectiveFrameInfo<TT;>;"
    iget-object v0, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->endValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getInterpolatedKeyframeProgress()F
    .locals 1

    .line 56
    .local p0, "this":Lcom/oplus/anim/value/EffectiveFrameInfo;, "Lcom/oplus/anim/value/EffectiveFrameInfo<TT;>;"
    iget v0, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->interpolatedKeyframeProgress:F

    return v0
.end method

.method public getLinearKeyframeProgress()F
    .locals 1

    .line 52
    .local p0, "this":Lcom/oplus/anim/value/EffectiveFrameInfo;, "Lcom/oplus/anim/value/EffectiveFrameInfo<TT;>;"
    iget v0, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->linearKeyframeProgress:F

    return v0
.end method

.method public getOverallProgress()F
    .locals 1

    .line 60
    .local p0, "this":Lcom/oplus/anim/value/EffectiveFrameInfo;, "Lcom/oplus/anim/value/EffectiveFrameInfo<TT;>;"
    iget v0, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->overallProgress:F

    return v0
.end method

.method public getStartFrame()F
    .locals 1

    .line 36
    .local p0, "this":Lcom/oplus/anim/value/EffectiveFrameInfo;, "Lcom/oplus/anim/value/EffectiveFrameInfo<TT;>;"
    iget v0, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->startFrame:F

    return v0
.end method

.method public getStartValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/oplus/anim/value/EffectiveFrameInfo;, "Lcom/oplus/anim/value/EffectiveFrameInfo<TT;>;"
    iget-object v0, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->startValue:Ljava/lang/Object;

    return-object v0
.end method

.method public set(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lcom/oplus/anim/value/EffectiveFrameInfo;
    .locals 0
    .param p1, "startFrame"    # F
    .param p2, "endFrame"    # F
    .param p5, "linearKeyframeProgress"    # F
    .param p6, "interpolatedKeyframeProgress"    # F
    .param p7, "overallProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTT;TT;FFF)",
            "Lcom/oplus/anim/value/EffectiveFrameInfo<",
            "TT;>;"
        }
    .end annotation

    .line 25
    .local p0, "this":Lcom/oplus/anim/value/EffectiveFrameInfo;, "Lcom/oplus/anim/value/EffectiveFrameInfo<TT;>;"
    .local p3, "startValue":Ljava/lang/Object;, "TT;"
    .local p4, "endValue":Ljava/lang/Object;, "TT;"
    iput p1, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->startFrame:F

    .line 26
    iput p2, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->endFrame:F

    .line 27
    iput-object p3, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->startValue:Ljava/lang/Object;

    .line 28
    iput-object p4, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->endValue:Ljava/lang/Object;

    .line 29
    iput p5, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->linearKeyframeProgress:F

    .line 30
    iput p6, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->interpolatedKeyframeProgress:F

    .line 31
    iput p7, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->overallProgress:F

    .line 32
    return-object p0
.end method
