.class public Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "COUIBottomSheetDialogFragment.java"


# static fields
.field private static final ALPHA_ANIM_DURATION:J = 0x64L

.field private static final SAVE_IS_FIRST_PANEL_VISIBILITY_KEY:Ljava/lang/String; = "SAVE_IS_FIRST_PANEL_VISIBILITY_KEY"


# instance fields
.field private mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

.field private mCanPullUp:Z

.field private mCurrentPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

.field private mCurrentPanelHeight:I

.field private mCurrentPanelView:Landroid/view/ViewGroup;

.field private mDialogFragmentView:Landroid/view/View;

.field private mFinalNavColorAfterDismiss:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mFirstPanelContainer:Landroid/view/ViewGroup;

.field private mFirstPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

.field private mFirstShowCollapsed:Z

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsDraggable:Z

.field private mIsExecuteNavColorAnimAfterDismiss:Z

.field private mIsFirstPanelVisibility:Z

.field private mIsReplacing:Z

.field private mIsSavedInstanceState:Z

.field private mMaxHeight:I

.field private mNextPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

.field private mNextPanelHeight:I

.field private mNextPanelView:Landroid/view/ViewGroup;

.field private mOutSideView:Landroid/view/View;

.field private mPeekHeight:I

.field private mSecondPanelContainer:Landroid/view/ViewGroup;

.field private mSecondPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

.field private mShouldHandleHideKeyboardAnim:Z

.field private mSkipCollapsed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mShouldHandleHideKeyboardAnim:Z

    .line 61
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mIsFirstPanelVisibility:Z

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mIsSavedInstanceState:Z

    .line 76
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mIsReplacing:Z

    .line 77
    iput v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mPeekHeight:I

    .line 78
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mSkipCollapsed:Z

    .line 79
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstShowCollapsed:Z

    .line 80
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mIsDraggable:Z

    .line 81
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCanPullUp:Z

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    .line 48
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelHeight:I

    return v0
.end method

