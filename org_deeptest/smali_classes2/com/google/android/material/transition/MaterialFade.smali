.class public Lcom/google/android/material/transition/MaterialFade;
.super Lcom/google/android/material/transition/MaterialVisibility;
.source "MaterialFade.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/MaterialVisibility<",
        "Lcom/google/android/material/transition/FadeProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION_ENTER:J = 0x96L

.field private static final DEFAULT_DURATION_RETURN:J = 0x4bL

.field private static final DEFAULT_FADE_END_THRESHOLD_ENTER:F = 0.3f

.field private static final DEFAULT_START_SCALE:F = 0.8f


# instance fields
.field private entering:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 2
    .param p1, "entering"    # Z

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/transition/MaterialVisibility;-><init>()V

    .line 50
    iput-boolean p1, p0, Lcom/google/android/material/transition/MaterialFade;->entering:Z

    .line 51
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x96

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x4b

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/transition/MaterialFade;->setDuration(J)Landroid/transition/Transition;

    .line 52
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, v0}, Lcom/google/android/material/transition/MaterialFade;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 53
    invoke-virtual {p0}, Lcom/google/android/material/transition/MaterialFade;->initialize()V

    .line 54
    return-void
.end method

.method public static create()Lcom/google/android/material/transition/MaterialFade;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/material/transition/MaterialFade;->create(Z)Lcom/google/android/material/transition/MaterialFade;

    move-result-object v0

    return-object v0
.end method

.method public static create(Z)Lcom/google/android/material/transition/MaterialFade;
    .locals 1
    .param p0, "entering"    # Z
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 46
    new-instance v0, Lcom/google/android/material/transition/MaterialFade;

    invoke-direct {v0, p0}, Lcom/google/android/material/transition/MaterialFade;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method getDefaultPrimaryAnimatorProvider()Lcom/google/android/material/transition/FadeProvider;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 59
    new-instance v0, Lcom/google/android/material/transition/FadeProvider;

    invoke-direct {v0}, Lcom/google/android/material/transition/FadeProvider;-><init>()V

    .line 60
    .local v0, "fadeProvider":Lcom/google/android/material/transition/FadeProvider;
    iget-boolean v1, p0, Lcom/google/android/material/transition/MaterialFade;->entering:Z

    if-eqz v1, :cond_0

    .line 61
    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/FadeProvider;->setIncomingEndThreshold(F)V

    .line 63
    :cond_0
    return-object v0
.end method

.method bridge synthetic getDefaultPrimaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/google/android/material/transition/MaterialFade;->getDefaultPrimaryAnimatorProvider()Lcom/google/android/material/transition/FadeProvider;

    move-result-object v0

    return-object v0
.end method

.method getDefaultSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 69
    new-instance v0, Lcom/google/android/material/transition/ScaleProvider;

    invoke-direct {v0}, Lcom/google/android/material/transition/ScaleProvider;-><init>()V

    .line 70
    .local v0, "scaleProvider":Lcom/google/android/material/transition/ScaleProvider;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/ScaleProvider;->setScaleOnDisappear(Z)V

    .line 71
    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/ScaleProvider;->setIncomingStartScale(F)V

    .line 72
    return-object v0
.end method

.method public bridge synthetic getSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 29
    invoke-super {p0}, Lcom/google/android/material/transition/MaterialVisibility;->getSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/MaterialVisibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/MaterialVisibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSecondaryAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-super {p0, p1}, Lcom/google/android/material/transition/MaterialVisibility;->setSecondaryAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V

    return-void
.end method
