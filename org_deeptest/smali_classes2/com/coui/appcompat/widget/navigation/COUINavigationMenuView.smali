.class public Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;
.super Landroid/view/ViewGroup;
.source "COUINavigationMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$ItemTipBean;
    }
.end annotation


# static fields
.field protected static final ACTIVE_ANIMATION_DURATION_MS:J = 0x64L


# instance fields
.field private final END_ALPHA:F

.field private final START_ALPHA:F

.field private mButtons:[Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

.field private mDefaultPadding:I

.field private mEnterAnim:Landroid/animation/Animator;

.field private mItemBackgroundRes:I

.field private mItemHeight:I

.field private mItemIconTint:Landroid/content/res/ColorStateList;

.field private mItemTextColor:Landroid/content/res/ColorStateList;

.field private mItemTextSize:I

.field private mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mNeedTextAnim:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPreOrientation:I

.field private mPresenter:Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

.field private mPreviousSelectedPostion:I

.field private mSelectedItemId:I

.field private mSelectedItemPosition:I

.field private mSet:Landroid/transition/TransitionSet;

.field private mTempChildWidths:[I

.field private mTipList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$ItemTipBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->START_ALPHA:F

    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->END_ALPHA:F

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSelectedItemId:I

    .line 61
    iput v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSelectedItemPosition:I

    .line 62
    iput v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mPreviousSelectedPostion:I

    .line 67
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mNeedTextAnim:Z

    .line 70
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mTipList:Landroid/util/SparseArray;

    .line 81
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 82
    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Lcoui/support/appcompat/R$dimen;->coui_navigation_item_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mDefaultPadding:I

    .line 84
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 85
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSet:Landroid/transition/TransitionSet;

    .line 86
    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSet:Landroid/transition/TransitionSet;

    new-instance v3, Landroid/transition/Fade;

    invoke-direct {v3}, Landroid/transition/Fade;-><init>()V

    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 87
    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSet:Landroid/transition/TransitionSet;

    invoke-virtual {v2, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 88
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSet:Landroid/transition/TransitionSet;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 89
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSet:Landroid/transition/TransitionSet;

    new-instance v2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    .line 90
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSet:Landroid/transition/TransitionSet;

    new-instance v2, Lcom/coui/appcompat/widget/navigation/COUITextScale;

    invoke-direct {v2}, Lcom/coui/appcompat/widget/navigation/COUITextScale;-><init>()V

    invoke-virtual {v0, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 93
    :cond_0
    new-instance v0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$1;-><init>(Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 106
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mTempChildWidths:[I

    .line 107
    invoke-static {p1}, Lcom/coui/appcompat/util/COUIOrientationUtil;->getRealOrientation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mPreOrientation:I

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 111
    sget v0, Lcoui/support/appcompat/R$attr;->COUINavigationViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->START_ALPHA:F

    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->END_ALPHA:F

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSelectedItemId:I

    .line 61
    iput v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSelectedItemPosition:I

    .line 62
    iput v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mPreviousSelectedPostion:I

    .line 67
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mNeedTextAnim:Z

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mTipList:Landroid/util/SparseArray;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;)Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    .line 48
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mPresenter:Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    .line 48
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    .line 48
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mNeedTextAnim:Z

    return v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    .line 48
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->startTextAnimation()V

    return-void
.end method

.method private addTipBean(Landroid/view/MenuItem;II)V
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "tip"    # I
    .param p3, "tipType"    # I

    .line 498
    if-nez p1, :cond_0

    .line 499
    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mTipList:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$ItemTipBean;

    .line 502
    .local v0, "bean":Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$ItemTipBean;
    if-nez v0, :cond_1

    .line 503
    new-instance v1, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$ItemTipBean;

    invoke-direct {v1, p2, p3}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$ItemTipBean;-><init>(II)V

    move-object v0, v1

    goto :goto_0

    .line 505
    :cond_1
    invoke-virtual {v0, p2}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$ItemTipBean;->setTip(I)V

    .line 506
    invoke-virtual {v0, p3}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$ItemTipBean;->setTipType(I)V

    .line 508
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mTipList:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 509
    return-void
.end method

.method private getNewItem()Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;
    .locals 2

    .line 477
    new-instance v0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private isRtlMode()Z
    .locals 3

    .line 481
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 482
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 484
    :cond_1
    return v1
.end method

.method private startTextAnimation()V
    .locals 2

    .line 488
    iget v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSelectedItemPosition:I

    iget v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mPreviousSelectedPostion:I

    if-ne v0, v1, :cond_0

    .line 489
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mButtons:[Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    iget v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSelectedItemPosition:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->startTextEnterAnimation()V

    .line 492
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mButtons:[Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    iget v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mPreviousSelectedPostion:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->startTextExitAnimation()V

    .line 493
    return-void
.end method


# virtual methods
.method public buildMenuView()V
    .locals 8

    .line 287
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 288
    .local v0, "menuSize":I
    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->removeAllViews()V

    .line 303
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 304
    iput v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSelectedItemId:I

    .line 305
    iput v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSelectedItemPosition:I

    .line 306
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mButtons:[Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    .line 307
    return-void

    .line 309
    :cond_1
    new-array v2, v0, [Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    iput-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mButtons:[Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    .line 310
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 311
    iget-object v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 312
    .local v3, "menuItem":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-nez v4, :cond_2

    .line 313
    goto :goto_1

    .line 315
    :cond_2
    const/4 v4, 0x5

    if-lt v2, v4, :cond_3

    .line 316
    goto :goto_2

    .line 318
    :cond_3
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->getNewItem()Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    move-result-object v4

    .line 319
    .local v4, "child":Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;
    iget-object v5, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mButtons:[Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    aput-object v4, v5, v2

    .line 320
    iget-object v5, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mItemIconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 321
    iget-object v5, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 322
    iget v5, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mItemTextSize:I

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->setTextSize(I)V

    .line 323
    iget v5, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mItemBackgroundRes:I

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->setItemBackground(I)V

    .line 324
    invoke-virtual {v4, v3, v1}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    .line 325
    invoke-virtual {v4, v2}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->setItemPosition(I)V

    .line 326
    iget-object v5, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v5, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mTipList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$ItemTipBean;

    .line 330
    .local v5, "bean":Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$ItemTipBean;
    if-eqz v5, :cond_4

    .line 331
    invoke-virtual {v5}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$ItemTipBean;->getTip()I

    move-result v6

    invoke-virtual {v5}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$ItemTipBean;->getTipType()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->setTipsView(II)V

    .line 335
    :cond_4
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->addView(Landroid/view/View;)V

    .line 310
    .end local v3    # "menuItem":Landroidx/appcompat/view/menu/MenuItemImpl;
    .end local v4    # "child":Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;
    .end local v5    # "bean":Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$ItemTipBean;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    .end local v2    # "i":I
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSelectedItemPosition:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSelectedItemPosition:I

    .line 338
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSelectedItemPosition:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 339
    return-void
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mItemIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemBackgroundRes()I
    .locals 1

    .line 279
    iget v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mItemBackgroundRes:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mItemTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1

    .line 375
    iget v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSelectedItemId:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;

    .line 116
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 117
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 545
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 546
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/util/COUIOrientationUtil;->getRealOrientation(Landroid/content/Context;)I

    move-result v0

    .line 547
    .local v0, "curOrientation":I
    iget v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mPreOrientation:I

    if-eq v0, v1, :cond_0

    .line 548
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->buildMenuView()V

    .line 549
    iput v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mPreOrientation:I

    .line 551
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 167
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->getChildCount()I

    move-result v0

    .line 168
    .local v0, "count":I
    sub-int v1, p4, p2

    .line 169
    .local v1, "width":I
    sub-int v2, p5, p3

    .line 170
    .local v2, "height":I
    const/4 v3, 0x0

    .line 171
    .local v3, "used":I
    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    .local v3, "i":I
    .local v5, "used":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 172
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 173
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 174
    goto :goto_2

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->isRtlMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 177
    sub-int v7, v1, v5

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v8, v1, v5

    invoke-virtual {v6, v7, v4, v8, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 179
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v6, v5, v4, v7, v2}, Landroid/view/View;->layout(IIII)V

    .line 181
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    .line 171
    .end local v6    # "child":Landroid/view/View;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 121
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mDefaultPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 122
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->getChildCount()I

    move-result v1

    .line 124
    .local v1, "count":I
    iget v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mItemHeight:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 125
    .local v2, "heightSpec":I
    const/4 v4, 0x1

    if-nez v1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    div-int v5, v0, v5

    .line 126
    .local v5, "childWidth":I
    mul-int v6, v5, v1

    sub-int v6, v0, v6

    .line 127
    .local v6, "extra":I
    const/4 v7, 0x0

    move v8, v6

    move v6, v7

    .local v6, "i":I
    .local v8, "extra":I
    :goto_1
    if-ge v6, v1, :cond_2

    .line 128
    iget-object v9, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mTempChildWidths:[I

    aput v5, v9, v6

    .line 129
    if-lez v8, :cond_1

    .line 130
    iget-object v9, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mTempChildWidths:[I

    aget v10, v9, v6

    add-int/2addr v10, v4

    aput v10, v9, v6

    .line 131
    add-int/lit8 v8, v8, -0x1

    .line 127
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 134
    .end local v6    # "i":I
    :cond_2
    const/4 v6, 0x0

    .line 135
    .local v6, "totalWidth":I
    move v9, v6

    move v6, v7

    .local v6, "i":I
    .local v9, "totalWidth":I
    :goto_2
    if-ge v6, v1, :cond_b

    .line 136
    invoke-virtual {p0, v6}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 137
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_3

    .line 138
    goto/16 :goto_8

    .line 140
    :cond_3
    if-ne v1, v4, :cond_4

    .line 141
    iget v11, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mDefaultPadding:I

    iget v12, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mDefaultPadding:I

    invoke-virtual {v10, v11, v7, v12, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 142
    iget-object v11, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mTempChildWidths:[I

    aget v11, v11, v6

    iget v12, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mDefaultPadding:I

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    invoke-static {v11, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v10, v11, v2}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 144
    :cond_4
    if-nez v6, :cond_7

    .line 145
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->isRtlMode()Z

    move-result v11

    if-eqz v11, :cond_5

    move v11, v7

    goto :goto_3

    :cond_5
    iget v11, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mDefaultPadding:I

    :goto_3
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->isRtlMode()Z

    move-result v12

    if-eqz v12, :cond_6

    iget v12, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mDefaultPadding:I

    goto :goto_4

    :cond_6
    move v12, v7

    :goto_4
    invoke-virtual {v10, v11, v7, v12, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 146
    iget-object v11, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mTempChildWidths:[I

    aget v11, v11, v6

    iget v12, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mDefaultPadding:I

    add-int/2addr v11, v12

    invoke-static {v11, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v10, v11, v2}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 147
    :cond_7
    add-int/lit8 v11, v1, -0x1

    if-ne v6, v11, :cond_a

    .line 148
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->isRtlMode()Z

    move-result v11

    if-eqz v11, :cond_8

    iget v11, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mDefaultPadding:I

    goto :goto_5

    :cond_8
    move v11, v7

    :goto_5
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->isRtlMode()Z

    move-result v12

    if-eqz v12, :cond_9

    move v12, v7

    goto :goto_6

    :cond_9
    iget v12, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mDefaultPadding:I

    :goto_6
    invoke-virtual {v10, v11, v7, v12, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 149
    iget-object v11, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mTempChildWidths:[I

    aget v11, v11, v6

    iget v12, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mDefaultPadding:I

    add-int/2addr v11, v12

    invoke-static {v11, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v10, v11, v2}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 151
    :cond_a
    invoke-virtual {v10, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 152
    iget-object v11, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mTempChildWidths:[I

    aget v11, v11, v6

    invoke-static {v11, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v10, v11, v2}, Landroid/view/View;->measure(II)V

    .line 155
    :goto_7
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 156
    .local v11, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 157
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v9, v12

    .line 135
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 159
    .end local v6    # "i":I
    :cond_b
    nop

    .line 161
    invoke-static {v9, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 160
    invoke-static {v9, v3, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mItemHeight:I

    .line 162
    invoke-static {v4, v2, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    .line 159
    invoke-virtual {p0, v3, v4}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->setMeasuredDimension(II)V

    .line 163
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mItemIconTint:Landroid/content/res/ColorStateList;

    .line 198
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mButtons:[Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    if-nez v0, :cond_0

    .line 199
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mButtons:[Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 202
    .local v3, "item":Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;
    invoke-virtual {v3, p1}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 201
    .end local v3    # "item":Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    :cond_1
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 4
    .param p1, "background"    # I

    .line 260
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mItemBackgroundRes:I

    .line 261
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mButtons:[Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    if-nez v0, :cond_0

    .line 262
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mButtons:[Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 265
    .local v3, "item":Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;
    invoke-virtual {v3, p1}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->setItemBackground(I)V

    .line 264
    .end local v3    # "item":Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    :cond_1
    return-void
.end method

.method public setItemBackgroundRes(II)V
    .locals 1
    .param p1, "background"    # I
    .param p2, "position"    # I

    .line 270
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mButtons:[Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->setItemBackground(I)V

    .line 271
    return-void
.end method

.method public setItemHeight(I)V
    .locals 0
    .param p1, "defaultHeight"    # I

    .line 392
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mItemHeight:I

    .line 393
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 221
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mItemTextColor:Landroid/content/res/ColorStateList;

    .line 222
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mButtons:[Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    if-nez v0, :cond_0

    .line 223
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mButtons:[Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 226
    .local v3, "item":Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;
    invoke-virtual {v3, p1}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 225
    .end local v3    # "item":Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    :cond_1
    return-void
.end method

.method public setItemTextSize(I)V
    .locals 4
    .param p1, "size"    # I

    .line 236
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mItemTextSize:I

    .line 237
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mButtons:[Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    if-nez v0, :cond_0

    .line 238
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mButtons:[Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 241
    .local v3, "item":Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;
    invoke-virtual {v3, p1}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->setTextSize(I)V

    .line 240
    .end local v3    # "item":Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    :cond_1
    return-void
.end method

.method protected setNeedTextAnim(Z)V
    .locals 0
    .param p1, "needTextAnim"    # Z

    .line 410
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mNeedTextAnim:Z

    .line 411
    return-void
.end method

.method public setPresenter(Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

    .line 283
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mPresenter:Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

    .line 284
    return-void
.end method

.method protected setTipsView(II)V
    .locals 4
    .param p1, "tips"    # I
    .param p2, "tipsType"    # I

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 418
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 419
    iget v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSelectedItemPosition:I

    if-ne v1, v2, :cond_0

    .line 420
    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 421
    .local v2, "item":Landroid/view/MenuItem;
    if-eqz v2, :cond_0

    .line 422
    invoke-direct {p0, v2, p1, p2}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->addTipBean(Landroid/view/MenuItem;II)V

    .line 423
    iget-object v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mButtons:[Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->setTipsView(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    goto :goto_1

    .line 418
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 430
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_1
    :goto_1
    goto :goto_2

    .line 428
    :catch_0
    move-exception v0

    .line 432
    :goto_2
    return-void
.end method

.method protected setTipsView(III)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "tips"    # I
    .param p3, "tipsType"    # I

    .line 438
    if-ltz p1, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mButtons:[Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    array-length v0, v0

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mButtons:[Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_3

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mButtons:[Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    .line 442
    .local v0, "menuItem":Landroidx/appcompat/view/menu/MenuItemImpl;
    if-nez v0, :cond_1

    .line 443
    return-void

    .line 445
    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v1

    .line 446
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 447
    iget-object v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 448
    .local v3, "item":Landroid/view/MenuItem;
    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 449
    invoke-direct {p0, v3, p2, p3}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->addTipBean(Landroid/view/MenuItem;II)V

    .line 450
    iget-object v4, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mButtons:[Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    aget-object v4, v4, v2

    invoke-virtual {v4, p2, p3}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->setTipsView(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    goto :goto_1

    .line 446
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 456
    .end local v0    # "menuItem":Landroidx/appcompat/view/menu/MenuItemImpl;
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_3
    :goto_1
    goto :goto_2

    .line 454
    :catch_0
    move-exception v0

    .line 458
    :goto_2
    return-void

    .line 439
    :cond_4
    :goto_3
    return-void
.end method

.method protected startEnterAnimation()V
    .locals 3

    .line 461
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mEnterAnim:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 462
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mEnterAnim:Landroid/animation/Animator;

    .line 463
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mEnterAnim:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 464
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mEnterAnim:Landroid/animation/Animator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mEnterAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 467
    return-void

    nop

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method tryRestoreSelectedItemId(I)V
    .locals 4
    .param p1, "itemId"    # I

    .line 379
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 380
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 381
    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 382
    .local v2, "item":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 383
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSelectedItemId:I

    .line 384
    iput v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSelectedItemPosition:I

    .line 385
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 386
    goto :goto_1

    .line 380
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public updateMenuView()V
    .locals 6

    .line 342
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 343
    .local v0, "menuSize":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mButtons:[Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->buildMenuView()V

    .line 346
    return-void

    .line 348
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSelectedItemId:I

    .line 350
    .local v1, "previousSelectedId":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 351
    iget-object v4, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 352
    .local v4, "item":Landroid/view/MenuItem;
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 353
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSelectedItemId:I

    .line 354
    iput v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSelectedItemPosition:I

    .line 350
    .end local v4    # "item":Landroid/view/MenuItem;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 357
    .end local v3    # "i":I
    :cond_2
    iget v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSelectedItemId:I

    if-eq v1, v3, :cond_3

    .line 359
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 364
    :cond_3
    move v3, v2

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v0, :cond_5

    .line 365
    iget-object v4, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mButtons:[Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    aget-object v4, v4, v3

    if-nez v4, :cond_4

    .line 366
    goto :goto_2

    .line 368
    :cond_4
    iget-object v4, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mPresenter:Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;->setUpdateSuspended(Z)V

    .line 369
    iget-object v4, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mButtons:[Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v5, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v4, v5, v2}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    .line 370
    iget-object v4, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mPresenter:Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

    invoke-virtual {v4, v2}, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;->setUpdateSuspended(Z)V

    .line 364
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 372
    .end local v3    # "i":I
    :cond_5
    return-void
.end method

.method public updateSelectPosition(Landroid/view/MenuItem;)V
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 396
    if-nez p1, :cond_0

    .line 397
    return-void

    .line 399
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSelectedItemPosition:I

    iput v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mPreviousSelectedPostion:I

    .line 400
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 401
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 402
    .local v1, "select":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 403
    iput v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->mSelectedItemPosition:I

    .line 404
    goto :goto_1

    .line 400
    .end local v1    # "select":Landroid/view/MenuItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method
