.class public Lcom/coui/appcompat/util/COUIPressFeedbackUtil;
.super Ljava/lang/Object;
.source "COUIPressFeedbackUtil.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final BIG_CARD_GUARANTEE_VALUE_THRESHOLD_PERCENTAGE:F = 0.07f

.field private static final DEFAULT_FLOATING_BUTTON_HEIGHT:I = 0x9c

.field private static final DEFAULT_GUARANTEE_VALUE_THRESHOLD_PERCENTAGE:F = 0.1f

.field private static final DEFAULT_PRESS_FEEDBACK_ANIMATION_DURATION:I = 0xc8

.field private static final DEFAULT_PRESS_FEEDBACK_ANIMATION_END_VALUE:F = 0.9f

.field private static final DEFAULT_PRESS_FEEDBACK_ANIMATION_START_VALUE:I = 0x1

.field private static final DEFAULT_TARGET_GUARANTEED_VALUE_THRESHOLD_HEIGHT:I = 0x258

.field private static final PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final SMALL_CARD_GUARANTEE_VALUE_THRESHOLD_PERCENTAGE:F = 0.35f


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/util/COUIPressFeedbackUtil;->PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePressAnimation(Landroid/view/View;)Landroid/view/animation/ScaleAnimation;
    .locals 9
    .param p0, "target"    # Landroid/view/View;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 32
    if-eqz p0, :cond_0

    .line 37
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f666666    # 0.9f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f666666    # 0.9f

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v8, v0, v5

    move-object v0, v7

    move v5, v6

    move v6, v8

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 38
    .local v0, "pressFeedbackAnimation":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 39
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 40
    sget-object v1, Lcom/coui/appcompat/util/COUIPressFeedbackUtil;->PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 42
    return-object v0

    .line 33
    .end local v0    # "pressFeedbackAnimation":Landroid/view/animation/ScaleAnimation;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given view is empty. Please provide a valid view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generatePressAnimationRecord()Landroid/animation/ValueAnimator;
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 53
    .local v0, "pressAnimationRecord":Landroid/animation/ValueAnimator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 54
    sget-object v1, Lcom/coui/appcompat/util/COUIPressFeedbackUtil;->PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 55
    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method public static generateResumeAnimation(Landroid/view/View;F)Landroid/view/animation/ScaleAnimation;
    .locals 8
    .param p0, "target"    # Landroid/view/View;
    .param p1, "animationStartValue"    # F
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 68
    if-eqz p0, :cond_0

    .line 73
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v6, v0, v1

    move-object v0, v7

    move v1, p1

    move v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 74
    .local v0, "pressFeedbackToNormalAnimation":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 75
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 76
    sget-object v1, Lcom/coui/appcompat/util/COUIPressFeedbackUtil;->PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 78
    return-object v0

    .line 69
    .end local v0    # "pressFeedbackToNormalAnimation":Landroid/view/animation/ScaleAnimation;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given view is empty. Please provide a valid view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getGuaranteedAnimationValue(Landroid/view/View;)F
    .locals 2
    .param p0, "target"    # Landroid/view/View;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 91
    if-eqz p0, :cond_2

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    .line 98
    const v0, 0x3f7e353f    # 0.993f

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/16 v1, 0x9c

    if-lt v0, v1, :cond_1

    .line 101
    const v0, 0x3f770a3d    # 0.965f

    goto :goto_0

    .line 104
    :cond_1
    const v0, 0x3f7d70a4    # 0.99f

    .line 108
    .local v0, "pressAnimationGuaranteedValue":F
    :goto_0
    return v0

    .line 92
    .end local v0    # "pressAnimationGuaranteedValue":F
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given view is empty. Please provide a valid view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
