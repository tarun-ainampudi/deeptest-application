.class public Lcom/coui/appcompat/widget/COUISnackBar;
.super Landroid/widget/RelativeLayout;
.source "COUISnackBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUISnackBar$OnStatusChangeListener;,
        Lcom/coui/appcompat/widget/COUISnackBar$AutoDismissRunnable;
    }
.end annotation


# static fields
.field private static final CONTENT_ACTION_NOT_SAME_LINE_MARGIN_NUMBER:I = 0x2

.field private static final CONTENT_ACTION_SAME_LINE_MARGIN_NUMBER:I = 0x3

.field private static final DEFAULT_ANIMATION_IN_DURATION:I = 0xdc

.field private static final DEFAULT_ANIMATION_OUT_DURATION:I = 0x78

.field private static final DEFAULT_ANIMATION_TYPE:Ljava/lang/String; = "translationY"

.field private static final DEFAULT_TRANSLATION_END:I = 0x0

.field private static final SINGLE_LINE_NUMBER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "COUISnackBar"

.field private static mCOUISnackBarBottomMargin:I

.field private static final mDefaultAnimationInInterpolator:Landroid/view/animation/PathInterpolator;

.field private static final mDefaultAnimationOutInterpolator:Landroid/view/animation/PathInterpolator;


# instance fields
.field private final DEFAULT_ACTION_MULTI_LINE_INTERVAL:I

.field private final DEFAULT_ACTION_TEXT_MAX_WIDTH:I

.field private final DEFAULT_CONTENT_ICON_HEIGHT:I

.field private final DEFAULT_CONTENT_ICON_WIDTH:I

.field private final DEFAULT_CONTENT_LONG_MARGIN_BOTTOM:I

.field private final DEFAULT_CONTENT_LONG_MARGIN_TOP:I

.field private final DEFAULT_CONTENT_MARIN_START:I

.field private final DEFAULT_CONTENT_NOT_LONG_MARGIN_BOTTOM:I

.field private final DEFAULT_CONTENT_NOT_LONG_MARGIN_TOP:I

.field private final DEFAULT_COUI_SNACK_BAR_WIDTH:I

.field private final DEFAULT_MIN_MARGIN_BETWEEN_CONTENT_ACTION:I

.field private mActionView:Landroid/widget/TextView;

.field private mAutoDismissRunnable:Ljava/lang/Runnable;

.field private mCOUISnackBarParent:Landroid/view/ViewGroup;

.field private mContentText:Ljava/lang/String;

.field private mContentTextMaxWidth:I

.field private mContentTextWidth:I

.field private mContentView:Landroid/widget/TextView;

.field private mDuration:I

.field private mIconDrawableView:Landroid/widget/ImageView;

.field private mOnStatusChangeListener:Lcom/coui/appcompat/widget/COUISnackBar$OnStatusChangeListener;

