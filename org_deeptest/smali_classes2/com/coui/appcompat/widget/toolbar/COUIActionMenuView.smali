.class public Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;
.super Landroidx/appcompat/widget/ActionMenuView;
.source "COUIActionMenuView.java"


# static fields
.field private static final EMPTY_TITLE:Ljava/lang/String; = ""

.field private static final MAX_MENU_ITEM_COUNT:I = 0x5

.field private static final OVER_FLOW_MENU_CLASS:Ljava/lang/String; = "androidx.appcompat.widget.ActionMenuPresenter$OverflowMenuButton"

.field private static final TAG:Ljava/lang/String; = "COUIActionMenuView"


# instance fields
.field private mHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

.field private mIsSameSide:Z

.field private mItemSpacing:I

.field private mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mMenuIconTopPadding:I

.field private mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

.field private mMenuViewPadding:I

.field private mNonActionRedDotCount:I

.field private mNonActionRedDotSum:I

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOverFlowButtonDescription:Ljava/lang/String;

.field private mOverFlowMenuButton:Landroid/view/View;

.field private mOverFlowMinWidth:I

.field private mOverflowItems:Ljava/util/ArrayList;

.field public mOverflowPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

.field private mPresenterClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mRedDotDescription:Ljava/lang/String;

.field private mRedDotHorizontalOffset:I

.field private mRedDotMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRedDotVerticalOffset:I

.field private mRedDotWithBigNumberHorizontalOffset:I

.field private mRedDotWithNumberDescriptionId:I

.field private mRedDotWithNumberHorizontalOffset:I

.field private mRedDotWithNumberVerticalOffset:I

