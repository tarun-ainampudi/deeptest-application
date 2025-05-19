.class public Lcom/coui/appcompat/widget/COUILoadProgress;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "COUILoadProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUILoadProgress$SavedState;,
        Lcom/coui/appcompat/widget/COUILoadProgress$AccessibilityEventSender;,
        Lcom/coui/appcompat/widget/COUILoadProgress$OnStateChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SET:[I

.field public static final DEFAULT_UP_OR_DOWN:I = 0x0

.field private static final FAIL_SET:[I

.field private static final ING_SET:[I

.field public static final INSTALL_HAVE_GIFT:I = 0x4

.field private static final PROGRESS_ANIM_DURATION:I = 0x50

.field private static final PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xa

.field public static final UPING_OR_DOWNING:I = 0x1

.field public static final UP_OR_DOWN_FAIL:I = 0x3

.field public static final UP_OR_DOWN_WAIT:I = 0x2

.field private static final WAIT_SET:[I


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mAccessibilityEventSender:Lcom/coui/appcompat/widget/COUILoadProgress$AccessibilityEventSender;

.field private mBroadcasting:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonResource:I

.field private mContext:Landroid/content/Context;

.field protected mIsUpdateWithAnimation:Z

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field public mMax:I

.field private mOnStateChangeListener:Lcom/coui/appcompat/widget/COUILoadProgress$OnStateChangeListener;

.field private mOnStateChangeWidgetListener:Lcom/coui/appcompat/widget/COUILoadProgress$OnStateChangeListener;

.field public mProgress:I

.field public mState:I

.field protected mVisualProgress:F

.field private mVisualProgressAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, Lcoui/support/appcompat/R$attr;->coui_state_default:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/coui/appcompat/widget/COUILoadProgress;->DEFAULT_SET:[I

    .line 50
    new-array v1, v0, [I

    sget v2, Lcoui/support/appcompat/R$attr;->coui_state_wait:I

    aput v2, v1, v3

    sput-object v1, Lcom/coui/appcompat/widget/COUILoadProgress;->WAIT_SET:[I

    .line 53
    new-array v1, v0, [I

    sget v2, Lcoui/support/appcompat/R$attr;->coui_state_fail:I

    aput v2, v1, v3

    sput-object v1, Lcom/coui/appcompat/widget/COUILoadProgress;->FAIL_SET:[I

    .line 56
    new-array v0, v0, [I

    sget v1, Lcoui/support/appcompat/R$attr;->coui_state_ing:I

    aput v1, v0, v3

    sput-object v0, Lcom/coui/appcompat/widget/COUILoadProgress;->ING_SET:[I

    .line 78
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/widget/COUILoadProgress;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUILoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 89
    sget v0, Lcoui/support/appcompat/R$attr;->couiLoadProgressStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUILoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const-string v0, "COUILoadProgress"

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->TAG:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->DEBUG:Z

    .line 73
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mIsUpdateWithAnimation:Z

    .line 94
    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUILoadProgress:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 95
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUILoadProgress_couiState:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 96
    .local v0, "state":I
    sget v2, Lcoui/support/appcompat/R$styleable;->COUILoadProgress_couiDefaultDrawable:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 97
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUILoadProgress;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_0
    sget v3, Lcoui/support/appcompat/R$styleable;->COUILoadProgress_couiProgress:I

    iget v4, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mProgress:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUILoadProgress;->setProgress(I)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUILoadProgress;->setState(I)V

    .line 102
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILoadProgress;->init()V

    .line 105
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_1

    .line 106
    const/4 v3, 0x1

    invoke-static {p0, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 108
    :cond_1
    const-string v3, "accessibility"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 109
    return-void
.end method

.method private init()V
    .locals 2

    .line 437
    const/16 v0, 0x64

    .line 438
    .local v0, "max":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mProgress:I

    .line 439
    iput v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mMax:I

    .line 440
    return-void
.end method

.method private refreshProgressWithAnim()V
    .locals 4

    .line 553
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mVisualProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mVisualProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mVisualProgressAnimator:Landroid/animation/ValueAnimator;

    .line 557
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mVisualProgress:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mProgress:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mVisualProgressAnimator:Landroid/animation/ValueAnimator;

    .line 558
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mVisualProgressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 559
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mVisualProgressAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/widget/COUILoadProgress;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 560
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mVisualProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/widget/COUILoadProgress$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUILoadProgress$1;-><init>(Lcom/coui/appcompat/widget/COUILoadProgress;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 567
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mVisualProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/widget/COUILoadProgress$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUILoadProgress$2;-><init>(Lcom/coui/appcompat/widget/COUILoadProgress;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 589
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mVisualProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 590
    return-void
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mAccessibilityEventSender:Lcom/coui/appcompat/widget/COUILoadProgress$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Lcom/coui/appcompat/widget/COUILoadProgress$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/widget/COUILoadProgress$AccessibilityEventSender;-><init>(Lcom/coui/appcompat/widget/COUILoadProgress;Lcom/coui/appcompat/widget/COUILoadProgress$1;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mAccessibilityEventSender:Lcom/coui/appcompat/widget/COUILoadProgress$AccessibilityEventSender;

    goto :goto_0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mAccessibilityEventSender:Lcom/coui/appcompat/widget/COUILoadProgress$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUILoadProgress;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 411
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mAccessibilityEventSender:Lcom/coui/appcompat/widget/COUILoadProgress$AccessibilityEventSender;

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/coui/appcompat/widget/COUILoadProgress;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 412
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 467
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->drawableStateChanged()V

    .line 469
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILoadProgress;->getDrawableState()[I

    move-result-object v0

    .line 471
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 472
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILoadProgress;->invalidate()V

    .line 474
    .end local v0    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method public getMax()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mMax:I

    return v0
.end method

.method public getMax(I)I
    .locals 1
    .param p1, "max"    # I

    .line 210
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mProgress:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 374
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mState:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 483
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->jumpDrawablesToCurrentState()V

    .line 484
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 487
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3
    .param p1, "extraSpace"    # I

    .line 449
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 450
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILoadProgress;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 451
    sget-object v1, Lcom/coui/appcompat/widget/COUILoadProgress;->DEFAULT_SET:[I

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUILoadProgress;->mergeDrawableStates([I[I)[I

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILoadProgress;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 454
    sget-object v1, Lcom/coui/appcompat/widget/COUILoadProgress;->ING_SET:[I

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUILoadProgress;->mergeDrawableStates([I[I)[I

    .line 456
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILoadProgress;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 457
    sget-object v1, Lcom/coui/appcompat/widget/COUILoadProgress;->WAIT_SET:[I

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUILoadProgress;->mergeDrawableStates([I[I)[I

    .line 459
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILoadProgress;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 460
    sget-object v1, Lcom/coui/appcompat/widget/COUILoadProgress;->FAIL_SET:[I

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUILoadProgress;->mergeDrawableStates([I[I)[I

    .line 462
    :cond_3
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mAccessibilityEventSender:Lcom/coui/appcompat/widget/COUILoadProgress$AccessibilityEventSender;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mAccessibilityEventSender:Lcom/coui/appcompat/widget/COUILoadProgress$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUILoadProgress;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 431
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onDetachedFromWindow()V

    .line 433
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 444
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 445
    return-void
.end method

.method onProgressRefresh(I)V
    .locals 1
    .param p1, "progress"    # I

    .line 393
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILoadProgress;->scheduleAccessibilityEventSender()V

    .line 396
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 544
    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/widget/COUILoadProgress$SavedState;

    .line 546
    .local v0, "ss":Lcom/coui/appcompat/widget/COUILoadProgress$SavedState;
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILoadProgress$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroidx/appcompat/widget/AppCompatButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 547
    iget v1, v0, Lcom/coui/appcompat/widget/COUILoadProgress$SavedState;->mState:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUILoadProgress;->setState(I)V

    .line 548
    iget v1, v0, Lcom/coui/appcompat/widget/COUILoadProgress$SavedState;->mProgress:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUILoadProgress;->setProgress(I)V

    .line 549
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILoadProgress;->requestLayout()V

    .line 550
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 532
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUILoadProgress;->setFreezesText(Z)V

    .line 533
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 535
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/coui/appcompat/widget/COUILoadProgress$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/widget/COUILoadProgress$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 537
    .local v1, "ss":Lcom/coui/appcompat/widget/COUILoadProgress$SavedState;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILoadProgress;->getState()I

    move-result v2

    iput v2, v1, Lcom/coui/appcompat/widget/COUILoadProgress$SavedState;->mState:I

    .line 538
    iget v2, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mProgress:I

    iput v2, v1, Lcom/coui/appcompat/widget/COUILoadProgress$SavedState;->mProgress:I

    .line 539
    return-object v1
.end method

.method public performClick()Z
    .locals 1

    .line 354
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILoadProgress;->toggle()V

    .line 355
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 3
    .param p1, "resid"    # I

    .line 235
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mButtonResource:I

    if-ne p1, v0, :cond_0

    .line 236
    return-void

    .line 239
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mButtonResource:I

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mButtonResource:I

    if-eqz v1, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mButtonResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 245
    :cond_1
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUILoadProgress;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 255
    if-eqz p1, :cond_2

    .line 256
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 258
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUILoadProgress;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 261
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILoadProgress;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 262
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILoadProgress;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 263
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 264
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 265
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUILoadProgress;->setMinHeight(I)V

    .line 267
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILoadProgress;->refreshDrawableState()V

    .line 268
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .line 187
    if-gez p1, :cond_0

    .line 188
    const/4 p1, 0x0

    .line 190
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mMax:I

    if-eq p1, v0, :cond_2

    .line 191
    iput p1, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mMax:I

    .line 192
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mProgress:I

    if-le v0, p1, :cond_1

    .line 193
    iput p1, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mProgress:I

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILoadProgress;->invalidate()V

    .line 197
    :cond_2
    return-void
.end method

.method public setOnStateChangeListener(Lcom/coui/appcompat/widget/COUILoadProgress$OnStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/widget/COUILoadProgress$OnStateChangeListener;

    .line 319
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mOnStateChangeListener:Lcom/coui/appcompat/widget/COUILoadProgress$OnStateChangeListener;

    .line 320
    return-void
.end method

.method setOnStateChangeWidgetListener(Lcom/coui/appcompat/widget/COUILoadProgress$OnStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/widget/COUILoadProgress$OnStateChangeListener;

    .line 331
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mOnStateChangeWidgetListener:Lcom/coui/appcompat/widget/COUILoadProgress$OnStateChangeListener;

    .line 332
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .line 120
    if-gez p1, :cond_0

    .line 121
    const/4 p1, 0x0

    .line 124
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mMax:I

    if-le p1, v0, :cond_1

    .line 125
    iget p1, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mMax:I

    .line 127
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 128
    iput p1, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mProgress:I

    .line 133
    :cond_2
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mIsUpdateWithAnimation:Z

    if-eqz v0, :cond_3

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mIsUpdateWithAnimation:Z

    .line 136
    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILoadProgress;->invalidate()V

    .line 139
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUILoadProgress;->onProgressRefresh(I)V

    .line 141
    return-void
.end method

.method public setProgress(IZ)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "animate"    # Z

    .line 144
    if-gez p1, :cond_0

    .line 145
    const/4 p1, 0x0

    .line 148
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mMax:I

    if-le p1, v0, :cond_1

    .line 149
    iget p1, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mMax:I

    .line 152
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 153
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mProgress:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mVisualProgress:F

    .line 154
    iput p1, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mProgress:I

    .line 157
    :cond_2
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mVisualProgress:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mProgress:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 158
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILoadProgress;->refreshProgressWithAnim()V

    .line 160
    :cond_3
    return-void
.end method

.method public setState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 282
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mState:I

    if-eq v0, p1, :cond_3

    .line 283
    iput p1, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mState:I

    .line 284
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILoadProgress;->refreshDrawableState()V

    .line 296
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mBroadcasting:Z

    if-eqz v0, :cond_0

    .line 297
    return-void

    .line 299
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mBroadcasting:Z

    .line 300
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mOnStateChangeListener:Lcom/coui/appcompat/widget/COUILoadProgress$OnStateChangeListener;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mOnStateChangeListener:Lcom/coui/appcompat/widget/COUILoadProgress$OnStateChangeListener;

    iget v1, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mState:I

    invoke-interface {v0, p0, v1}, Lcom/coui/appcompat/widget/COUILoadProgress$OnStateChangeListener;->onStateChanged(Lcom/coui/appcompat/widget/COUILoadProgress;I)V

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mOnStateChangeWidgetListener:Lcom/coui/appcompat/widget/COUILoadProgress$OnStateChangeListener;

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mOnStateChangeWidgetListener:Lcom/coui/appcompat/widget/COUILoadProgress$OnStateChangeListener;

    iget v1, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mState:I

    invoke-interface {v0, p0, v1}, Lcom/coui/appcompat/widget/COUILoadProgress$OnStateChangeListener;->onStateChanged(Lcom/coui/appcompat/widget/COUILoadProgress;I)V

    .line 307
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mBroadcasting:Z

    .line 309
    :cond_3
    return-void
.end method

.method public toggle()V
    .locals 3

    .line 362
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mState:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 363
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUILoadProgress;->setState(I)V

    goto :goto_0

    .line 364
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mState:I

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    .line 365
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUILoadProgress;->setState(I)V

    goto :goto_0

    .line 366
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mState:I

    if-ne v0, v2, :cond_2

    .line 367
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUILoadProgress;->setState(I)V

    goto :goto_0

    .line 368
    :cond_2
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 369
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUILoadProgress;->setState(I)V

    .line 371
    :cond_3
    :goto_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 478
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
