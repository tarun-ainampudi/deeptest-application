.class public Lcom/coui/appcompat/widget/navigation/COUINavigationView;
.super Landroid/widget/FrameLayout;
.source "COUINavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/navigation/COUINavigationView$SavedState;,
        Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationEnterHideListener;,
        Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationItemReselectedListener;,
        Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I

.field public static final ENTER_ANIMATION_TYPE:I = 0x1

.field public static final EXIT_ANIMATION_TYPE:I = 0x2

.field private static final MENU_PRESENTER_ID:I = 0x3


# instance fields
.field private final END_ALPHA:F

.field private final START_ALPHA:F

.field private mEndListener:Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationEnterHideListener;

.field private mEnterAnimation:Landroid/animation/Animator;

.field private mExitAnimation:Landroid/animation/Animator;

.field private final mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mMenuInflater:Landroid/view/MenuInflater;

.field private final mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

.field private mNavigationType:I

.field private mPreOrientation:I

.field private final mPresenter:Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

.field private mReselectedListener:Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationItemReselectedListener;

.field private mSelectedListener:Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationItemSelectedListener;

.field private mStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 77
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->CHECKED_STATE_SET:[I

    .line 78
    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 106
    sget v0, Lcoui/support/appcompat/R$attr;->couiNavigationViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->START_ALPHA:F

    .line 81
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->END_ALPHA:F

    .line 84
    new-instance v0, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mPresenter:Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->setWillNotDraw(Z)V

    .line 125
    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUINavigationMenuView:[I

    invoke-static {p1, p2, v1, p3, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v1

    .line 127
    .local v1, "array":Landroidx/appcompat/widget/TintTypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUINavigationMenuView_navigationType:I

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mNavigationType:I

    .line 130
    new-instance v2, Lcom/coui/appcompat/widget/navigation/COUINavigationMenu;

    invoke-direct {v2, p1}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenu;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 131
    iget v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mNavigationType:I

    if-nez v2, :cond_0

    new-instance v2, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;

    invoke-direct {v2, p1}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/coui/appcompat/widget/navigation/COUITabNavigationMenuView;

    invoke-direct {v2, p1}, Lcom/coui/appcompat/widget/navigation/COUITabNavigationMenuView;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    .line 132
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 133
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 134
    iget-object v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v3, v2}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mPresenter:Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

    iget-object v4, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;->setBottomNavigationMenuView(Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;)V

    .line 137
    iget-object v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mPresenter:Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;->setId(I)V

    .line 138
    iget-object v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    iget-object v4, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mPresenter:Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->setPresenter(Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;)V

    .line 139
    iget-object v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v4, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mPresenter:Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 140
    iget-object v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mPresenter:Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3, v4, v5}, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 142
    iget-object v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    sget v4, Lcoui/support/appcompat/R$styleable;->COUINavigationMenuView_couiNaviIconTint:I

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 143
    iget-object v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    sget v4, Lcoui/support/appcompat/R$styleable;->COUINavigationMenuView_couiNaviTextColor:I

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 145
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcoui/support/appcompat/R$dimen;->coui_navigation_item_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 146
    .local v3, "mDefaultTextSize":I
    sget v4, Lcoui/support/appcompat/R$styleable;->COUINavigationMenuView_couiNaviTextSize:I

    invoke-virtual {v1, v4, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 147
    .local v4, "textSize":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    .line 148
    .local v5, "currentScale":F
    int-to-float v6, v4

    const/4 v7, 0x2

    invoke-static {v6, v5, v7}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v6

    float-to-int v4, v6

    .line 149
    sget v6, Lcoui/support/appcompat/R$styleable;->COUINavigationMenuView_couiNaviBackground:I

    iget v7, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mNavigationType:I

    if-nez v7, :cond_1

    sget v7, Lcoui/support/appcompat/R$drawable;->coui_bottom_tool_navigation_item_bg:I

    goto :goto_1

    :cond_1
    move v7, v0

    :goto_1
    invoke-virtual {v1, v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v6

    .line 151
    .local v6, "itemBackground":I
    sget v7, Lcoui/support/appcompat/R$styleable;->COUINavigationMenuView_couiNaviTipsType:I

    const/4 v8, -0x1

    invoke-virtual {v1, v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result v7

    .line 152
    .local v7, "tipsType":I
    sget v8, Lcoui/support/appcompat/R$styleable;->COUINavigationMenuView_couiNaviTipsNumber:I

    invoke-virtual {v1, v8, v0}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result v8

    .line 153
    .local v8, "tipsNumber":I
    iget-object v9, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v9, v4}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->setItemTextSize(I)V

    .line 154
    invoke-static {p1}, Lcom/coui/appcompat/util/COUIOrientationUtil;->getRealOrientation(Landroid/content/Context;)I

    move-result v9

    iput v9, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mPreOrientation:I

    .line 155
    iget v9, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mPreOrientation:I

    invoke-static {v9}, Lcom/coui/appcompat/util/COUIOrientationUtil;->isPortrait(I)Z

    move-result v9

    invoke-direct {p0, v9}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->initItemHeight(Z)V

    .line 156
    iget-object v9, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v9, v6}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->setItemBackgroundRes(I)V

    .line 158
    sget v9, Lcoui/support/appcompat/R$styleable;->COUINavigationMenuView_couiNaviMenu:I

    invoke-virtual {v1, v9}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 159
    sget v9, Lcoui/support/appcompat/R$styleable;->COUINavigationMenuView_couiNaviMenu:I

    invoke-virtual {v1, v9, v0}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->inflateMenu(I)V

    .line 160
    iget-object v9, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v9, v8, v7}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->setTipsView(II)V

    .line 162
    :cond_2
    iget-object v9, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {p0, v9, v2}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    sget v9, Lcoui/support/appcompat/R$styleable;->COUINavigationMenuView_couiToolNavigationViewBg:I

    invoke-virtual {v1, v9, v0}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    .line 164
    .local v9, "toolNavigationViewBgId":I
    sget v10, Lcoui/support/appcompat/R$styleable;->COUINavigationMenuView_couiTabNavigationViewBg:I

    invoke-virtual {v1, v10, v0}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 165
    .local v0, "tabNavigationViewBgId":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-nez v10, :cond_4

    .line 166
    iget v10, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mNavigationType:I

    if-nez v10, :cond_3

    .line 167
    invoke-virtual {p0, v9}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->setBackgroundResource(I)V

    goto :goto_2

    .line 169
    :cond_3
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->setBackgroundResource(I)V

    .line 170
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->addCompatibilityTopDivider(Landroid/content/Context;)V

    .line 173
    :cond_4
    :goto_2
    iget-object v10, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    new-instance v11, Lcom/coui/appcompat/widget/navigation/COUINavigationView$1;

    invoke-direct {v11, p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView$1;-><init>(Lcom/coui/appcompat/widget/navigation/COUINavigationView;)V

    invoke-virtual {v10, v11}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 189
    invoke-virtual {v1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 190
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->initAnimation()V

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/navigation/COUINavigationView;)Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationItemReselectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/navigation/COUINavigationView;

    .line 66
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mReselectedListener:Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationItemReselectedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/navigation/COUINavigationView;)Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/navigation/COUINavigationView;

    .line 66
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/navigation/COUINavigationView;)Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/navigation/COUINavigationView;

    .line 66
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mSelectedListener:Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/navigation/COUINavigationView;)Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationEnterHideListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/navigation/COUINavigationView;

    .line 66
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mEndListener:Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationEnterHideListener;

    return-object v0
