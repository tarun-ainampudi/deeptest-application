.class public Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.source "COUIBottomSheetDialog.java"


# static fields
.field private static final DISMISS_HEIGHT_ANIM_DURATION_COEFFICIENT:F = 50.0f

.field private static final DISMISS_HEIGHT_ANIM_DURATION_INITIAL_VALUE:F = 200.0f

.field private static final DISMISS_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final NAV_COLOR_ANIM_DURATION:J = 0xc8L

.field private static final OUT_SIDE_ALPHA_VALUE:F = 0.6f

.field private static final PULL_UP_FRICTION:F = 0.8f

.field private static final PULL_UP_REBOUND_BOUNCINESS:I = 0x6

.field private static final PULL_UP_REBOUND_SPEED:I = 0x2a

.field private static final SHOW_HEIGHT_ANIM_DURATION_COEFFICIENT:F = 120.0f

.field private static final SHOW_HEIGHT_ANIM_DURATION_INITIAL_VALUE:F = 300.0f

.field private static final SHOW_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mAdjustResizeHelper:Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;

.field private mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field private mCanPullUp:Z

.field private mComponentCallbacks:Landroid/content/ComponentCallbacks;

.field private mConfigurationChangeEnable:Z

.field private mContentView:Landroid/view/View;

.field private mCurrentOutsideAlpha:F

.field private mCurrentParentViewTranslationY:F

.field private mCurrentSpringTotalOffset:I

.field private mDisableFastCloseFeedbackSpring:Lcom/facebook/rebound/Spring;

.field private mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

.field private mFeedBackView:Landroid/view/View;

.field private mFinalNavColorAfterDismiss:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mFirstShowCollapsed:Z

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mInsetsKeyboardHeight:I

.field private mInternalView:Landroid/view/View;

.field private mIsExecuteNavColorAnimAfterDismiss:Z

.field private mIsExecutingDismissAnim:Z

.field private mIsInterruptingAnim:Z

.field private mIsShowInDialogFragment:Z

.field private mIsShowInMaxHeight:Z

.field private mIsShowInPortrait:Z

.field private mMaxHeight:I

.field private mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mOutSideViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mOutsideView:Landroid/view/View;

.field private mPanelBackground:Landroid/graphics/drawable/Drawable;

.field private mPanelBackgroundTintColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

.field private mPanelDragViewDrawableTintColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mPanelPullUpListener:Lcom/coui/appcompat/dialog/panel/COUIPanelPullUpListener;

.field private mPanelSpringBackAnim:Lcom/facebook/rebound/Spring;

.field private mPanelViewAnimationSet:Landroid/animation/AnimatorSet;

.field private mPanelViewAnimationSetInterpolator:Landroid/view/animation/Interpolator;

.field private mParentView:Landroid/view/ViewGroup;

.field private mParentViewPaddingBottom:I

.field private mPeekHeight:I

.field private mPullUpLimitHeight:I

.field private mPullUpMaxOffset:I

.field private mPulledUpView:Landroid/view/View;

.field private mSkipCollapsed:Z

