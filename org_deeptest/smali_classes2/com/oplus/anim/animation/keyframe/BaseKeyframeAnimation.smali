.class public abstract Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
.super Ljava/lang/Object;
.source "BaseKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cachedEndProgress:F

.field private cachedGetValue:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private cachedGetValueKeyframe:Lcom/oplus/anim/value/Keyframe;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/value/Keyframe<",
            "TK;>;"
        }
    .end annotation
.end field

.field private cachedGetValueProgress:F

.field private cachedKeyframe:Lcom/oplus/anim/value/Keyframe;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/value/Keyframe<",
            "TK;>;"
        }
    .end annotation
.end field

.field private cachedStartDelayProgress:F

.field private isDiscrete:Z

.field private final keyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/oplus/anim/value/Keyframe<",
            "TK;>;>;"
        }
    .end annotation
.end field

.field final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private progress:F

.field protected valueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/value/EffectiveValueCallback<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/oplus/anim/value/Keyframe<",
            "TK;>;>;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<+Lcom/oplus/anim/value/Keyframe<TK;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->isDiscrete:Z

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->progress:F

    .line 28
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedGetValueProgress:F

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedGetValue:Ljava/lang/Object;

    .line 31
    iput v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedStartDelayProgress:F

    .line 32
    iput v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedEndProgress:F

    .line 34
    iput-object p1, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    .line 35
    return-void
.end method

.method private getStartDelayProgress()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 103
    .local p0, "this":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    iget v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedStartDelayProgress:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/value/Keyframe;

    invoke-virtual {v0}, Lcom/oplus/anim/value/Keyframe;->getStartProgress()F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedStartDelayProgress:F

    .line 106
    :cond_1
    iget v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedStartDelayProgress:F

    return v0
.end method