.end method

.method private addCompatibilityTopDivider(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 458
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 459
    .local v0, "divider":Landroid/view/View;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 460
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$color;->coui_navigation_divider_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 461
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 463
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$dimen;->coui_navigation_shadow_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 464
    .local v1, "dividerParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->addView(Landroid/view/View;)V

    .line 466
    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 526
    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuInflater:Landroid/view/MenuInflater;

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method

.method private initAnimation()V
    .locals 5

    .line 469
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mEnterAnimation:Landroid/animation/Animator;

    .line 470
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mEnterAnimation:Landroid/animation/Animator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 471
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mEnterAnimation:Landroid/animation/Animator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 472
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mEnterAnimation:Landroid/animation/Animator;

    new-instance v4, Lcom/coui/appcompat/widget/navigation/COUINavigationView$2;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView$2;-><init>(Lcom/coui/appcompat/widget/navigation/COUINavigationView;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 496
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mExitAnimation:Landroid/animation/Animator;

    .line 497
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mExitAnimation:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 498
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mExitAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 499
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mExitAnimation:Landroid/animation/Animator;

    new-instance v1, Lcom/coui/appcompat/widget/navigation/COUINavigationView$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView$3;-><init>(Lcom/coui/appcompat/widget/navigation/COUINavigationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 522
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initItemHeight(Z)V
    .locals 2
    .param p1, "isPortrait"    # Z

    .line 194
    iget v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mNavigationType:I

    if-nez v0, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_tool_navigation_item_height:I

    goto :goto_0

    :cond_0
    sget v1, Lcoui/support/appcompat/R$dimen;->coui_tool_navigation_item_height_land:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_2

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_2

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_navigation_item_height:I

    goto :goto_1

    :cond_2
    sget v1, Lcoui/support/appcompat/R$dimen;->coui_navigation_item_height_land:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 197
    .local v0, "defaultHeight":I
    :goto_2
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->setItemHeight(I)V

    .line 198
    return-void
.end method


# virtual methods
.method public getItemBackgroundResource()I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->getItemBackgroundRes()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getMaxItemCount()I
    .locals 1

    .line 258
    const/4 v0, 0x5

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->getSelectedItemId()I

    move-result v0

    return v0
.end method

.method public inflateMenu(I)V
    .locals 3
    .param p1, "resId"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mPresenter:Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;->setUpdateSuspended(Z)V

    .line 245
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->clear()V

    .line 247
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->startEnterAnimation()V

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 250
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mPresenter:Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;->setUpdateSuspended(Z)V

    .line 251
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mPresenter:Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;->updateMenuView(Z)V

    .line 252
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 593
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 594
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/util/COUIOrientationUtil;->getRealOrientation(Landroid/content/Context;)I

    move-result v0

    .line 595
    .local v0, "curOrientation":I
    iget v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mPreOrientation:I

    if-eq v1, v0, :cond_0

    .line 596
    invoke-static {v0}, Lcom/coui/appcompat/util/COUIOrientationUtil;->isPortrait(I)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->initItemHeight(Z)V

    .line 597
    iput v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mPreOrientation:I

    .line 599
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 542
    instance-of v0, p1, Lcom/coui/appcompat/widget/navigation/COUINavigationView$SavedState;

    if-nez v0, :cond_0

    .line 543
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 544
    return-void

    .line 546
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/widget/navigation/COUINavigationView$SavedState;

    .line 547
    .local v0, "savedState":Lcom/coui/appcompat/widget/navigation/COUINavigationView$SavedState;
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 548
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v2, v0, Lcom/coui/appcompat/widget/navigation/COUINavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 549
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 533
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 534
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/coui/appcompat/widget/navigation/COUINavigationView$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 535
    .local v1, "savedState":Lcom/coui/appcompat/widget/navigation/COUINavigationView$SavedState;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Lcom/coui/appcompat/widget/navigation/COUINavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    .line 536
    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v3, v1, Lcom/coui/appcompat/widget/navigation/COUINavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    .line 537
    return-object v1
.end method

.method public refresh()V
    .locals 6

    .line 602
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUINavigationMenuView:[I

    sget v2, Lcoui/support/appcompat/R$attr;->couiNavigationViewStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 605
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    sget v2, Lcoui/support/appcompat/R$styleable;->COUINavigationMenuView_couiNaviIconTint:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 606
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    sget v2, Lcoui/support/appcompat/R$styleable;->COUINavigationMenuView_couiNaviTextColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 608
    sget v1, Lcoui/support/appcompat/R$styleable;->COUINavigationMenuView_couiNaviBackground:I

    iget v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mNavigationType:I

    if-nez v2, :cond_0

    sget v2, Lcoui/support/appcompat/R$drawable;->coui_bottom_tool_navigation_item_bg:I

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 610
    .local v1, "itemBackground":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->setItemBackgroundRes(I)V

    .line 612
    sget v2, Lcoui/support/appcompat/R$styleable;->COUINavigationMenuView_couiToolNavigationViewBg:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 613
    .local v2, "toolNavigationViewBgId":I
    sget v4, Lcoui/support/appcompat/R$styleable;->COUINavigationMenuView_couiTabNavigationViewBg:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 614
    .local v3, "tabNavigationViewBgId":I
    iget v4, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mNavigationType:I

    if-nez v4, :cond_1

    .line 615
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 617
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 620
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 621
    return-void
.end method

.method public setAnimationType(I)V
    .locals 1
    .param p1, "type"    # I

    .line 376
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mEnterAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 378
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mExitAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 381
    :cond_1
    :goto_0
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 331
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->setItemBackgroundRes(I)V

    .line 332
    return-void
.end method

.method public setItemBackgroundResource(II)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "position"    # I

    .line 341
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->setItemBackgroundRes(II)V

    .line 342
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 283
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 309
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 310
    return-void
.end method

.method public setNeedTextAnim(Z)V
    .locals 1
    .param p1, "needTextAnim"    # Z

    .line 445
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->setNeedTextAnim(Z)V

    .line 446
    return-void
.end method

.method public setOnAnimatorListener(Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationEnterHideListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationEnterHideListener;

    .line 454
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mEndListener:Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationEnterHideListener;

    .line 455
    return-void
.end method

.method public setOnNavigationItemReselectedListener(Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationItemReselectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationItemReselectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 224
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mReselectedListener:Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationItemReselectedListener;

    .line 225
    return-void
.end method

.method public setOnNavigationItemSelectedListener(Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationItemSelectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 211
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mSelectedListener:Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationItemSelectedListener;

    .line 212
    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 4
    .param p1, "itemId"    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 362
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 363
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 364
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mPresenter:Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 368
    :cond_0
    return-void
.end method

.method public setTipsView(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "tips"    # I
    .param p3, "tipsType"    # I

    .line 421
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->setTipsView(III)V

    .line 422
    return-void
.end method
