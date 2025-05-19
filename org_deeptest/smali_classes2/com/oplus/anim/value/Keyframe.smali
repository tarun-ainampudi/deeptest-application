.class public Lcom/oplus/anim/value/Keyframe;
.super Ljava/lang/Object;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final UNSET_FLOAT:F = -3987645.8f

.field private static final UNSET_INT:I = 0x2ec8fb09


# instance fields
.field private final composition:Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public endFrame:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private endProgress:F

.field public endValue:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private endValueFloat:F

.field private endValueInt:I

.field public final interpolator:Landroid/view/animation/Interpolator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public pathCp1:Landroid/graphics/PointF;

.field public pathCp2:Landroid/graphics/PointF;

.field public final startFrame:F

.field private startProgress:F

.field public final startValue:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private startValueFloat:F

.field private startValueInt:I


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .locals 1
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "startFrame"    # F
    .param p6, "endFrame"    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            "TT;TT;",
            "Landroid/view/animation/Interpolator;",
            "F",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<TT;>;"
    .local p2, "startValue":Ljava/lang/Object;, "TT;"
    .local p3, "endValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 28
    iput-object v0, p0, Lcom/oplus/anim/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    .line 29
    const v0, -0x358c9d09

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->startValueFloat:F

    .line 30
    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->endValueFloat:F

    .line 31
    const v0, 0x2ec8fb09

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->startValueInt:I

    .line 32
    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->endValueInt:I

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->startProgress:F

    .line 34
    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->endProgress:F

    .line 40
    iput-object p1, p0, Lcom/oplus/anim/value/Keyframe;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 41
    iput-object p2, p0, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 42
    iput-object p3, p0, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 43
    iput-object p4, p0, Lcom/oplus/anim/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    .line 44
    iput p5, p0, Lcom/oplus/anim/value/Keyframe;->startFrame:F

    .line 45
    iput-object p6, p0, Lcom/oplus/anim/value/Keyframe;->endFrame:Ljava/lang/Float;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 28
    iput-object v0, p0, Lcom/oplus/anim/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    .line 29
    const v1, -0x358c9d09

    iput v1, p0, Lcom/oplus/anim/value/Keyframe;->startValueFloat:F

    .line 30
    iput v1, p0, Lcom/oplus/anim/value/Keyframe;->endValueFloat:F

    .line 31
    const v1, 0x2ec8fb09

    iput v1, p0, Lcom/oplus/anim/value/Keyframe;->startValueInt:I

    .line 32
    iput v1, p0, Lcom/oplus/anim/value/Keyframe;->endValueInt:I

    .line 33
    const/4 v1, 0x1

    iput v1, p0, Lcom/oplus/anim/value/Keyframe;->startProgress:F

    .line 34
    iput v1, p0, Lcom/oplus/anim/value/Keyframe;->endProgress:F

    .line 52
    iput-object v0, p0, Lcom/oplus/anim/value/Keyframe;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 53
    iput-object p1, p0, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 54
    iput-object p1, p0, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 55
    iput-object v0, p0, Lcom/oplus/anim/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    .line 56
    iput v1, p0, Lcom/oplus/anim/value/Keyframe;->startFrame:F

    .line 57
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/value/Keyframe;->endFrame:Ljava/lang/Float;

    .line 58
    return-void
.end method