# virtual methods
.method public addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;

    .line 42
    .local p0, "this":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method protected getCurrentKeyframe()Lcom/oplus/anim/value/Keyframe;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/anim/value/Keyframe<",
            "TK;>;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedKeyframe:Lcom/oplus/anim/value/Keyframe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedKeyframe:Lcom/oplus/anim/value/Keyframe;

    iget v1, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->progress:F

    invoke-virtual {v0, v1}, Lcom/oplus/anim/value/Keyframe;->containsProgress(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedKeyframe:Lcom/oplus/anim/value/Keyframe;

    return-object v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/value/Keyframe;

    .line 57
    .local v0, "keyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<TK;>;"
    iget v1, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->progress:F

    invoke-virtual {v0}, Lcom/oplus/anim/value/Keyframe;->getStartProgress()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 58
    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 59
    iget-object v2, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/oplus/anim/value/Keyframe;

    .line 60
    iget v2, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->progress:F

    invoke-virtual {v0, v2}, Lcom/oplus/anim/value/Keyframe;->containsProgress(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    goto :goto_1

    .line 58
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 66
    .end local v1    # "i":I
    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedKeyframe:Lcom/oplus/anim/value/Keyframe;

    .line 67
    return-object v0
.end method

.method getEndProgress()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 111
    .local p0, "this":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    iget v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedEndProgress:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/value/Keyframe;

    invoke-virtual {v0}, Lcom/oplus/anim/value/Keyframe;->getEndProgress()F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedEndProgress:F

    .line 114
    :cond_1
    iget v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedEndProgress:F

    return v0
.end method

.method protected getInterpolatedCurrentKeyframeProgress()F
    .locals 3

    .line 93
    .local p0, "this":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/oplus/anim/value/Keyframe;

    move-result-object v0

    .line 94
    .local v0, "keyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<TK;>;"
    invoke-virtual {v0}, Lcom/oplus/anim/value/Keyframe;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const/4 v1, 0x0

    return v1

    .line 98
    :cond_0
    iget-object v1, v0, Lcom/oplus/anim/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    return v1
.end method

.method getLinearCurrentKeyframeProgress()F
    .locals 4

    .line 75
    .local p0, "this":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    iget-boolean v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->isDiscrete:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 76
    return v1

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/oplus/anim/value/Keyframe;

    move-result-object v0

    .line 80
    .local v0, "keyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<TK;>;"
    invoke-virtual {v0}, Lcom/oplus/anim/value/Keyframe;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    return v1

    .line 83
    :cond_1
    iget v1, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->progress:F

    invoke-virtual {v0}, Lcom/oplus/anim/value/Keyframe;->getStartProgress()F

    move-result v2

    sub-float/2addr v1, v2

    .line 84
    .local v1, "progressIntoFrame":F
    invoke-virtual {v0}, Lcom/oplus/anim/value/Keyframe;->getEndProgress()F

    move-result v2

    invoke-virtual {v0}, Lcom/oplus/anim/value/Keyframe;->getStartProgress()F

    move-result v3

    sub-float/2addr v2, v3

    .line 85
    .local v2, "keyframeProgress":F
    div-float v3, v1, v2

    return v3
.end method

.method public getProgress()F
    .locals 1

    .line 133
    .local p0, "this":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    iget v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->progress:F

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/oplus/anim/value/Keyframe;

    move-result-object v0

    .line 119
    .local v0, "keyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<TK;>;"
    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getInterpolatedCurrentKeyframeProgress()F

    move-result v1

    .line 120
    .local v1, "progress":F
    iget-object v2, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedGetValueKeyframe:Lcom/oplus/anim/value/Keyframe;

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedGetValueProgress:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedGetValue:Ljava/lang/Object;

    return-object v2

    .line 124
    :cond_0
    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedGetValueKeyframe:Lcom/oplus/anim/value/Keyframe;

    .line 125
    iput v1, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedGetValueProgress:F

    .line 126
    invoke-virtual {p0, v0, v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue(Lcom/oplus/anim/value/Keyframe;F)Ljava/lang/Object;

    move-result-object v2

    .line 127
    .local v2, "value":Ljava/lang/Object;, "TA;"
    iput-object v2, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedGetValue:Ljava/lang/Object;

    .line 129
    return-object v2
.end method

.method abstract getValue(Lcom/oplus/anim/value/Keyframe;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/Keyframe<",
            "TK;>;F)TA;"
        }
    .end annotation
.end method

.method public notifyListeners()V
    .locals 2

    .line 46
    .local p0, "this":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;

    invoke-interface {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;->onValueChanged()V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setIsDiscrete()V
    .locals 1

    .line 38
    .local p0, "this":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->isDiscrete:Z

    .line 39
    return-void
.end method

.method public setProgress(F)V
    .locals 3
    .param p1, "progress"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 137
    .local p0, "this":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    return-void

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/oplus/anim/value/Keyframe;

    move-result-object v0

    .line 143
    .local v0, "previousKeyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<TK;>;"
    invoke-direct {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getStartDelayProgress()F

    move-result v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getStartDelayProgress()F

    move-result p1

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getEndProgress()F

    move-result v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getEndProgress()F

    move-result p1

    .line 149
    :cond_2
    :goto_0
    iget v1, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->progress:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_3

    .line 150
    return-void

    .line 152
    :cond_3
    iput p1, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->progress:F

    .line 154
    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/oplus/anim/value/Keyframe;

    move-result-object v1

    .line 156
    .local v1, "newKeyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<TK;>;"
    if-ne v0, v1, :cond_4

    invoke-virtual {v1}, Lcom/oplus/anim/value/Keyframe;->isStatic()Z

    move-result v2

    if-nez v2, :cond_5

    .line 157
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->notifyListeners()V

    .line 159
    :cond_5
    return-void
.end method

.method public setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V
    .locals 2
    .param p1    # Lcom/oplus/anim/value/EffectiveValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/EffectiveValueCallback<",
            "TA;>;)V"
        }
    .end annotation

    .line 162
    .local p0, "this":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    .local p1, "valueCallback":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TA;>;"
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/anim/value/EffectiveValueCallback;->setAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 165
    :cond_0
    iput-object p1, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;

    .line 166
    if-eqz p1, :cond_1

    .line 167
    invoke-virtual {p1, p0}, Lcom/oplus/anim/value/EffectiveValueCallback;->setAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 169
    :cond_1
    return-void
.end method
