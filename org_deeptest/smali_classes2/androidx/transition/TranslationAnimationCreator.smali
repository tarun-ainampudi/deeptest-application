.class Landroidx/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    return-void
.end method

.method static createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;
    .locals 18
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "values"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewPosX"    # I
    .param p3, "viewPosY"    # I
    .param p4, "startX"    # F
    .param p5, "startY"    # F
    .param p6, "endX"    # F
    .param p7, "endY"    # F
    .param p8, "interpolator"    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "transition"    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 56
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationX()F

    move-result v10

    .line 57
    .local v10, "terminalX":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationY()F

    move-result v11

    .line 58
    .local v11, "terminalY":F
    iget-object v0, v8, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget v1, Landroidx/transition/R$id;->transition_position:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [I

    .line 59
    .local v12, "startPosition":[I
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v12, :cond_0

    .line 60
    aget v2, v12, v1

    sub-int v2, v2, p2

    int-to-float v2, v2

    add-float/2addr v2, v10

    .line 61
    .end local p4    # "startX":F
    .local v2, "startX":F
    aget v3, v12, v0

    sub-int v3, v3, p3

    int-to-float v3, v3

    add-float/2addr v3, v11

    .line 64
    move v6, v2

    move v5, v3

    goto :goto_0

    .end local v2    # "startX":F
    .restart local p4    # "startX":F
    :cond_0
    move/from16 v6, p4

    move/from16 v5, p5

    .end local p4    # "startX":F
    .end local p5    # "startY":F
    .local v5, "startY":F
    .local v6, "startX":F
    :goto_0
    sub-float v2, v6, v10

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v13, p2, v2

    .line 65
    .local v13, "startPosX":I
    sub-float v2, v5, v11

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v14, p3, v2

    .line 67
    .local v14, "startPosY":I
    invoke-virtual {v7, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 68
    invoke-virtual {v7, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 69
    cmpl-float v2, v6, p6

    if-nez v2, :cond_1

    cmpl-float v2, v5, p7

    if-nez v2, :cond_1

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_1
    const/4 v2, 0x2

    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v2, [F

    aput v6, v9, v1

    aput p6, v9, v0

    .line 73
    invoke-static {v4, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v1

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    aput v5, v2, v1

    aput p7, v2, v0

    .line 74
    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v3, v0

    .line 72
    invoke-static {v7, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 76
    .local v9, "anim":Landroid/animation/ObjectAnimator;
    new-instance v15, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;

    iget-object v2, v8, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v0, v15

    move-object/from16 v1, p0

    move v3, v13

    move v4, v14

    move/from16 v16, v5

    .end local v5    # "startY":F
    .local v16, "startY":F
    move v5, v10

    move/from16 v17, v6

    .end local v6    # "startX":F
    .local v17, "startX":F
    move v6, v11

    invoke-direct/range {v0 .. v6}, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    .line 78
    .local v0, "listener":Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
    move-object/from16 v1, p9

    invoke-virtual {v1, v0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 79
    invoke-virtual {v9, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 80
    invoke-static {v9, v0}, Landroidx/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 81
    move-object/from16 v2, p8

    invoke-virtual {v9, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 82
    return-object v9
.end method