.field private mTextExtarPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 128
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mPresenterClasses:Ljava/util/List;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mIsSameSide:Z

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuViewPadding:I

    .line 129
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_actionbar_menuview_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuViewPadding:I

    .line 130
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_action_menu_item_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverFlowMinWidth:I

    .line 131
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_action_menu_text_extra_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mTextExtarPadding:I

    .line 134
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_actionbar_menuitemview_item_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mItemSpacing:I

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    .line 137
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_toolbar_menu_red_dot_horizontal_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotHorizontalOffset:I

    .line 138
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_toolbar_menu_red_dot_vertical_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotVerticalOffset:I

    .line 139
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_toolbar_menu_red_dot_with_number_vertical_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotWithNumberVerticalOffset:I

    .line 140
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_toolbar_menu_red_dot_with_number_horizontal_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotWithNumberHorizontalOffset:I

    .line 141
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_toolbar_menu_red_dot_with_big_number_horizontal_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotWithBigNumberHorizontalOffset:I

    .line 142
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_toolbar_menu_icon_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuIconTopPadding:I

    .line 144
    new-instance v0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot:[I

    sget v6, Lcoui/support/appcompat/R$style;->Widget_COUI_COUIHintRedDot_Small:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;[III)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    .line 147
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$string;->abc_action_menu_overflow_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverFlowButtonDescription:Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$string;->red_dot_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotDescription:Ljava/lang/String;

    .line 149
    sget v0, Lcoui/support/appcompat/R$plurals;->red_dot_with_number_description:I

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotWithNumberDescriptionId:I

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    .line 63
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    .line 63
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 63
    iput-object p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowItems:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    .line 63
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    .line 63
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method

.method static synthetic access$302(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;Landroidx/appcompat/view/menu/MenuItemImpl;)Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;
    .param p1, "x1"    # Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 63
    iput-object p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object p1
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    .line 63
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    .line 63
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverFlowMenuButton:Landroid/view/View;

    return-object v0
.end method

.method private drawRedDot(Landroid/view/View;ILandroid/graphics/Canvas;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "redDotNumber"    # I
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 524
    packed-switch p2, :pswitch_data_0

    .line 532
    const/4 v0, 0x2

    goto :goto_0

    .line 529
    :pswitch_0
    const/4 v0, 0x1

    .line 530
    .local v0, "redDotMode":I
    goto :goto_0

    .line 526
    .end local v0    # "redDotMode":I
    :pswitch_1
    const/4 v0, 0x0

    .line 527
    .restart local v0    # "redDotMode":I
    nop

    .line 532
    :goto_0
    nop

    .line 536
    if-eqz p1, :cond_3

    .line 537
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    invoke-virtual {v1, v0, p2}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->getViewWidth(II)I

    move-result v1

    .line 538
    .local v1, "width":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->getViewHeight(I)I

    move-result v2

    .line 541
    .local v2, "height":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 542
    iget v3, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotHorizontalOffset:I

    .line 543
    .local v3, "horizontalOffset":I
    iget v4, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotVerticalOffset:I

    goto :goto_1

    .line 544
    .end local v3    # "horizontalOffset":I
    :cond_0
    const/16 v3, 0x64

    if-ge p2, v3, :cond_1

    .line 545
    iget v3, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotWithNumberHorizontalOffset:I

    .line 546
    .restart local v3    # "horizontalOffset":I
    iget v4, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotWithNumberVerticalOffset:I

    goto :goto_1

    .line 548
    .end local v3    # "horizontalOffset":I
    :cond_1
    iget v3, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotWithBigNumberHorizontalOffset:I

    .line 549
    .restart local v3    # "horizontalOffset":I
    iget v4, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotWithNumberVerticalOffset:I

    .line 553
    .local v4, "verticalOffset":I
    :goto_1
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 554
    .local v5, "mRectF":Landroid/graphics/RectF;
    invoke-direct {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->isLayoutRTL()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 555
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v6

    int-to-float v7, v3

    add-float/2addr v6, v7

    iget v7, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuViewPadding:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    .line 556
    .local v6, "right":F
    int-to-float v7, v1

    sub-float v7, v6, v7

    goto :goto_2

    .line 558
    .end local v6    # "right":F
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    int-to-float v7, v3

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuViewPadding:I

    int-to-float v7, v7

    add-float/2addr v7, v6

    .line 559
    .local v7, "left":F
    int-to-float v6, v1

    add-float/2addr v6, v7

    .line 562
    .restart local v6    # "right":F
    :goto_2
    iget v8, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuIconTopPadding:I

    sub-int/2addr v8, v4

    int-to-float v8, v8

    .line 563
    .local v8, "top":F
    int-to-float v9, v2

    add-float/2addr v9, v8

    .line 564
    .local v9, "bottom":F
    iput v7, v5, Landroid/graphics/RectF;->left:F

    .line 565
    iput v8, v5, Landroid/graphics/RectF;->top:F

    .line 566
    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 567
    iput v9, v5, Landroid/graphics/RectF;->bottom:F

    .line 568
    iget-object v10, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    invoke-virtual {v10, p3, v0, p2, v5}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->drawRedPoint(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    .line 570
    .end local v1    # "width":I
    .end local v2    # "height":I
    .end local v3    # "horizontalOffset":I
    .end local v4    # "verticalOffset":I
    .end local v5    # "mRectF":Landroid/graphics/RectF;
    .end local v6    # "right":F
    .end local v7    # "left":F
    .end local v8    # "top":F
    .end local v9    # "bottom":F
    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isLayoutRTL()Z
    .locals 2

    .line 573
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII)I
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .line 444
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 445
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 446
    .local v1, "leftMargin":I
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 447
    .local v2, "rightMargin":I
    add-int v3, v1, v2

    .line 450
    .local v3, "hMargins":I
    nop

    .line 451
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v4, p3

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 450
    invoke-static {p2, v4, v5}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getChildMeasureSpec(III)I

    move-result v4

    .line 453
    .local v4, "childWidthMeasureSpec":I
    nop

    .line 454
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p5

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 453
    invoke-static {p4, v5, v6}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getChildMeasureSpec(III)I

    move-result v5

    .line 457
    .local v5, "childHeightMeasureSpec":I
    invoke-virtual {p1, v4, v5}, Landroid/view/View;->measure(II)V

    .line 458
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v3

    return v6
.end method

.method private setRedDotDescription(I)Ljava/lang/String;
    .locals 5
    .param p1, "count"    # I

    .line 496
    packed-switch p1, :pswitch_data_0

    .line 502
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotWithNumberDescriptionId:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 500
    :pswitch_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotDescription:Ljava/lang/String;

    return-object v0

    .line 498
    :pswitch_1
    const-string v0, ""

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 162
    new-instance v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$1;-><init>(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 170
    move-object v0, p3

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v0, :cond_0

    .line 171
    iput-object p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverFlowMenuButton:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverFlowMenuButton:Landroid/view/View;

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_toolbar_menu_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 173
    const/4 v0, -0x1

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 174
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverFlowMenuButton:Landroid/view/View;

    iget v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverFlowMinWidth:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 175
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverFlowMenuButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 176
    new-instance v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;-><init>(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/ActionMenuView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 213
    return-void
.end method

.method public clearRedDotInfo()V
    .locals 1

    .line 490
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mNonActionRedDotSum:I

    .line 491
    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mNonActionRedDotCount:I

    .line 492
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 493
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 508
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 509
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 510
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 511
    .local v1, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2, p1}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->drawRedDot(Landroid/view/View;ILandroid/graphics/Canvas;)V

    .line 514
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 515
    .local v2, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iget-boolean v3, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v3, :cond_2

    .line 516
    iget v3, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mNonActionRedDotCount:I

    if-nez v3, :cond_1

    const/4 v3, -0x1

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mNonActionRedDotSum:I

    .line 517
    .local v3, "redDotAmount":I
    :goto_1
    invoke-direct {p0, v1, v3, p1}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->drawRedDot(Landroid/view/View;ILandroid/graphics/Canvas;)V

    .line 518
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverFlowButtonDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->setRedDotDescription(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 509
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v3    # "redDotAmount":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 424
    invoke-super {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    iput-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 425
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;

    .line 437
    iput-object p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 438
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 439
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 19
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 275
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 277
    .local v1, "visibleCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getChildCount()I

    move-result v2

    .line 278
    .local v2, "childCount":I
    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    .local v1, "i":I
    .local v4, "visibleCount":I
    :goto_0
    const/16 v5, 0x8

    if-ge v1, v2, :cond_1

    .line 279
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 280
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v5, :cond_0

    .line 281
    goto :goto_1

    .line 283
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 278
    .end local v6    # "v":Landroid/view/View;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x5

    if-le v4, v1, :cond_2

    .line 288
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/ActionMenuView;->onLayout(ZIIII)V

    .line 289
    return-void

    .line 291
    :cond_2
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    .line 292
    .local v1, "isLayoutRtl":Z
    sub-int v8, p5, p3

    div-int/lit8 v8, v8, 0x2

    .line 293
    .local v8, "midVertical":I
    iget-boolean v9, v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mIsSameSide:Z

    if-eqz v9, :cond_8

    .line 294
    if-eqz v1, :cond_5

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getWidth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    .line 296
    .local v9, "startRight":I
    nop

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 297
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 298
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 299
    .local v11, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-ne v12, v5, :cond_3

    .line 300
    goto :goto_3

    .line 303
    :cond_3
    iget v12, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v9, v12

    .line 304
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 305
    .local v12, "width":I
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 306
    .local v13, "height":I
    div-int/lit8 v14, v13, 0x2

    sub-int v14, v8, v14

    .line 307
    .local v14, "t":I
    sub-int v15, v9, v12

    add-int v5, v14, v13

    invoke-virtual {v10, v15, v14, v9, v5}, Landroid/view/View;->layout(IIII)V

    .line 308
    iget v5, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v5, v12

    iget v15, v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mItemSpacing:I

    add-int/2addr v5, v15

    sub-int/2addr v9, v5

    .line 296
    .end local v10    # "v":Landroid/view/View;
    .end local v11    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v12    # "width":I
    .end local v13    # "height":I
    .end local v14    # "t":I
    :goto_3
    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x8

    goto :goto_2

    .line 310
    .end local v3    # "i":I
    .end local v9    # "startRight":I
    :cond_4
    nop

    .line 391
    .end local v1    # "isLayoutRtl":Z
    .local v18, "isLayoutRtl":Z
    :goto_4
    move/from16 v18, v1

    goto/16 :goto_e

    .line 311
    .end local v18    # "isLayoutRtl":Z
    .restart local v1    # "isLayoutRtl":Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getPaddingLeft()I

    move-result v5

    .line 312
    .local v5, "startLeft":I
    nop

    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v2, :cond_7

    .line 313
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 314
    .local v9, "v":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 315
    .local v10, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_6

    .line 316
    goto :goto_6

    .line 318
    :cond_6
    iget v11, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v5, v11

    .line 319
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 320
    .local v11, "width":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 321
    .local v12, "height":I
    div-int/lit8 v13, v12, 0x2

    sub-int v13, v8, v13

    .line 322
    .local v13, "t":I
    add-int v14, v5, v11

    add-int v15, v13, v12

    invoke-virtual {v9, v5, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 323
    iget v14, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v14, v11

    iget v15, v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mItemSpacing:I

    add-int/2addr v14, v15

    add-int/2addr v5, v14

    .line 312
    .end local v9    # "v":Landroid/view/View;
    .end local v10    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v11    # "width":I
    .end local v12    # "height":I
    .end local v13    # "t":I
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 325
    .end local v3    # "i":I
    .end local v5    # "startLeft":I
    :cond_7
    goto :goto_4

    .line 327
    :cond_8
    const/4 v3, 0x1

    if-eqz v1, :cond_10

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getPaddingLeft()I

    move-result v5

    .line 329
    .restart local v5    # "startLeft":I
    const/4 v9, 0x1

    .line 330
    .local v9, "firstLeft":Z
    add-int/lit8 v10, v2, -0x1

    .local v10, "i":I
    :goto_7
    if-ltz v10, :cond_f

    .line 332
    invoke-virtual {v0, v10}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 333
    .local v11, "v":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 334
    .local v12, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_9

    .line 335
    nop

    .line 330
    move/from16 v18, v1

    goto/16 :goto_a

    .line 337
    :cond_9
    iget v13, v12, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v5, v13

    .line 338
    if-eqz v9, :cond_b

    .line 339
    instance-of v13, v11, Landroid/widget/TextView;

    if-eqz v13, :cond_a

    move-object v13, v11

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 340
    iget v13, v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mTextExtarPadding:I

    add-int/2addr v5, v13

    .line 342
    :cond_a
    const/4 v9, 0x0

    .line 344
    :cond_b
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 345
    .local v13, "width":I
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 346
    .local v14, "height":I
    div-int/lit8 v15, v14, 0x2

    sub-int v15, v8, v15

    .line 347
    .local v15, "t":I
    if-nez v10, :cond_e

    if-le v4, v3, :cond_e

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getWidth()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getPaddingRight()I

    move-result v17

    sub-int v16, v16, v17

    iget v3, v12, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int v16, v16, v3

    sub-int v16, v16, v13

    .line 349
    .local v16, "start":I
    instance-of v3, v11, Landroid/widget/TextView;

    if-eqz v3, :cond_d

    .line 350
    move-object v3, v11

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    move/from16 v3, v16

    goto :goto_8

    :cond_c
    iget v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuViewPadding:I

    sub-int v3, v16, v3

    :goto_8
    move/from16 v16, v3

    goto :goto_9

    .line 352
    :cond_d
    move/from16 v3, v16

    .end local v16    # "start":I
    .local v3, "start":I
    :goto_9
    move/from16 v18, v1

    .end local v1    # "isLayoutRtl":Z
    .restart local v18    # "isLayoutRtl":Z
    add-int v1, v3, v13

    add-int v6, v15, v14

    invoke-virtual {v11, v3, v15, v1, v6}, Landroid/view/View;->layout(IIII)V

    .line 353
    .end local v3    # "start":I
    goto :goto_a

    .line 354
    .end local v18    # "isLayoutRtl":Z
    .restart local v1    # "isLayoutRtl":Z
    :cond_e
    move/from16 v18, v1

    .end local v1    # "isLayoutRtl":Z
    .restart local v18    # "isLayoutRtl":Z
    add-int v1, v5, v13

    add-int v3, v15, v14

    invoke-virtual {v11, v5, v15, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 355
    iget v1, v12, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v13

    iget v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mItemSpacing:I

    add-int/2addr v1, v3

    add-int/2addr v5, v1

    .line 330
    .end local v11    # "v":Landroid/view/View;
    .end local v12    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v13    # "width":I
    .end local v14    # "height":I
    .end local v15    # "t":I
    :goto_a
    add-int/lit8 v10, v10, -0x1

    move/from16 v1, v18

    const/4 v3, 0x1

    goto/16 :goto_7

    .line 358
    .end local v5    # "startLeft":I
    .end local v9    # "firstLeft":Z
    .end local v10    # "i":I
    .end local v18    # "isLayoutRtl":Z
    .restart local v1    # "isLayoutRtl":Z
    :cond_f
    move/from16 v18, v1

    .end local v1    # "isLayoutRtl":Z
    .restart local v18    # "isLayoutRtl":Z
    goto/16 :goto_e

    .line 359
    .end local v18    # "isLayoutRtl":Z
    .restart local v1    # "isLayoutRtl":Z
    :cond_10
    move/from16 v18, v1

    .end local v1    # "isLayoutRtl":Z
    .restart local v18    # "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    .line 360
    .local v1, "startRight":I
    const/4 v3, 0x1

    .line 361
    .local v3, "firtRight":Z
    add-int/lit8 v5, v2, -0x1

    .local v5, "i":I
    :goto_b
    if-ltz v5, :cond_17

    .line 363
    invoke-virtual {v0, v5}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 364
    .restart local v6    # "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 365
    .local v9, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_11

    .line 366
    goto :goto_d

    .line 368
    :cond_11
    iget v10, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v10

    .line 369
    if-eqz v3, :cond_13

    .line 370
    instance-of v10, v6, Landroid/widget/TextView;

    if-eqz v10, :cond_12

    move-object v10, v6

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 371
    iget v10, v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mTextExtarPadding:I

    sub-int/2addr v1, v10

    .line 373
    :cond_12
    const/4 v3, 0x0

    .line 375
    :cond_13
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 376
    .local v10, "width":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 377
    .local v12, "height":I
    div-int/lit8 v13, v12, 0x2

    sub-int v13, v8, v13

    .line 378
    .local v13, "t":I
    if-nez v5, :cond_16

    const/4 v14, 0x1

    if-le v4, v14, :cond_16

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getPaddingLeft()I

    move-result v15

    iget v11, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v15, v11

    .line 380
    .local v15, "startLeft":I
    instance-of v11, v6, Landroid/widget/TextView;

    if-eqz v11, :cond_15

    .line 381
    move-object v11, v6

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_14

    move v11, v15

    goto :goto_c

    :cond_14
    iget v11, v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuViewPadding:I

    add-int/2addr v11, v15

    :goto_c
    move v15, v11

    .line 383
    :cond_15
    add-int v11, v15, v10

    add-int v14, v13, v12

    invoke-virtual {v6, v15, v13, v11, v14}, Landroid/view/View;->layout(IIII)V

    .line 384
    .end local v15    # "startLeft":I
    goto :goto_d

    .line 385
    :cond_16
    sub-int v11, v1, v10

    add-int v14, v13, v12

    invoke-virtual {v6, v11, v13, v1, v14}, Landroid/view/View;->layout(IIII)V

    .line 386
    iget v11, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v11, v10

    iget v14, v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mItemSpacing:I

    add-int/2addr v11, v14

    sub-int/2addr v1, v11

    .line 361
    .end local v6    # "v":Landroid/view/View;
    .end local v9    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v10    # "width":I
    .end local v12    # "height":I
    .end local v13    # "t":I
    :goto_d
    add-int/lit8 v5, v5, -0x1

    goto :goto_b

    .line 391
    .end local v1    # "startRight":I
    .end local v3    # "firtRight":Z
    .end local v5    # "i":I
    :cond_17
    :goto_e
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 219
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-nez v0, :cond_0

    .line 220
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->onMeasure(II)V

    .line 221
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mIsSameSide:Z

    .line 224
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    .line 226
    .local v1, "view":Lcom/coui/appcompat/widget/toolbar/COUIToolbar;
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getIsTitleCenterStyle()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mIsSameSide:Z

    .line 232
    .end local v1    # "view":Lcom/coui/appcompat/widget/toolbar/COUIToolbar;
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v2, v1, v2, v3}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->setPadding(IIII)V

    .line 234
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 235
    .local v0, "isRtl":Z
    :goto_0
    const/4 v1, 0x0

    .line 236
    .local v1, "widthUsed":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 237
    .local v3, "measureWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 238
    .local v4, "measureHeight":I
    move v11, v1

    move v1, v2

    .local v1, "i":I
    .local v11, "widthUsed":I
    :goto_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 239
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 240
    .local v12, "child":Landroid/view/View;
    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, v12

    move v7, p1

    move v8, v11

    move v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->measureChildCollapseMargins(Landroid/view/View;IIII)I

    move-result v5

    add-int/2addr v11, v5

    .line 238
    .end local v12    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 242
    .end local v1    # "i":I
    :cond_3
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mIsSameSide:Z

    if-eqz v1, :cond_9

    .line 243
    const/4 v1, 0x0

    .line 244
    .local v1, "visibleCount":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getChildCount()I

    move-result v5

    .line 245
    .local v5, "count":I
    const/4 v6, -0x1

    .line 246
    .local v6, "lastMenuIndex":I
    if-lez v5, :cond_8

    .line 247
    move v7, v6

    move v6, v1

    move v1, v2

    .local v1, "i":I
    .local v6, "visibleCount":I
    .local v7, "lastMenuIndex":I
    :goto_2
    if-ge v1, v5, :cond_5

    .line 248
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 249
    .local v8, "v":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_4

    .line 250
    goto :goto_3

    .line 252
    :cond_4
    move v7, v1

    .line 253
    add-int/lit8 v6, v6, 0x1

    .line 247
    .end local v8    # "v":Landroid/view/View;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 255
    .end local v1    # "i":I
    :cond_5
    add-int/lit8 v1, v6, -0x1

    iget v8, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mItemSpacing:I

    mul-int/2addr v1, v8

    add-int/2addr v1, v11

    .line 256
    .end local v3    # "measureWidth":I
    .local v1, "measureWidth":I
    const/4 v3, -0x1

    if-eq v7, v3, :cond_7

    .line 257
    invoke-virtual {p0, v7}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 258
    .local v3, "v":Landroid/view/View;
    instance-of v8, v3, Landroid/widget/TextView;

    if-eqz v8, :cond_6

    move-object v8, v3

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 259
    iget v8, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mTextExtarPadding:I

    add-int/2addr v1, v8

    .line 261
    .end local v3    # "v":Landroid/view/View;
    :cond_6
    nop

    .line 266
    .end local v1    # "measureWidth":I
    .local v3, "measureWidth":I
    :cond_7
    move v3, v1

    goto :goto_4

    .line 264
    .end local v7    # "lastMenuIndex":I
    .local v1, "visibleCount":I
    .local v6, "lastMenuIndex":I
    :cond_8
    const/4 v3, 0x0

    .line 266
    move v7, v6

    move v6, v1

    .end local v1    # "visibleCount":I
    .local v6, "visibleCount":I
    .restart local v7    # "lastMenuIndex":I
    :goto_4
    if-eqz v0, :cond_9

    .line 267
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getPaddingBottom()I

    move-result v9

    invoke-virtual {p0, v1, v8, v2, v9}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->setPadding(IIII)V

    .line 270
    .end local v5    # "count":I
    .end local v6    # "visibleCount":I
    .end local v7    # "lastMenuIndex":I
    :cond_9
    invoke-virtual {p0, v3, v4}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->setMeasuredDimension(II)V

    .line 271
    return-void
.end method

.method public refresh()V
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->refresh()V

    .line 606
    :cond_0
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 10
    .param p1, "reserveOverflow"    # Z
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 397
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 398
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 399
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 400
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 402
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->dismiss()V

    goto/16 :goto_5

    .line 404
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 405
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/MenuItemImpl;

    iput-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 406
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 407
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 408
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v4, v2

    goto :goto_2

    :cond_1
    const-string v2, ""

    goto :goto_1

    :goto_2
    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 409
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v5

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 410
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v6

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 411
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_3
    move v7, v2

    goto :goto_4

    :cond_2
    const/4 v2, -0x1

    goto :goto_3

    :goto_4
    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 412
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZ)V

    .line 406
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 415
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 416
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->measurePopupWindow()V

    .line 417
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->update(II)V

    .line 420
    :cond_4
    :goto_5
    return-void
.end method

.method public setPopupWindowOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 577
    iput-object p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 578
    return-void
.end method

.method public setRedDot(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "number"    # I

    .line 462
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->flagActionItems()V

    .line 463
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 464
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 465
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v1

    if-nez v1, :cond_1

    .line 466
    iget v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mNonActionRedDotCount:I

    iget v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mNonActionRedDotCount:I

    if-nez v2, :cond_0

    const/4 v0, 0x0

    nop

    :cond_0
    sub-int/2addr v1, v0

    iput v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mNonActionRedDotCount:I

    .line 467
    iget v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mNonActionRedDotSum:I

    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mNonActionRedDotSum:I

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 472
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v1

    if-nez v1, :cond_4

    .line 473
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 474
    iget v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mNonActionRedDotCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mNonActionRedDotCount:I

    .line 475
    iget v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mNonActionRedDotSum:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mNonActionRedDotSum:I

    goto :goto_0

    .line 477
    :cond_3
    iget v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mNonActionRedDotSum:I

    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mNonActionRedDotSum:I

    .line 480
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 483
    .local v0, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    if-eqz v0, :cond_6

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->setRedDotDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    .line 486
    :cond_6
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->invalidate()V

    .line 487
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 10

    .line 582
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 583
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 584
    nop

    .local v1, "i":I
    :goto_0
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 585
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/MenuItemImpl;

    iput-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 586
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 587
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 588
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v4, v2

    goto :goto_2

    :cond_0
    const-string v2, ""

    goto :goto_1

    :goto_2
    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 589
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v5

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 590
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v6

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 591
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_3
    move v7, v2

    goto :goto_4

    :cond_1
    const/4 v2, -0x1

    goto :goto_3

    :goto_4
    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 592
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZ)V

    .line 586
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    add-int/lit8 v1, v0, 0x1

    goto/16 :goto_0

    .line 595
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 596
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverFlowMenuButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->show(Landroid/view/View;)V

    .line 597
    const/4 v0, 0x1

    return v0

    .line 599
    :cond_3
    return v1
.end method