# virtual methods
.method public containsProgress(F)Z
    .locals 1
    .param p1, "progress"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 92
    .local p0, "this":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<TT;>;"
    invoke-virtual {p0}, Lcom/oplus/anim/value/Keyframe;->getStartProgress()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/anim/value/Keyframe;->getEndProgress()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEndProgress()F
    .locals 4

    .line 71
    .local p0, "this":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<TT;>;"
    iget-object v0, p0, Lcom/oplus/anim/value/Keyframe;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 72
    return v1

    .line 74
    :cond_0
    iget v0, p0, Lcom/oplus/anim/value/Keyframe;->endProgress:F

    const/4 v2, 0x1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/oplus/anim/value/Keyframe;->endFrame:Ljava/lang/Float;

    if-nez v0, :cond_1

    .line 76
    iput v1, p0, Lcom/oplus/anim/value/Keyframe;->endProgress:F

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/anim/value/Keyframe;->getStartProgress()F

    move-result v0

    .line 79
    .local v0, "startProgress":F
    iget-object v1, p0, Lcom/oplus/anim/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/oplus/anim/value/Keyframe;->startFrame:F

    sub-float/2addr v1, v2

    .line 80
    .local v1, "durationFrames":F
    iget-object v2, p0, Lcom/oplus/anim/value/Keyframe;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v2}, Lcom/oplus/anim/EffectiveAnimationComposition;->getDurationFrames()F

    move-result v2

    div-float v2, v1, v2

    .line 81
    .local v2, "durationProgress":F
    add-float v3, v0, v2

    iput v3, p0, Lcom/oplus/anim/value/Keyframe;->endProgress:F

    .line 84
    .end local v0    # "startProgress":F
    .end local v1    # "durationFrames":F
    .end local v2    # "durationProgress":F
    :cond_2
    :goto_0
    iget v0, p0, Lcom/oplus/anim/value/Keyframe;->endProgress:F

    return v0
.end method

.method public getEndValueFloat()F
    .locals 2

    .line 109
    .local p0, "this":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<TT;>;"
    iget v0, p0, Lcom/oplus/anim/value/Keyframe;->endValueFloat:F

    const v1, -0x358c9d09

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->endValueFloat:F

    .line 112
    :cond_0
    iget v0, p0, Lcom/oplus/anim/value/Keyframe;->endValueFloat:F

    return v0
.end method

.method public getEndValueInt()I
    .locals 2

    .line 129
    .local p0, "this":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<TT;>;"
    iget v0, p0, Lcom/oplus/anim/value/Keyframe;->endValueInt:I

    const v1, 0x2ec8fb09

    if-ne v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->endValueInt:I

    .line 132
    :cond_0
    iget v0, p0, Lcom/oplus/anim/value/Keyframe;->endValueInt:I

    return v0
.end method

.method public getStartProgress()F
    .locals 2

    .line 61
    .local p0, "this":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<TT;>;"
    iget-object v0, p0, Lcom/oplus/anim/value/Keyframe;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    return v0

    .line 64
    :cond_0
    iget v0, p0, Lcom/oplus/anim/value/Keyframe;->startProgress:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 65
    iget v0, p0, Lcom/oplus/anim/value/Keyframe;->startFrame:F

    iget-object v1, p0, Lcom/oplus/anim/value/Keyframe;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/oplus/anim/value/Keyframe;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getDurationFrames()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->startProgress:F

    .line 67
    :cond_1
    iget v0, p0, Lcom/oplus/anim/value/Keyframe;->startProgress:F

    return v0
.end method

.method public getStartValueFloat()F
    .locals 2

    .line 99
    .local p0, "this":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<TT;>;"
    iget v0, p0, Lcom/oplus/anim/value/Keyframe;->startValueFloat:F

    const v1, -0x358c9d09

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->startValueFloat:F

    .line 102
    :cond_0
    iget v0, p0, Lcom/oplus/anim/value/Keyframe;->startValueFloat:F

    return v0
.end method

.method public getStartValueInt()I
    .locals 2

    .line 119
    .local p0, "this":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<TT;>;"
    iget v0, p0, Lcom/oplus/anim/value/Keyframe;->startValueInt:I

    const v1, 0x2ec8fb09

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->startValueInt:I

    .line 122
    :cond_0
    iget v0, p0, Lcom/oplus/anim/value/Keyframe;->startValueInt:I

    return v0
.end method

.method public isStatic()Z
    .locals 1

    .line 88
    .local p0, "this":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<TT;>;"
    iget-object v0, p0, Lcom/oplus/anim/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 137
    .local p0, "this":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keyframe{startValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/anim/value/Keyframe;->startFrame:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", endFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", interpolator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