.method static synthetic access$002(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;
    .param p1, "x1"    # I

    .line 48
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelHeight:I

    return p1
.end method

.method static synthetic access$100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    .line 48
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;
    .param p1, "x1"    # Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    .line 48
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->readyToShowPanel(Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;)V

    return-void
.end method

.method static synthetic access$102(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .line 48
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    .line 48
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mMaxHeight:I

    return v0
.end method

.method static synthetic access$1102(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;
    .param p1, "x1"    # I

    .line 48
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mMaxHeight:I

    return p1
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    .line 48
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->getMaxHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    .line 48
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mNextPanelHeight:I

    return v0
.end method

.method static synthetic access$1302(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;
    .param p1, "x1"    # I

    .line 48
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mNextPanelHeight:I

    return p1
.end method

.method static synthetic access$1400(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;
    .param p1, "x1"    # Landroid/view/View;

    .line 48
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->setViewHeightIntoWrapContent(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;Landroid/view/View;IILandroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/animation/Animator$AnimatorListener;

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->doHeightAnim(Landroid/view/View;IILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$1602(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mIsReplacing:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;Landroid/view/ViewGroup;Ljava/lang/Boolean;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;
    .param p1, "x1"    # Landroid/view/ViewGroup;
    .param p2, "x2"    # Ljava/lang/Boolean;
    .param p3, "x3"    # Landroid/animation/Animator$AnimatorListener;

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->doViewGroupAlphaAnim(Landroid/view/ViewGroup;Ljava/lang/Boolean;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    .line 48
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;
    .param p1, "x1"    # Landroid/view/View;

    .line 48
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    .line 48
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mOutSideView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;Landroidx/fragment/app/Fragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;
    .param p1, "x1"    # Landroidx/fragment/app/Fragment;

    .line 48
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->getFragmentHeight(Landroidx/fragment/app/Fragment;)I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;
    .param p1, "x1"    # Landroid/view/View;

    .line 48
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mOutSideView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    .line 48
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mIsSavedInstanceState:Z

    return p1
.end method

.method static synthetic access$500(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    .line 48
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    return-object v0
.end method

.method static synthetic access$502(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;)Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;
    .param p1, "x1"    # Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    .line 48
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    return-object p1
.end method

.method static synthetic access$600(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;
    .param p1, "x1"    # Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    .line 48
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->setPanelListener(Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;)V

    return-void
.end method

.method static synthetic access$700(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    .line 48
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mDialogFragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    .line 48
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mNextPanelView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$802(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .line 48
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mNextPanelView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$900(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    .line 48
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private doHeightAnim(Landroid/view/View;IILandroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startHeight"    # I
    .param p3, "offset"    # I
    .param p4, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 457
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mMaxHeight:I

    if-eqz v0, :cond_1

    .line 458
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 459
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    add-int v3, p2, p3

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 460
    .local v1, "heightAnim":Landroid/animation/ValueAnimator;
    const/16 v2, 0x78

    iget v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mMaxHeight:I

    div-int/2addr v2, v3

    mul-int/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x12c

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 461
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    const v5, 0x3dcccccd    # 0.1f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 462
    if-eqz p4, :cond_0

    .line 463
    invoke-virtual {v1, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 465
    :cond_0
    new-instance v2, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$7;

    invoke-direct {v2, p0, v0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$7;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 472
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 474
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "heightAnim":Landroid/animation/ValueAnimator;
    :cond_1
    return-void
.end method

.method private doViewGroupAlphaAnim(Landroid/view/ViewGroup;Ljava/lang/Boolean;Landroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "isVisible"    # Ljava/lang/Boolean;
    .param p3, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 424
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;->getDragView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 425
    .local v0, "firstDragView":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mSecondPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mSecondPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;->getDragView()Landroid/view/View;

    move-result-object v1

    nop

    .line 426
    .local v1, "secondDragView":Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    .line 427
    .local v2, "startValue":F
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    .line 428
    .local v3, "endValue":F
    :goto_2
    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v3, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 429
    .local v4, "viewGroupAlphaAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 430
    invoke-virtual {v4, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 431
    new-instance v5, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$6;

    invoke-direct {v5, p0, p1, v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$6;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 453
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 454
    return-void
.end method

.method private getFragmentHeight(Landroidx/fragment/app/Fragment;)I
    .locals 1
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 409
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 412
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getMaxHeight()I
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;->getDraggableLinearLayout()Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getMaxHeight()I

    move-result v0

    return v0

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private hideKeyboard(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 348
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->setShouldHandleHideKeyboardAnim(Z)V

    .line 350
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 352
    :cond_0
    return-void
.end method

.method private initFragment()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    if-eqz v0, :cond_1

    .line 171
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mIsSavedInstanceState:Z

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$id;->first_panel_container:I

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    .line 173
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;->setShowOnFirstPanel(Ljava/lang/Boolean;)V

    .line 177
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;->onAdd(Ljava/lang/Boolean;)V

    .line 178
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    .line 179
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->setViewHeightIntoWrapContent(Landroid/view/View;)V

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$1;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 203
    return-void
.end method

.method private isShouldHandleHideKeyboardAnim()Z
    .locals 1

    .line 383
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mShouldHandleHideKeyboardAnim:Z

    return v0
.end method

.method private preShowPanel(Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;)V
    .locals 6
    .param p1, "panelFragment"    # Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    .line 239
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mNextPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mNextPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    if-ne v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 240
    .local v0, "isSamePanelFragment":Z
    :goto_0
    const/4 v3, 0x0

    .line 241
    .local v3, "abandonPanelFragment":Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mNextPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    .line 243
    iget-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelContainer:Landroid/view/ViewGroup;

    if-ne v4, v5, :cond_2

    .line 244
    iget-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mSecondPanelContainer:Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mNextPanelView:Landroid/view/ViewGroup;

    .line 245
    iget-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mSecondPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    if-eqz v4, :cond_1

    .line 246
    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mSecondPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    .line 248
    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mSecondPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    .line 249
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;->setShowOnFirstPanel(Ljava/lang/Boolean;)V

    .line 250
    iput-boolean v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mIsFirstPanelVisibility:Z

    goto :goto_1

    .line 251
    :cond_2
    iget-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mSecondPanelContainer:Landroid/view/ViewGroup;

    if-ne v4, v5, :cond_4

    .line 252
    iget-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelContainer:Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mNextPanelView:Landroid/view/ViewGroup;

    .line 253
    iget-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    if-eqz v4, :cond_3

    .line 254
    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    .line 256
    :cond_3
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    .line 257
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;->setShowOnFirstPanel(Ljava/lang/Boolean;)V

    .line 258
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mIsFirstPanelVisibility:Z

    .line 260
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelHeight:I

    .line 262
    iget-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mNextPanelView:Landroid/view/ViewGroup;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 263
    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mNextPanelView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    if-eq v4, v5, :cond_7

    .line 264
    if-eqz v3, :cond_6

    .line 265
    iget-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mNextPanelView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelContainer:Landroid/view/ViewGroup;

    if-ne v4, v5, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;->onAbandon(Ljava/lang/Boolean;)V

    .line 267
    :cond_6
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mNextPanelView:Landroid/view/ViewGroup;

    .line 268
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 269
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 270
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mDialogFragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$3;

    invoke-direct {v2, p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$3;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_3

    .line 279
    :cond_7
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->readyToShowPanel(Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;)V

    .line 281
    :goto_3
    return-void
.end method

.method private readyToShowPanel(Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;)V
    .locals 3
    .param p1, "panelFragment"    # Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    .line 284
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelContainer:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;->onHide(Ljava/lang/Boolean;)V

    .line 285
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->showPanel(Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;)V

    .line 286
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->setPanelListener(Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;)V

    .line 287
    return-void
.end method

.method private setDialogOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnKeyListener;

    .line 574
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 577
    :cond_0
    return-void
.end method

.method private setOnTouchOutSideViewListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .line 557
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setOutSideViewTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 560
    :cond_0
    return-void
.end method

.method private setPanelDragListener(Lcom/coui/appcompat/dialog/panel/COUIPanelDragListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/coui/appcompat/dialog/panel/COUIPanelDragListener;

    .line 563
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setPanelDragListener(Lcom/coui/appcompat/dialog/panel/COUIPanelDragListener;)V

    .line 566
    :cond_0
    return-void
.end method

.method private setPanelListener(Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;)V
    .locals 1
    .param p1, "panelFragment"    # Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    .line 544
    if-eqz p1, :cond_0

    .line 545
    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;->getDragPanelListener()Lcom/coui/appcompat/dialog/panel/COUIPanelDragListener;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->setPanelDragListener(Lcom/coui/appcompat/dialog/panel/COUIPanelDragListener;)V

    .line 546
    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;->getOutSideViewOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->setOnTouchOutSideViewListener(Landroid/view/View$OnTouchListener;)V

    .line 547
    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;->getDialogOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->setDialogOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 549
    :cond_0
    return-void
.end method

.method private setShouldHandleHideKeyboardAnim(Z)V
    .locals 0
    .param p1, "shouldHandleHideKeyboardAnim"    # Z

    .line 393
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mShouldHandleHideKeyboardAnim:Z

    .line 394
    return-void
.end method

.method private setViewHeightIntoWrapContent(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 524
    if-eqz p1, :cond_0

    .line 525
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 526
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 527
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method private showPanel(Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;)V
    .locals 3
    .param p1, "panelFragment"    # Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    .line 290
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    invoke-direct {v2, p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->doViewGroupAlphaAnim(Landroid/view/ViewGroup;Ljava/lang/Boolean;Landroid/animation/Animator$AnimatorListener;)V

    .line 345
    return-void
.end method


# virtual methods
.method public backToFirstPanel()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->setCancelable(Z)V

    .line 211
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->replacePanelFragment(Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;)V

    .line 212
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$2;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 219
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->dismiss()V

    goto :goto_0

    .line 659
    :cond_0
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 661
    :goto_0
    return-void
.end method

.method public doFeedbackAnimation()V
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->doFeedbackAnimation()V

    .line 483
    :cond_0
    return-void
.end method

.method getCurrentPanelHeight()I
    .locals 1

    .line 631
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelHeight:I

    return v0
.end method

.method public getPeekheight()I
    .locals 1

    .line 594
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mPeekHeight:I

    return v0
.end method

.method public isFirstShowCollapsed()Z
    .locals 1

    .line 617
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstShowCollapsed:Z

    return v0
.end method

.method public isSkipCollapsed()Z
    .locals 1

    .line 608
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mSkipCollapsed:Z

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$style;->DefaultBottomSheetDialog:I

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setShowInDialogFragment(Z)V

    .line 121
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    iget v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mPeekHeight:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setPeekHeight(I)V

    .line 122
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mSkipCollapsed:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setSkipCollapsed(Z)V

    .line 123
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstShowCollapsed:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setFirstShowCollapsed(Z)V

    .line 124
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCanPullUp:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setCanPullUp(Z)V

    .line 125
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mIsExecuteNavColorAnimAfterDismiss:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setExecuteNavColorAnimAfterDismiss(Z)V

    .line 126
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    iget v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFinalNavColorAfterDismiss:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setFinalNavColorAfterDismiss(I)V

    .line 127
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 128
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mIsDraggable:Z

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    .line 129
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 135
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$layout;->coui_bottom_sheet_dialog:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mDialogFragmentView:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mDialogFragmentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .line 533
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onDestroyView()V

    .line 534
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 536
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setOutSideViewTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    instance-of v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    check-cast v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setPanelDragListener(Lcom/coui/appcompat/dialog/panel/COUIPanelDragListener;)V

    .line 541
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 487
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 488
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 489
    const-string v0, "SAVE_IS_FIRST_PANEL_VISIBILITY_KEY"

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 491
    :cond_1
    const-string v0, "SAVE_IS_FIRST_PANEL_VISIBILITY_KEY"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 493
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 356
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onStart()V

    .line 357
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    instance-of v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    new-instance v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$5;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 375
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 141
    invoke-super {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mDialogFragmentView:Landroid/view/View;

    sget v1, Lcoui/support/appcompat/R$id;->first_panel_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelContainer:Landroid/view/ViewGroup;

    .line 146
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mDialogFragmentView:Landroid/view/View;

    sget v1, Lcoui/support/appcompat/R$id;->second_panel_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mSecondPanelContainer:Landroid/view/ViewGroup;

    .line 147
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mSecondPanelContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    goto :goto_1

    .line 150
    :cond_1
    if-eqz p2, :cond_3

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mIsSavedInstanceState:Z

    .line 152
    const-string v1, "SAVE_IS_FIRST_PANEL_VISIBILITY_KEY"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mIsFirstPanelVisibility:Z

    .line 153
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mIsFirstPanelVisibility:Z

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelContainer:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelView:Landroid/view/ViewGroup;

    .line 155
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mSecondPanelContainer:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mNextPanelView:Landroid/view/ViewGroup;

    goto :goto_0

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mSecondPanelContainer:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelView:Landroid/view/ViewGroup;

    .line 158
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelContainer:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mNextPanelView:Landroid/view/ViewGroup;

    goto :goto_0

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelContainer:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelView:Landroid/view/ViewGroup;

    .line 162
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mSecondPanelContainer:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mNextPanelView:Landroid/view/ViewGroup;

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mNextPanelView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 166
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->initFragment()V

    .line 167
    return-void

    .line 148
    :cond_4
    :goto_1
    return-void
.end method

.method public replacePanelFragment(Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;)V
    .locals 2
    .param p1, "panelFragment"    # Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    .line 227
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mSecondPanelContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mIsReplacing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mIsReplacing:Z

    .line 231
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getAdjustResizeHelper()Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getAdjustResizeHelper()Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->setIgnoreHideKeyboardAnim(Z)V

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mDialogFragmentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->hideKeyboard(Landroid/view/View;)V

    .line 235
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->preShowPanel(Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;)V

    .line 236
    return-void

    .line 228
    :cond_2
    :goto_0
    return-void
.end method

.method public setCanPullUp(Z)V
    .locals 2
    .param p1, "canPullUp"    # Z

    .line 648
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCanPullUp:Z

    .line 649
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCanPullUp:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setCanPullUp(Z)V

    .line 652
    :cond_0
    return-void
.end method

.method setCurrentPanelHeight(I)V
    .locals 0
    .param p1, "currentPanelHeight"    # I

    .line 635
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelHeight:I

    .line 636
    return-void
.end method

.method public setDraggable(Z)V
    .locals 2
    .param p1, "draggable"    # Z

    .line 639
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mIsDraggable:Z

    if-eq v0, p1, :cond_0

    .line 640
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mIsDraggable:Z

    .line 641
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mIsDraggable:Z

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    .line 645
    :cond_0
    return-void
.end method

.method public setExecuteNavColorAnimAfterDismiss(Z)V
    .locals 1
    .param p1, "isExecuteNavColorAnimAfterDismiss"    # Z

    .line 669
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mIsExecuteNavColorAnimAfterDismiss:Z

    .line 670
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setExecuteNavColorAnimAfterDismiss(Z)V

    .line 673
    :cond_0
    return-void
.end method

.method public setFinalNavColorAfterDismiss(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 681
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFinalNavColorAfterDismiss:I

    .line 682
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setFinalNavColorAfterDismiss(I)V

    .line 685
    :cond_0
    return-void
.end method

.method public setFirstShowCollapsed(Z)V
    .locals 0
    .param p1, "firstShowCollapsed"    # Z

    .line 627
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstShowCollapsed:Z

    .line 628
    return-void
.end method

.method public setMainPanelFragment(Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;)V
    .locals 1
    .param p1, "firstPanelFragment"    # Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    .line 98
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    .line 99
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    .line 100
    return-void
.end method

.method setPanelFragment(Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "panelFragment"    # Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;
    .param p2, "isFirstPanel"    # Ljava/lang/Boolean;

    .line 496
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 497
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    .line 498
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mIsFirstPanelVisibility:Z

    if-eqz v0, :cond_1

    .line 499
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    .line 500
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    invoke-virtual {v2}, Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;->getDraggableLinearLayout()Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setDragableLinearLayout(Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;Z)V

    .line 501
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$8;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$8;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 509
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mSecondPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    .line 510
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mIsFirstPanelVisibility:Z

    if-nez v0, :cond_1

    .line 511
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    .line 512
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    invoke-virtual {v2}, Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;->getDraggableLinearLayout()Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setDragableLinearLayout(Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;Z)V

    .line 513
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$9;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$9;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 521
    :cond_1
    :goto_0
    return-void
.end method

.method public setPeekHeight(I)V
    .locals 0
    .param p1, "peekHeight"    # I

    .line 585
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mPeekHeight:I

    .line 586
    return-void
.end method

.method public setSkipCollapsed(Z)V
    .locals 0
    .param p1, "skipCollapsed"    # Z

    .line 601
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mSkipCollapsed:Z

    .line 602
    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "manager"    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "tag"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 104
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    invoke-direct {v0}, Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    .line 109
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mFirstPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    .line 111
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 112
    return-void
.end method
