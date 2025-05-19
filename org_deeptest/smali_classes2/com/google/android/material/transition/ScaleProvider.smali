.class public Lcom/google/android/material/transition/ScaleProvider;
.super Ljava/lang/Object;
.source "ScaleProvider.java"

# interfaces
.implements Lcom/google/android/material/transition/VisibilityAnimatorProvider;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field private entering:Z

.field private incomingEndScale:F

.field private incomingStartScale:F

.field private outgoingEndScale:F

.field private outgoingStartScale:F

.field private scaleOnDisappear:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/transition/ScaleProvider;-><init>(Z)V

    .line 44
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "entering"    # Z

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingStartScale:F

    .line 35
    const v1, 0x3f8ccccd    # 1.1f

    iput v1, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingEndScale:F

    .line 36
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingStartScale:F

    .line 37
    iput v0, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingEndScale:F

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/transition/ScaleProvider;->scaleOnDisappear:Z

    .line 47
    iput-boolean p1, p0, Lcom/google/android/material/transition/ScaleProvider;->entering:Z

    .line 48
    return-void
.end method

.method private static createScaleAnimator(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startScale"    # F
    .param p2, "endScale"    # F

    .line 131
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v0, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v5, 0x1

    aput p2, v3, v5

    .line 133
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v0, v0, [F

    aput p1, v0, v4

    aput p2, v0, v5

    .line 134
    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v1, v5

    .line 131
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 2
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "endValues"    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 105
    iget-boolean v0, p0, Lcom/google/android/material/transition/ScaleProvider;->entering:Z

    if-eqz v0, :cond_0

    .line 106
    iget v0, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingStartScale:F

    iget v1, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingEndScale:F

    invoke-static {p2, v0, v1}, Lcom/google/android/material/transition/ScaleProvider;->createScaleAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    iget v0, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingEndScale:F

    iget v1, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingStartScale:F

    invoke-static {p2, v0, v1}, Lcom/google/android/material/transition/ScaleProvider;->createScaleAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public createDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 2
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "endValues"    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 119
    iget-boolean v0, p0, Lcom/google/android/material/transition/ScaleProvider;->scaleOnDisappear:Z

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 123
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/transition/ScaleProvider;->entering:Z

    if-eqz v0, :cond_1

    .line 124
    iget v0, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingStartScale:F

    iget v1, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingEndScale:F

    invoke-static {p2, v0, v1}, Lcom/google/android/material/transition/ScaleProvider;->createScaleAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 126
    :cond_1
    iget v0, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingEndScale:F

    iget v1, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingStartScale:F

    invoke-static {p2, v0, v1}, Lcom/google/android/material/transition/ScaleProvider;->createScaleAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingEndScale()F
    .locals 1

    .line 91
    iget v0, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingEndScale:F

    return v0
.end method

.method public getIncomingStartScale()F
    .locals 1

    .line 83
    iget v0, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingStartScale:F

    return v0
.end method

.method public getOutgoingEndScale()F
    .locals 1

    .line 75
    iget v0, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingEndScale:F

    return v0
.end method

.method public getOutgoingStartScale()F
    .locals 1

    .line 67
    iget v0, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingStartScale:F

    return v0
.end method

.method public isEntering()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/google/android/material/transition/ScaleProvider;->entering:Z

    return v0
.end method

.method public isScaleOnDisappear()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/google/android/material/transition/ScaleProvider;->scaleOnDisappear:Z

    return v0
.end method

.method public setEntering(Z)V
    .locals 0
    .param p1, "entering"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/google/android/material/transition/ScaleProvider;->entering:Z

    .line 56
    return-void
.end method

.method public setIncomingEndScale(F)V
    .locals 0
    .param p1, "incomingEndScale"    # F

    .line 95
    iput p1, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingEndScale:F

    .line 96
    return-void
.end method

.method public setIncomingStartScale(F)V
    .locals 0
    .param p1, "incomingStartScale"    # F

    .line 87
    iput p1, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingStartScale:F

    .line 88
    return-void
.end method

.method public setOutgoingEndScale(F)V
    .locals 0
    .param p1, "outgoingEndScale"    # F

    .line 79
    iput p1, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingEndScale:F

    .line 80
    return-void
.end method

.method public setOutgoingStartScale(F)V
    .locals 0
    .param p1, "outgoingStartScale"    # F

    .line 71
    iput p1, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingStartScale:F

    .line 72
    return-void
.end method

.method public setScaleOnDisappear(Z)V
    .locals 0
    .param p1, "scaleOnDisappear"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/google/android/material/transition/ScaleProvider;->scaleOnDisappear:Z

    .line 64
    return-void
.end method