.field private mWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 79
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3e19999a    # 0.15f

    invoke-direct {v0, v2, v2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->SHOW_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 83
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->DISMISS_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "theme"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 176
    invoke-static {p1, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPullUpLimitHeight:I

    .line 91
    iput v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mMaxHeight:I

    .line 101
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mIsShowInDialogFragment:Z

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mCanPullUp:Z

    .line 108
    iput v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mCurrentSpringTotalOffset:I

    .line 114
    iput v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPeekHeight:I

    .line 115
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mSkipCollapsed:Z

    .line 116
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mFirstShowCollapsed:Z

    .line 124
    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mCurrentParentViewTranslationY:F

    .line 125
    iput v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mCurrentOutsideAlpha:F

    .line 126
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mIsInterruptingAnim:Z

    .line 127
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mConfigurationChangeEnable:Z

    .line 128
    iput v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mInsetsKeyboardHeight:I

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    .line 912
    new-instance v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)V

    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 944
    new-instance v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$10;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$10;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)V

    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    .line 994
    new-instance v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$11;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$11;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)V

    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelPullUpListener:Lcom/coui/appcompat/dialog/panel/COUIPanelPullUpListener;

    .line 177
    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUIBottomSheetDialog:[I

    sget v2, Lcoui/support/appcompat/R$attr;->couiBottomSheetDialogStyle:I

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 179
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIBottomSheetDialog_panelDragViewIcon:I

    sget v2, Lcoui/support/appcompat/R$drawable;->coui_panel_drag_view:I

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getTypedArrayDrawable(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 180
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIBottomSheetDialog_panelDragViewTintColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$color;->coui_panel_drag_view_color:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelDragViewDrawableTintColor:I

    .line 181
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIBottomSheetDialog_panelBackground:I

    sget v2, Lcoui/support/appcompat/R$drawable;->coui_panel_bg_without_shadow:I

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getTypedArrayDrawable(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    .line 182
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIBottomSheetDialog_panelBackgroundTintColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$color;->coui_panel_layout_tint:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelBackgroundTintColor:I

    .line 183
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelBackgroundTintColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 187
    :cond_0
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 188
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 190
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 157
    sget v0, Lcoui/support/appcompat/R$style;->DefaultBottomSheetDialog:I

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 158
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setCancelable(Z)V

    .line 159
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->isInMultiWindowMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mInsetsKeyboardHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mIsInterruptingAnim:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;
    .param p1, "x1"    # Z

    .line 75
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mIsInterruptingAnim:Z

    return p1
.end method

.method static synthetic access$102(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;
    .param p1, "x1"    # I

    .line 75
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mInsetsKeyboardHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mCurrentParentViewTranslationY:F

    return v0
.end method

.method static synthetic access$1102(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;
    .param p1, "x1"    # F

    .line 75
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mCurrentParentViewTranslationY:F

    return p1
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mCurrentOutsideAlpha:F

    return v0
.end method

.method static synthetic access$1302(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;
    .param p1, "x1"    # F

    .line 75
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mCurrentOutsideAlpha:F

    return p1
.end method

.method static synthetic access$1400(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Lcom/facebook/rebound/Spring;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDisableFastCloseFeedbackSpring:Lcom/facebook/rebound/Spring;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mFeedBackView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->hideKeyboard()V

    return-void
.end method

.method static synthetic access$1800(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->removeOnPreDrawListener()V

    return-void
.end method

.method static synthetic access$1900(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;Landroid/view/Window;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;
    .param p1, "x1"    # Landroid/view/Window;

    .line 75
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->initWindowInsetsListener(Landroid/view/Window;)V

    return-void
.end method

.method static synthetic access$200(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mAdjustResizeHelper:Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;ZLandroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/animation/Animator$AnimatorListener;

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->doParentViewTranslationAnim(ZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mIsShowInPortrait:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;
    .param p1, "x1"    # Z

    .line 75
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mIsShowInPortrait:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;
    .param p1, "x1"    # Z

    .line 75
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mConfigurationChangeEnable:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;
    .param p1, "x1"    # Z

    .line 75
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->resetLayoutWidth(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mMaxHeight:I

    return v0
.end method

.method static synthetic access$2402(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;
    .param p1, "x1"    # I

    .line 75
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mMaxHeight:I

    return p1
.end method

.method static synthetic access$2500(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mIsShowInMaxHeight:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mInternalView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Lcom/facebook/rebound/Spring;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelSpringBackAnim:Lcom/facebook/rebound/Spring;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mParentViewPaddingBottom:I

    return v0
.end method

.method static synthetic access$2802(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;
    .param p1, "x1"    # I

    .line 75
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mParentViewPaddingBottom:I

    return p1
.end method

.method static synthetic access$2900(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPullUpLimitHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPulledUpView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPullUpMaxOffset:I

    return v0
.end method

.method static synthetic access$3200(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;
    .param p1, "x1"    # I

    .line 75
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->doSpringBackReboundAnim(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mCurrentSpringTotalOffset:I

    return v0
.end method

.method static synthetic access$3302(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;
    .param p1, "x1"    # I

    .line 75
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mCurrentSpringTotalOffset:I

    return p1
.end method

.method static synthetic access$402(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;
    .param p1, "x1"    # Z

    .line 75
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mIsExecutingDismissAnim:Z

    return p1
.end method

.method static synthetic access$500(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mIsExecuteNavColorAnimAfterDismiss:Z

    return v0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mFinalNavColorAfterDismiss:I

    return v0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;I)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;
    .param p1, "x1"    # I

    .line 75
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->createNavigationColorAnimation(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->superDismiss()V

    return-void
.end method

.method static synthetic access$900(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 75
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mParentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private cancelAnim(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 907
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    .line 910
    :cond_0
    return-void
.end method

.method private changeDialogFitsSystemWindows(Z)V
    .locals 2
    .param p1, "isFitsSystemWindows"    # Z

    .line 890
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 892
    .local v0, "coordinator":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    if-eqz v0, :cond_0

    .line 893
    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setFitsSystemWindows(Z)V

    .line 894
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 895
    .local v1, "container":Landroid/widget/FrameLayout;
    if-eqz v1, :cond_0

    .line 896
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 900
    .end local v0    # "coordinator":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .end local v1    # "container":Landroid/widget/FrameLayout;
    :cond_0
    return-void
.end method

.method private createDraggableLinearLayout()Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 381
    new-instance v0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;-><init>(Landroid/content/Context;)V

    .line 383
    .local v0, "draggableLinearLayout":Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x2

    if-eqz v1, :cond_0

    .line 384
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcoui/support/appcompat/R$dimen;->coui_panel_landscape_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 387
    .local v1, "width":I
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v2, v3

    .line 388
    .local v2, "linearLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 390
    move-object v1, v2

    .end local v2    # "linearLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "linearLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 392
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelDragViewDrawableTintColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 393
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->setDragViewDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 396
    return-object v0
.end method

.method private createNavigationColorAnimation(I)Landroid/animation/ValueAnimator;
    .locals 7
    .param p1, "endColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 597
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/util/COUINavigationBarUtil;->isNavigationBarShow(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 598
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 599
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v2

    .line 600
    .local v2, "startColor":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 601
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v4, v3, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 603
    :cond_0
    if-eq v2, p1, :cond_1

    .line 604
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 605
    .local v1, "colorAnimation":Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 606
    new-instance v3, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$6;

    invoke-direct {v3, p0, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$6;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;Landroid/view/Window;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 612
    return-object v1

    .line 614
    .end local v1    # "colorAnimation":Landroid/animation/ValueAnimator;
    :cond_1
    return-object v1

    .line 617
    .end local v0    # "window":Landroid/view/Window;
    .end local v2    # "startColor":I
    :cond_2
    return-object v1
.end method

.method private createOutsideAlphaAnimation(Z)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "isShow"    # Z

    .line 577
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 578
    sget v0, Lcoui/support/appcompat/R$id;->touch_outside:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    .line 580
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mCurrentOutsideAlpha:F

    .line 581
    .local v0, "startAlphaValue":F
    if-eqz p1, :cond_1

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 582
    .local v1, "endAlphaValue":F
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 583
    .local v2, "outsideAlphaAnimation":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$5;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$5;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 593
    return-object v2
.end method

.method private createPanelTranslateAnimation(II)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "startValue"    # I
    .param p2, "endValue"    # I

    .line 554
    const/4 v0, 0x2

    new-array v0, v0, [F

    int-to-float v1, p1

    const/4 v2, 0x0

    aput v1, v0, v2

    int-to-float v1, p2

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 555
    .local v0, "parentViewTranslateAnimation":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$4;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 568
    return-object v0
.end method

.method private dismissWithAlphaAnim()V
    .locals 6

    .line 466
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->hideKeyboard()V

    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, "navAlphaAnim":Landroid/animation/ValueAnimator;
    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mIsExecuteNavColorAnimAfterDismiss:Z

    if-eqz v1, :cond_0

    .line 469
    iget v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mFinalNavColorAfterDismiss:I

    invoke-direct {p0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->createNavigationColorAnimation(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 471
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 472
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 473
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelViewAnimationSetInterpolator:Landroid/view/animation/Interpolator;

    if-nez v2, :cond_1

    .line 474
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e19999a    # 0.15f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelViewAnimationSetInterpolator:Landroid/view/animation/Interpolator;

    .line 476
    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelViewAnimationSetInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 477
    new-instance v2, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$3;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$3;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 496
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 497
    new-array v2, v2, [Landroid/animation/Animator;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->createOutsideAlphaAnimation(Z)Landroid/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 499
    :cond_2
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->createOutsideAlphaAnimation(Z)Landroid/animation/ValueAnimator;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object v0, v4, v2

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 501
    :goto_0
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 502
    return-void
.end method

.method private dismissWithInterruptibleAnim()V
    .locals 2

    .line 440
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->hideKeyboard()V

    .line 441
    new-instance v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$2;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->doParentViewTranslationAnim(ZLandroid/animation/Animator$AnimatorListener;)V

    .line 463
    return-void
.end method

.method private doFeedbackAnimation(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 630
    if-nez p1, :cond_0

    .line 631
    return-void

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDisableFastCloseFeedbackSpring:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mFeedBackView:Landroid/view/View;

    if-eq v0, p1, :cond_2

    .line 634
    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mFeedBackView:Landroid/view/View;

    .line 635
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    .line 636
    .local v0, "springSystem":Lcom/facebook/rebound/SpringSystem;
    invoke-virtual {v0}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDisableFastCloseFeedbackSpring:Lcom/facebook/rebound/Spring;

    .line 637
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDisableFastCloseFeedbackSpring:Lcom/facebook/rebound/Spring;

    const-wide v2, 0x400e666666666666L    # 3.8

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    .line 638
    invoke-static {v2, v3, v4, v5}, Lcom/facebook/rebound/SpringConfig;->fromBouncinessAndSpeed(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v2

    .line 637
    invoke-virtual {v1, v2}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 639
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDisableFastCloseFeedbackSpring:Lcom/facebook/rebound/Spring;

    new-instance v2, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$7;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$7;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)V

    invoke-virtual {v1, v2}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 668
    .end local v0    # "springSystem":Lcom/facebook/rebound/SpringSystem;
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDisableFastCloseFeedbackSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 669
    return-void
.end method

.method private doParentViewTranslationAnim(ZLandroid/animation/Animator$AnimatorListener;)V
    .locals 9
    .param p1, "isShow"    # Z
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 510
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelViewAnimationSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelViewAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mIsInterruptingAnim:Z

    .line 512
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelViewAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->getPanelMaxHeight(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mMaxHeight:I

    .line 516
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mIsShowInMaxHeight:Z

    if-eqz v0, :cond_1

    .line 517
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mMaxHeight:I

    goto :goto_0

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 520
    .local v0, "measureHeight":I
    iget v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mMaxHeight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 522
    .local v0, "contentViewHeight":I
    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mParentView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_8

    if-lez v0, :cond_8

    .line 523
    if-eqz p1, :cond_3

    iget-boolean v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mFirstShowCollapsed:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPeekHeight:I

    goto :goto_1

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mCurrentParentViewTranslationY:F

    float-to-int v2, v2

    .line 524
    .local v2, "startValue":I
    :goto_1
    const/4 v3, 0x0

    if-eqz p1, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    iget-boolean v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mFirstShowCollapsed:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    iget v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPeekHeight:I

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    .line 526
    .local v4, "endValue":I
    :goto_2
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelViewAnimationSet:Landroid/animation/AnimatorSet;

    .line 528
    if-eqz p1, :cond_6

    .line 529
    const/high16 v5, 0x42f00000    # 120.0f

    sub-int v6, v2, v4

    int-to-float v6, v6

    mul-float/2addr v6, v5

    iget v5, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mMaxHeight:I

    int-to-float v5, v5

    div-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x43960000    # 300.0f

    add-float/2addr v5, v6

    .line 530
    .local v5, "duration":F
    iget-object v6, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelViewAnimationSet:Landroid/animation/AnimatorSet;

    float-to-long v7, v5

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 531
    iget-object v6, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelViewAnimationSet:Landroid/animation/AnimatorSet;

    sget-object v7, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->SHOW_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3

    .line 533
    .end local v5    # "duration":F
    :cond_6
    iget v5, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mInsetsKeyboardHeight:I

    sub-int/2addr v4, v5

    .line 534
    const/high16 v5, 0x42480000    # 50.0f

    sub-int v6, v2, v4

    int-to-float v6, v6

    mul-float/2addr v6, v5

    iget v5, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mMaxHeight:I

    int-to-float v5, v5

    div-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x43480000    # 200.0f

    add-float/2addr v5, v6

    .line 535
    .restart local v5    # "duration":F
    iget-object v6, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelViewAnimationSet:Landroid/animation/AnimatorSet;

    float-to-long v7, v5

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 536
    iget-object v6, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelViewAnimationSet:Landroid/animation/AnimatorSet;

    sget-object v7, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->DISMISS_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 538
    :goto_3
    if-eqz p2, :cond_7

    .line 539
    iget-object v6, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelViewAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 541
    :cond_7
    iget-object v6, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelViewAnimationSet:Landroid/animation/AnimatorSet;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    invoke-direct {p0, v2, v4}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->createPanelTranslateAnimation(II)Landroid/animation/ValueAnimator;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->createOutsideAlphaAnimation(Z)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v7, v1

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 542
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelViewAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 543
    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mIsExecutingDismissAnim:Z

    .line 545
    .end local v2    # "startValue":I
    .end local v4    # "endValue":I
    .end local v5    # "duration":F
    :cond_8
    return-void
.end method

.method private doSpringBackReboundAnim(I)V
    .locals 6
    .param p1, "offset"    # I

    .line 1030
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    .line 1031
    .local v0, "springSystem":Lcom/facebook/rebound/SpringSystem;
    invoke-virtual {v0}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelSpringBackAnim:Lcom/facebook/rebound/Spring;

    .line 1032
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelSpringBackAnim:Lcom/facebook/rebound/Spring;

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    const-wide/high16 v4, 0x4045000000000000L    # 42.0

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/rebound/SpringConfig;->fromBouncinessAndSpeed(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 1033
    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mCurrentSpringTotalOffset:I

    .line 1034
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelSpringBackAnim:Lcom/facebook/rebound/Spring;

    new-instance v2, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$12;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$12;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)V

    invoke-virtual {v1, v2}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 1066
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelSpringBackAnim:Lcom/facebook/rebound/Spring;

    int-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 1067
    return-void
.end method

.method private getTypedArrayDrawable(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I
    .param p3, "defaultDrawableId"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 208
    :cond_0
    if-nez v0, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 211
    :cond_1
    return-object v0
.end method

.method private hideKeyboard()V
    .locals 3

    .line 803
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mInternalView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 806
    :cond_0
    return-void
.end method

.method private initWindowInsetsListener(Landroid/view/Window;)V
    .locals 2
    .param p1, "window"    # Landroid/view/Window;

    .line 320
    if-nez p1, :cond_0

    .line 321
    return-void

    .line 323
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 324
    .local v0, "decorView":Landroid/view/View;
    new-instance v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$1;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)V

    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    .line 345
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 346
    return-void
.end method

.method private isDisplayInUpperWindow()Z
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 874
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 875
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->isDisplayInUpperWindow(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInMultiWindowMode()Z
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 880
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 881
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private removeOnPreDrawListener()V
    .locals 2

    .line 939
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 942
    :cond_0
    return-void
.end method

.method private resetLayoutWidth(Z)V
    .locals 4
    .param p1, "isPortrait"    # Z

    .line 977
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mParentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_2

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 981
    .local v0, "draggableLinearLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 982
    .local v1, "parentViewLayoutParams":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_1

    .line 986
    :cond_1
    if-eqz p1, :cond_2

    const/4 v2, -0x1

    goto :goto_0

    .line 987
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$dimen;->coui_panel_landscape_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 988
    .local v2, "width":I
    :goto_0
    iput v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->width:I

    .line 989
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 990
    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 991
    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    invoke-virtual {v3, v0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 992
    return-void

    .line 983
    .end local v2    # "width":I
    :cond_3
    :goto_1
    return-void

    .line 978
    .end local v0    # "draggableLinearLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "parentViewLayoutParams":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    :cond_4
    :goto_2
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resid"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 194
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 195
    return p1

    .line 197
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 198
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$attr;->couiBottomSheetDialogStyle:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 199
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method private setStatusBarTransparentAndFont()V
    .locals 5

    .line 848
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 849
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_3

    .line 850
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 851
    .local v1, "decorView":Landroid/view/View;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    .line 852
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 853
    .local v2, "flag":I
    or-int/lit16 v2, v2, 0x400

    .line 854
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->isInMultiWindowMode()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->isDisplayInUpperWindow()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-direct {p0, v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->changeDialogFitsSystemWindows(Z)V

    .line 855
    invoke-virtual {v0, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 856
    const/high16 v3, -0x80000000

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 857
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 858
    and-int/lit16 v2, v2, -0x2001

    .line 859
    and-int/lit8 v2, v2, -0x11

    goto :goto_1

    .line 861
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2

    .line 862
    or-int/lit16 v2, v2, 0x100

    goto :goto_1

    .line 864
    :cond_2
    or-int/lit8 v2, v2, 0x10

    .line 867
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 870
    .end local v1    # "decorView":Landroid/view/View;
    .end local v2    # "flag":I
    :cond_3
    return-void
.end method

.method private showInMaxHeight()V
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->layoutAtMaxHeight()V

    .line 762
    :cond_0
    return-void
.end method

.method private stopFeedbackAnimation()V
    .locals 4

    .line 672
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDisableFastCloseFeedbackSpring:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDisableFastCloseFeedbackSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->getVelocity()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDisableFastCloseFeedbackSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    .line 674
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDisableFastCloseFeedbackSpring:Lcom/facebook/rebound/Spring;

    .line 676
    :cond_0
    return-void
.end method

.method private superDismiss()V
    .locals 0

    .line 436
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    .line 437
    return-void
.end method


# virtual methods
.method public canPullUp()Z
    .locals 1

    .line 746
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mCanPullUp:Z

    return v0
.end method

.method public dismiss()V
    .locals 1

    .line 401
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->stopFeedbackAnimation()V

    .line 402
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->dismiss(Z)V

    .line 403
    return-void
.end method

.method public dismiss(Z)V
    .locals 2
    .param p1, "isPerformAnim"    # Z

    .line 424
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mIsExecutingDismissAnim:Z

    if-nez v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->dismissWithAlphaAnim()V

    goto :goto_0

    .line 428
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->dismissWithInterruptibleAnim()V

    goto :goto_0

    .line 431
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->superDismiss()V

    .line 433
    :goto_0
    return-void
.end method

.method public doFeedbackAnimation()V
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelViewAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelViewAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mParentView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->doFeedbackAnimation(Landroid/view/View;)V

    .line 627
    :cond_0
    return-void
.end method

.method public getAdjustResizeHelper()Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;
    .locals 1

    .line 903
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mAdjustResizeHelper:Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getDialogHeight()I
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDialogMaxHeight()I
    .locals 1

    .line 844
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mMaxHeight:I

    return v0
.end method

.method public getDragableLinearLayout()Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    return-object v0
.end method

.method public getPeekHeight()I
    .locals 1

    .line 706
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPeekHeight:I

    return v0
.end method

.method public isFirstShowCollapsed()Z
    .locals 1

    .line 729
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mFirstShowCollapsed:Z

    return v0
.end method

.method public isSkipCollapsed()Z
    .locals 1

    .line 720
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mSkipCollapsed:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 263
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onAttachedToWindow()V

    .line 264
    new-instance v0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;

    invoke-direct {v0}, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mAdjustResizeHelper:Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;

    .line 265
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->initWindowInsetsListener(Landroid/view/Window;)V

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 269
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v1, v1, 0xf

    or-int/lit8 v1, v1, 0x10

    .line 271
    .local v1, "mode":I
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 272
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setStatusBarTransparentAndFont()V

    .line 274
    .end local v1    # "mode":I
    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 275
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 277
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mAdjustResizeHelper:Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;

    if-eqz v1, :cond_3

    .line 278
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mAdjustResizeHelper:Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->setIgnoreHideKeyboardAnim(Z)V

    .line 280
    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v1, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 281
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 282
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->getCurrentWindowVisibleHeight(Landroid/app/Activity;Landroid/content/res/Configuration;)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPullUpLimitHeight:I

    goto :goto_0

    .line 284
    :cond_4
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->getNormalVisibleHeight(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPullUpLimitHeight:I

    .line 286
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_panel_pull_up_max_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPullUpMaxOffset:I

    .line 287
    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mCanPullUp:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    instance-of v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    if-eqz v1, :cond_5

    .line 288
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    check-cast v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelPullUpListener:Lcom/coui/appcompat/dialog/panel/COUIPanelPullUpListener;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setPullUpListener(Lcom/coui/appcompat/dialog/panel/COUIPanelPullUpListener;)V

    .line 290
    :cond_5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 216
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    .line 217
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 218
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    instance-of v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    check-cast v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPeekHeight:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setPanelPeekHeight(I)V

    .line 220
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    check-cast v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mSkipCollapsed:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setPanelSkipCollapsed(Z)V

    .line 221
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mFirstShowCollapsed:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    check-cast v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setPanelState(I)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    check-cast v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setPanelState(I)V

    .line 228
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 229
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 230
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_3

    .line 231
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 232
    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mIsShowInDialogFragment:Z

    if-eqz v1, :cond_2

    .line 233
    sget v1, Lcoui/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 235
    :cond_2
    sget v1, Lcoui/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 237
    :goto_1
    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 238
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 241
    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mIsShowInPortrait:Z

    .line 242
    sget v1, Lcoui/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mInternalView:Landroid/view/View;

    .line 243
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mInternalView:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mIsShowInPortrait:Z

    if-nez v1, :cond_5

    .line 244
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mInternalView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 245
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 246
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mInternalView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mIsShowInMaxHeight:Z

    if-eqz v1, :cond_6

    .line 249
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->showInMaxHeight()V

    .line 252
    :cond_6
    sget v1, Lcoui/support/appcompat/R$id;->touch_outside:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    .line 253
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 254
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    const/16 v2, 0x99

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 255
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mOutSideViewTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_7

    .line 256
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mOutSideViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 259
    :cond_7
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mAdjustResizeHelper:Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mAdjustResizeHelper:Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->releaseData()Z

    .line 296
    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mAdjustResizeHelper:Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 299
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 301
    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    .line 303
    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelViewAnimationSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->cancelAnim(Landroid/animation/Animator;)V

    .line 304
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    if-eqz v2, :cond_2

    .line 305
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 307
    :cond_2
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    instance-of v2, v2, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    if-eqz v2, :cond_3

    .line 308
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    check-cast v2, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setPullUpListener(Lcom/coui/appcompat/dialog/panel/COUIPanelPullUpListener;)V

    .line 309
    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelPullUpListener:Lcom/coui/appcompat/dialog/panel/COUIPanelPullUpListener;

    .line 311
    :cond_3
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onDetachedFromWindow()V

    .line 312
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 778
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onStart()V

    .line 779
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    instance-of v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    check-cast v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    new-instance v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$8;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$8;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->addBottomSheetCallback(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$COUIBottomSheetCallback;)V

    .line 800
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 5

    .line 1073
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    if-nez v0, :cond_0

    .line 1074
    return-void

    .line 1076
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate:[I

    const/4 v3, 0x0

    sget v4, Lcoui/support/appcompat/R$style;->DefaultBottomSheetDialog:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1079
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIBottomSheetDialog_panelDragViewIcon:I

    sget v2, Lcoui/support/appcompat/R$drawable;->coui_panel_drag_view:I

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getTypedArrayDrawable(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 1080
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIBottomSheetDialog_panelDragViewTintColor:I

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$color;->coui_panel_drag_view_color:I

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelDragViewDrawableTintColor:I

    .line 1081
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIBottomSheetDialog_panelBackground:I

    sget v2, Lcoui/support/appcompat/R$drawable;->coui_panel_bg_without_shadow:I

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getTypedArrayDrawable(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    .line 1082
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIBottomSheetDialog_panelBackgroundTintColor:I

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$color;->coui_panel_layout_tint:I

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelBackgroundTintColor:I

    .line 1083
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1085
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1086
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelDragViewDrawableTintColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1087
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->setDragViewDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1090
    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 1091
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelBackgroundTintColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1092
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1094
    :cond_2
    return-void
.end method

.method public setCanPullUp(Z)V
    .locals 2
    .param p1, "canPullUp"    # Z

    .line 750
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mCanPullUp:Z

    if-eq v0, p1, :cond_1

    .line 751
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mCanPullUp:Z

    .line 752
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    instance-of v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    if-eqz v0, :cond_1

    .line 753
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    check-cast v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mCanPullUp:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelPullUpListener:Lcom/coui/appcompat/dialog/panel/COUIPanelPullUpListener;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setPullUpListener(Lcom/coui/appcompat/dialog/panel/COUIPanelPullUpListener;)V

    .line 756
    :cond_1
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .line 363
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mIsShowInDialogFragment:Z

    if-nez v0, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->createDraggableLinearLayout()Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    .line 366
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mContentView:Landroid/view/View;

    .line 367
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->addView(Landroid/view/View;)V

    .line 369
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    invoke-super {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 370
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mParentView:Landroid/view/ViewGroup;

    goto :goto_0

    .line 371
    :cond_0
    if-eqz p1, :cond_1

    .line 372
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mContentView:Landroid/view/View;

    .line 373
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 374
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mParentView:Landroid/view/ViewGroup;

    .line 376
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mParentView:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPulledUpView:Landroid/view/View;

    .line 377
    return-void
.end method

.method public setDragableLinearLayout(Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;)V
    .locals 1
    .param p1, "dragableLinearLayout"    # Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    .line 813
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setDragableLinearLayout(Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;Z)V

    .line 814
    return-void
.end method

.method public setDragableLinearLayout(Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;Z)V
    .locals 1
    .param p1, "dragableLinearLayout"    # Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;
    .param p2, "isRefresh"    # Z

    .line 817
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    .line 818
    if-eqz p1, :cond_0

    .line 819
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPulledUpView:Landroid/view/View;

    .line 821
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mConfigurationChangeEnable:Z

    if-eqz v0, :cond_1

    .line 822
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->resetLayoutWidth(Z)V

    .line 824
    :cond_1
    if-eqz p2, :cond_2

    .line 825
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->refresh()V

    .line 827
    :cond_2
    return-void
.end method

.method public setExecuteNavColorAnimAfterDismiss(Z)V
    .locals 0
    .param p1, "isExecuteNavColorAnimAfterDismiss"    # Z

    .line 411
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mIsExecuteNavColorAnimAfterDismiss:Z

    .line 412
    return-void
.end method

.method public setFinalNavColorAfterDismiss(I)V
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 420
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mFinalNavColorAfterDismiss:I

    .line 421
    return-void
.end method

.method public setFirstShowCollapsed(Z)V
    .locals 1
    .param p1, "firstShowCollapsed"    # Z

    .line 739
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mFirstShowCollapsed:Z

    .line 740
    if-eqz p1, :cond_0

    .line 741
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mIsShowInMaxHeight:Z

    .line 743
    :cond_0
    return-void
.end method

.method public setIsShowInMaxHeight(Z)V
    .locals 1
    .param p1, "isShowInMaxHeight"    # Z

    .line 770
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mIsShowInMaxHeight:Z

    .line 771
    if-eqz p1, :cond_0

    .line 772
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mFirstShowCollapsed:Z

    .line 774
    :cond_0
    return-void
.end method

.method public setOutSideViewTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 2
    .param p1, "outSideViewTouchListener"    # Landroid/view/View$OnTouchListener;

    .line 684
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mOutSideViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 685
    sget v0, Lcoui/support/appcompat/R$id;->touch_outside:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 686
    .local v0, "outSideView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 687
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mOutSideViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 689
    :cond_0
    return-void
.end method

.method public setPanelBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "panelBackground"    # Landroid/graphics/drawable/Drawable;

    .line 1126
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 1127
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    .line 1128
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1130
    :cond_0
    return-void
.end method

.method public setPanelBackgroundTintColor(I)V
    .locals 2
    .param p1, "panelBackgroundTintColor"    # I

    .line 1138
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelBackgroundTintColor:I

    if-eq v0, p1, :cond_0

    .line 1139
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelBackgroundTintColor:I

    .line 1140
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelBackgroundTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1141
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1143
    :cond_0
    return-void
.end method

.method public setPanelDragViewDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "panelDragViewDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 1102
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 1103
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 1104
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->setDragViewDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1106
    :cond_0
    return-void
.end method

.method public setPanelDragViewDrawableTintColor(I)V
    .locals 2
    .param p1, "panelDragViewDrawableTintColor"    # I

    .line 1113
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelDragViewDrawableTintColor:I

    if-eq v0, p1, :cond_0

    .line 1114
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelDragViewDrawableTintColor:I

    .line 1115
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelDragViewDrawableTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1116
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mDragableLinearLayout:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->setDragViewDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1118
    :cond_0
    return-void
.end method

.method public setPeekHeight(I)V
    .locals 0
    .param p1, "peekHeight"    # I

    .line 697
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mPeekHeight:I

    .line 698
    return-void
.end method

.method setShowInDialogFragment(Z)V
    .locals 0
    .param p1, "showInDialogFragment"    # Z

    .line 349
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mIsShowInDialogFragment:Z

    .line 350
    return-void
.end method

.method public setSkipCollapsed(Z)V
    .locals 0
    .param p1, "skipCollapsed"    # Z

    .line 713
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->mSkipCollapsed:Z

    .line 714
    return-void
.end method
