.class public abstract Lcom/oplus/anim/utils/BaseAnimator;
.super Landroid/animation/ValueAnimator;
.source "BaseAnimator.java"


# instance fields
.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final updateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/utils/BaseAnimator;->updateListeners:Ljava/util/Set;

    .line 13
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/utils/BaseAnimator;->listeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 48
    iget-object v0, p0, Lcom/oplus/anim/utils/BaseAnimator;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 36
    iget-object v0, p0, Lcom/oplus/anim/utils/BaseAnimator;->updateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public getStartDelay()J
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "EffectiveAnimator does not support getStartDelay."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method notifyCancel()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/oplus/anim/utils/BaseAnimator;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 87
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 88
    .end local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method notifyEnd(Z)V
    .locals 4
    .param p1, "isReverse"    # Z

    .line 76
    iget-object v0, p0, Lcom/oplus/anim/utils/BaseAnimator;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 77
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 78
    invoke-interface {v1, p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    goto :goto_1

    .line 80
    :cond_0
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 82
    .end local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    :goto_1
    goto :goto_0

    .line 83
    :cond_1
    return-void
.end method

.method notifyRepeat()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/oplus/anim/utils/BaseAnimator;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 71
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 72
    .end local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method notifyStart(Z)V
    .locals 4
    .param p1, "isReverse"    # Z

    .line 60
    iget-object v0, p0, Lcom/oplus/anim/utils/BaseAnimator;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 61
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 62
    invoke-interface {v1, p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    goto :goto_1

    .line 64
    :cond_0
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 66
    .end local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    :goto_1
    goto :goto_0

    .line 67
    :cond_1
    return-void
.end method

.method notifyUpdate()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/oplus/anim/utils/BaseAnimator;->updateListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 93
    .local v1, "listener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-interface {v1, p0}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 94
    .end local v1    # "listener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method public removeAllListeners()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/oplus/anim/utils/BaseAnimator;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 57
    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/oplus/anim/utils/BaseAnimator;->updateListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 45
    return-void
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 52
    iget-object v0, p0, Lcom/oplus/anim/utils/BaseAnimator;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 40
    iget-object v0, p0, Lcom/oplus/anim/utils/BaseAnimator;->updateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/utils/BaseAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Landroid/animation/ValueAnimator;
    .locals 2
    .param p1, "duration"    # J

    .line 27
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "EffectiveAnimator does not support setDuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 2
    .param p1, "value"    # Landroid/animation/TimeInterpolator;

    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "EffectiveAnimator does not support setInterpolator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStartDelay(J)V
    .locals 2
    .param p1, "startDelay"    # J

    .line 22
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "EffectiveAnimator does not support setStartDelay."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