.field private mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v0, v3, v2, v1, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/widget/COUISnackBar;->mDefaultAnimationOutInterpolator:Landroid/view/animation/PathInterpolator;

    .line 41
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e19999a    # 0.15f

    invoke-direct {v0, v2, v2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/widget/COUISnackBar;->mDefaultAnimationInInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_COUI_SNACK_BAR_WIDTH:I

    .line 44
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_action_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_ACTION_TEXT_MAX_WIDTH:I

    .line 45
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_ICON_WIDTH:I

    .line 46
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_icon_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_ICON_HEIGHT:I

    .line 47
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_single_line_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_NOT_LONG_MARGIN_TOP:I

    .line 48
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_single_line_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_NOT_LONG_MARGIN_BOTTOM:I

    .line 49
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_multi_line_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_TOP:I

    .line 50
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_multi_line_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_BOTTOM:I

    .line 51
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_margin_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_MARIN_START:I

    .line 52
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_content_action_min_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_MIN_MARGIN_BETWEEN_CONTENT_ACTION:I

    .line 53
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_action_multi_line_interval:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_ACTION_MULTI_LINE_INTERVAL:I

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUISnackBar;->initCOUISnackBar(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_COUI_SNACK_BAR_WIDTH:I

    .line 44
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_action_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_ACTION_TEXT_MAX_WIDTH:I

    .line 45
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_ICON_WIDTH:I

    .line 46
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_icon_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_ICON_HEIGHT:I

    .line 47
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_single_line_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_NOT_LONG_MARGIN_TOP:I

    .line 48
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_single_line_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_NOT_LONG_MARGIN_BOTTOM:I

    .line 49
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_multi_line_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_TOP:I

    .line 50
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_multi_line_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_BOTTOM:I

    .line 51
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_margin_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_MARIN_START:I

    .line 52
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_content_action_min_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_MIN_MARGIN_BETWEEN_CONTENT_ACTION:I

    .line 53
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_action_multi_line_interval:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_ACTION_MULTI_LINE_INTERVAL:I

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/COUISnackBar;->initCOUISnackBar(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUISnackBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISnackBar;

    .line 31
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUISnackBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISnackBar;

    .line 31
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/COUISnackBar;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISnackBar;

    .line 31
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mCOUISnackBarParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/COUISnackBar;)Lcom/coui/appcompat/widget/COUISnackBar$OnStatusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISnackBar;

    .line 31
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mOnStatusChangeListener:Lcom/coui/appcompat/widget/COUISnackBar$OnStatusChangeListener;

    return-object v0
.end method

.method private animationTranslationIn()V
    .locals 5

    .line 400
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISnackBar;->setVisibility(I)V

    .line 401
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mRootView:Landroid/view/View;

    const-string v2, "translationY"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 402
    .local v0, "translationIn":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 403
    sget-object v1, Lcom/coui/appcompat/widget/COUISnackBar;->mDefaultAnimationInInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 404
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 405
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mOnStatusChangeListener:Lcom/coui/appcompat/widget/COUISnackBar$OnStatusChangeListener;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mOnStatusChangeListener:Lcom/coui/appcompat/widget/COUISnackBar$OnStatusChangeListener;

    invoke-interface {v1, p0}, Lcom/coui/appcompat/widget/COUISnackBar$OnStatusChangeListener;->onShown(Lcom/coui/appcompat/widget/COUISnackBar;)V

    .line 408
    :cond_0
    return-void
.end method

.method private animationTranslationOut()V
    .locals 5

    .line 372
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mRootView:Landroid/view/View;

    const-string v1, "translationY"

    const/4 v2, 0x1

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sget v4, Lcom/coui/appcompat/widget/COUISnackBar;->mCOUISnackBarBottomMargin:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 373
    .local v0, "translationOut":Landroid/animation/ObjectAnimator;
    sget-object v1, Lcom/coui/appcompat/widget/COUISnackBar;->mDefaultAnimationOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 374
    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 375
    new-instance v1, Lcom/coui/appcompat/widget/COUISnackBar$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUISnackBar$2;-><init>(Lcom/coui/appcompat/widget/COUISnackBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 396
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 397
    return-void
.end method

.method private static findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 281
    const/4 v0, 0x0

    move-object v1, p0

    move-object p0, v0

    .line 283
    .local v1, "view":Landroid/view/View;
    .local p0, "fallback":Landroid/view/ViewGroup;
    :cond_0
    instance-of v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v2, :cond_1

    .line 285
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 286
    :cond_1
    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    .line 287
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020002

    if-ne v2, v3, :cond_2

    .line 290
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 293
    :cond_2
    move-object p0, v1

    check-cast p0, Landroid/view/ViewGroup;

    .line 297
    :cond_3
    if-eqz v1, :cond_5

    .line 299
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 300
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_4

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    goto :goto_0

    :cond_4
    move-object v3, v0

    :goto_0
    move-object v1, v3

    .line 302
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_5
    if-nez v1, :cond_0

    .line 305
    return-object p0
.end method

.method private initCOUISnackBar(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .line 338
    sget v0, Lcoui/support/appcompat/R$layout;->coui_snack_bar_item:I

    invoke-static {p1, v0, p0}, Lcom/coui/appcompat/widget/COUISnackBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mRootView:Landroid/view/View;

    .line 339
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mRootView:Landroid/view/View;

    sget v1, Lcoui/support/appcompat/R$id;->tv_snack_bar_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    .line 340
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mRootView:Landroid/view/View;

    sget v1, Lcoui/support/appcompat/R$id;->tv_snack_bar_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    .line 341
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mRootView:Landroid/view/View;

    sget v1, Lcoui/support/appcompat/R$id;->iv_snack_bar_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mIconDrawableView:Landroid/widget/ImageView;

    .line 343
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 344
    .local v0, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sput v1, Lcom/coui/appcompat/widget/COUISnackBar;->mCOUISnackBarBottomMargin:I

    .line 346
    new-instance v1, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;

    invoke-direct {v1}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;-><init>()V

    .line 347
    .local v1, "rootBackground":Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_background_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->setRadius(F)V

    .line 348
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$color;->coui_snack_bar_background_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->setFillColor(I)V

    .line 349
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 351
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUISnackBar;->setVisibility(I)V

    .line 353
    new-instance v2, Lcom/coui/appcompat/widget/COUISnackBar$AutoDismissRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/coui/appcompat/widget/COUISnackBar$AutoDismissRunnable;-><init>(Lcom/coui/appcompat/widget/COUISnackBar;Lcom/coui/appcompat/widget/COUISnackBar$1;)V

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    .line 355
    sget-object v2, Lcoui/support/appcompat/R$styleable;->COUISnackBar:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 357
    .local v2, "styledAttrs":Landroid/content/res/TypedArray;
    :try_start_0
    sget v4, Lcoui/support/appcompat/R$styleable;->COUISnackBar_defaultSnackBarContentText:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, "contentText":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 359
    sget v5, Lcoui/support/appcompat/R$styleable;->COUISnackBar_defaultSnackBarContentText:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/coui/appcompat/widget/COUISnackBar;->setContentText(Ljava/lang/String;)V

    .line 360
    sget v5, Lcoui/support/appcompat/R$styleable;->COUISnackBar_snackBarDisappearTime:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUISnackBar;->setDuration(I)V

    .line 362
    :cond_0
    sget v3, Lcoui/support/appcompat/R$styleable;->COUISnackBar_couiSnackBarIcon:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 363
    .local v3, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUISnackBar;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    .end local v3    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "contentText":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 368
    goto :goto_1

    .line 367
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 364
    :catch_0
    move-exception v3

    .line 365
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "COUISnackBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure setting COUISnackBar "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 369
    :goto_1
    return-void

    .line 367
    :goto_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method private isCOUISnackBarHasIcon()Z
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mIconDrawableView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static make(Landroid/view/View;Ljava/lang/String;I)Lcom/coui/appcompat/widget/COUISnackBar;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "duration"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 232
    invoke-static {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 233
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {p0, p1, p2, v1}, Lcom/coui/appcompat/widget/COUISnackBar;->make(Landroid/view/View;Ljava/lang/String;II)Lcom/coui/appcompat/widget/COUISnackBar;

    move-result-object v1

    return-object v1

    .line 234
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static make(Landroid/view/View;Ljava/lang/String;II)Lcom/coui/appcompat/widget/COUISnackBar;
    .locals 9
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "duration"    # I
    .param p3, "marginBottom"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "isParentAlreadyHaveSnackBar":Z
    invoke-static {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 246
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_4

    .line 250
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 251
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcoui/support/appcompat/R$layout;->coui_snack_bar_show_layout:I

    .line 253
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/COUISnackBar;

    .line 258
    .local v3, "content":Lcom/coui/appcompat/widget/COUISnackBar;
    invoke-virtual {v3, p1}, Lcom/coui/appcompat/widget/COUISnackBar;->setContentText(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v3, p2}, Lcom/coui/appcompat/widget/COUISnackBar;->setDuration(I)V

    .line 260
    invoke-direct {v3, v1}, Lcom/coui/appcompat/widget/COUISnackBar;->setParent(Landroid/view/ViewGroup;)V

    .line 262
    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUISnackBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 263
    .local v5, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 264
    sput p3, Lcom/coui/appcompat/widget/COUISnackBar;->mCOUISnackBarBottomMargin:I

    .line 265
    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUISnackBar;->getHeight()I

    move-result v6

    add-int/2addr v6, p3

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Lcom/coui/appcompat/widget/COUISnackBar;->setTranslationY(F)V

    .line 267
    move v6, v0

    move v0, v4

    .local v0, "i":I
    .local v6, "isParentAlreadyHaveSnackBar":Z
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 268
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Lcom/coui/appcompat/widget/COUISnackBar;

    if-eqz v7, :cond_1

    .line 269
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    move v7, v4

    :goto_1
    move v6, v7

    .line 267
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    .end local v0    # "i":I
    :cond_2
    if-nez v6, :cond_3

    .line 274
    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    :cond_3
    return-object v3

    .line 247
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "content":Lcom/coui/appcompat/widget/COUISnackBar;
    .end local v5    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "isParentAlreadyHaveSnackBar":Z
    .local v0, "isParentAlreadyHaveSnackBar":Z
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setActionText(Ljava/lang/String;)V
    .locals 1
    .param p1, "contentText"    # Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method

.method private setParent(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 226
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mCOUISnackBarParent:Landroid/view/ViewGroup;

    .line 227
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISnackBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->animationTranslationOut()V

    .line 112
    return-void
.end method

.method public getActionText()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActionView()Landroid/widget/TextView;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getContentText()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentView()Landroid/widget/TextView;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mDuration:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 595
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 596
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISnackBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mCOUISnackBarParent:Landroid/view/ViewGroup;

    .line 598
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 420
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 421
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->isCOUISnackBarHasIcon()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 422
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_ACTION_TEXT_MAX_WIDTH:I

    if-lt v0, v3, :cond_1

    .line 423
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 425
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 426
    .local v0, "actionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_BOTTOM:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 427
    iget v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_TOP:I

    .line 428
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_action_multi_line_content_long_interval:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    .line 429
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 430
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mIconDrawableView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 433
    .local v1, "iconLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_TOP:I

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    .line 434
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_ICON_HEIGHT:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 436
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 437
    .local v3, "contentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_COUI_SNACK_BAR_WIDTH:I

    iget v5, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_MIN_MARGIN_BETWEEN_CONTENT_ACTION:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_MIN_MARGIN_BETWEEN_CONTENT_ACTION:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_ICON_WIDTH:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 440
    iget v4, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_TOP:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 441
    iget v4, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_MIN_MARGIN_BETWEEN_CONTENT_ACTION:I

    iget v5, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_MARIN_START:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_ICON_WIDTH:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 442
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 443
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    .end local v0    # "actionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "iconLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "contentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto/16 :goto_0

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 447
    .restart local v0    # "actionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_BOTTOM:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 448
    iget v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_TOP:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_ACTION_MULTI_LINE_INTERVAL:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_ICON_WIDTH:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 451
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mIconDrawableView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 454
    .restart local v1    # "iconLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_TOP:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 456
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 457
    .restart local v3    # "contentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_COUI_SNACK_BAR_WIDTH:I

    iget v5, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_MIN_MARGIN_BETWEEN_CONTENT_ACTION:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_MIN_MARGIN_BETWEEN_CONTENT_ACTION:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_ICON_WIDTH:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 460
    iget v4, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_NOT_LONG_MARGIN_TOP:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 461
    iget v4, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_MIN_MARGIN_BETWEEN_CONTENT_ACTION:I

    iget v5, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_MARIN_START:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_ICON_WIDTH:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 462
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 463
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    .end local v0    # "actionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "iconLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "contentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto/16 :goto_0

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    iget v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentTextMaxWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 467
    iget v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentTextWidth:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentTextMaxWidth:I

    if-le v0, v1, :cond_2

    .line 469
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 470
    .restart local v0    # "actionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_TOP:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_BOTTOM:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 471
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 472
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mIconDrawableView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 475
    .restart local v1    # "iconLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_ICON_WIDTH:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 477
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 478
    .local v2, "contentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_COUI_SNACK_BAR_WIDTH:I

    iget v4, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_MIN_MARGIN_BETWEEN_CONTENT_ACTION:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    .line 479
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_MIN_MARGIN_BETWEEN_CONTENT_ACTION:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_ICON_WIDTH:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 481
    iget v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_MIN_MARGIN_BETWEEN_CONTENT_ACTION:I

    iget v4, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_MARIN_START:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_ICON_WIDTH:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 482
    iget v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_TOP:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 483
    iget v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_BOTTOM:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 484
    iget v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_MIN_MARGIN_BETWEEN_CONTENT_ACTION:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 485
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    .end local v0    # "actionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "iconLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "contentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto/16 :goto_0

    .line 488
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 489
    .restart local v0    # "actionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_NOT_LONG_MARGIN_TOP:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 490
    iget v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_NOT_LONG_MARGIN_BOTTOM:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 491
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mIconDrawableView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 494
    .restart local v1    # "iconLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_TOP:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 496
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 497
    .restart local v2    # "contentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_COUI_SNACK_BAR_WIDTH:I

    iget v4, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_MIN_MARGIN_BETWEEN_CONTENT_ACTION:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    .line 498
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_MIN_MARGIN_BETWEEN_CONTENT_ACTION:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_ICON_WIDTH:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 500
    iget v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_MIN_MARGIN_BETWEEN_CONTENT_ACTION:I

    iget v4, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_MARIN_START:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_ICON_WIDTH:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 501
    iget v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_NOT_LONG_MARGIN_TOP:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 502
    iget v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_NOT_LONG_MARGIN_BOTTOM:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 503
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    .end local v0    # "actionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "iconLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "contentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto/16 :goto_0

    .line 507
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_ACTION_TEXT_MAX_WIDTH:I

    if-lt v0, v3, :cond_5

    .line 508
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 510
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 511
    .restart local v0    # "actionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_BOTTOM:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 512
    iget v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_TOP:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcoui/support/appcompat/R$dimen;->coui_snack_bar_action_multi_line_content_long_interval:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 513
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 516
    .local v1, "contentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_COUI_SNACK_BAR_WIDTH:I

    iget v4, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_MIN_MARGIN_BETWEEN_CONTENT_ACTION:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 517
    iget v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_TOP:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 518
    iget v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_MARIN_START:I

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 519
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 520
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    .end local v0    # "actionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "contentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto/16 :goto_0

    .line 523
    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 524
    .restart local v0    # "actionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_BOTTOM:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 525
    iget v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_TOP:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_ACTION_MULTI_LINE_INTERVAL:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    .line 527
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 528
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 531
    .restart local v1    # "contentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_COUI_SNACK_BAR_WIDTH:I

    iget v4, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_MIN_MARGIN_BETWEEN_CONTENT_ACTION:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 532
    iget v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_TOP:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 533
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 534
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    .end local v0    # "actionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "contentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto/16 :goto_0

    .line 537
    :cond_5
    iget v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentTextWidth:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentTextMaxWidth:I

    if-le v0, v1, :cond_6

    .line 539
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 540
    .restart local v0    # "actionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_TOP:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_BOTTOM:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 541
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 542
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 545
    .restart local v1    # "contentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_COUI_SNACK_BAR_WIDTH:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_MIN_MARGIN_BETWEEN_CONTENT_ACTION:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 546
    iget v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_TOP:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 547
    iget v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_LONG_MARGIN_BOTTOM:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 548
    iget v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_MIN_MARGIN_BETWEEN_CONTENT_ACTION:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 549
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    .end local v0    # "actionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "contentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_0

    .line 552
    :cond_6
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 553
    .restart local v0    # "actionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_NOT_LONG_MARGIN_TOP:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 554
    iget v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_NOT_LONG_MARGIN_BOTTOM:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 555
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 558
    .restart local v1    # "contentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_NOT_LONG_MARGIN_TOP:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 559
    iget v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_CONTENT_NOT_LONG_MARGIN_BOTTOM:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 560
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    .end local v0    # "actionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "contentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 412
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 414
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentTextWidth:I

    .line 415
    iget v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_COUI_SNACK_BAR_WIDTH:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->DEFAULT_MIN_MARGIN_BETWEEN_CONTENT_ACTION:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentTextMaxWidth:I

    .line 416
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 577
    :pswitch_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getDuration()I

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISnackBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 579
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/coui/appcompat/widget/COUISnackBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 571
    :pswitch_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISnackBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 583
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setContentText(I)V
    .locals 1
    .param p1, "stringRes"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 119
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISnackBar;->setContentText(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentText"    # Ljava/lang/String;

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISnackBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentText:Ljava/lang/String;

    .line 136
    :cond_1
    :goto_0
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 184
    iput p1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mDuration:I

    .line 185
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 83
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mIconDrawableView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getDuration()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISnackBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 89
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/coui/appcompat/widget/COUISnackBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    :cond_0
    return-void
.end method

.method public setIconDrawable(I)V
    .locals 2
    .param p1, "drawableRes"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 313
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISnackBar;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "iconDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 321
    if-nez p1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mIconDrawableView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mIconDrawableView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mIconDrawableView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    :goto_0
    return-void
.end method

.method public setOnAction(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "actionTextRes"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 193
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/coui/appcompat/widget/COUISnackBar;->setOnAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 194
    return-void
.end method

.method public setOnAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "actionText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISnackBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISnackBar;->setActionText(Ljava/lang/String;)V

    .line 211
    if-eqz p2, :cond_1

    .line 212
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mActionView:Landroid/widget/TextView;

    new-instance v1, Lcom/coui/appcompat/widget/COUISnackBar$1;

    invoke-direct {v1, p0, p2}, Lcom/coui/appcompat/widget/COUISnackBar$1;-><init>(Lcom/coui/appcompat/widget/COUISnackBar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    :cond_1
    :goto_0
    return-void
.end method

.method public setOnStatusChangeListener(Lcom/coui/appcompat/widget/COUISnackBar$OnStatusChangeListener;)V
    .locals 0
    .param p1, "onStatusChangeListener"    # Lcom/coui/appcompat/widget/COUISnackBar$OnStatusChangeListener;

    .line 144
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mOnStatusChangeListener:Lcom/coui/appcompat/widget/COUISnackBar$OnStatusChangeListener;

    .line 145
    return-void
.end method

.method public show()V
    .locals 3

    .line 97
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getDuration()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISnackBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 99
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/coui/appcompat/widget/COUISnackBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISnackBar;->animationTranslationIn()V

    .line 102
    return-void
.end method
