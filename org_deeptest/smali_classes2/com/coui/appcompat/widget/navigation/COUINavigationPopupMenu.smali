.class public Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;
.super Ljava/lang/Object;
.source "COUINavigationPopupMenu.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;
    }
.end annotation


# static fields
.field private static final DROP_DOWN_GRAVITY:I = 0x800055

.field private static final DROP_DOWN_GRAVITY_RTL:I = 0x800055

.field private static final ITEM_LAYOUT:I

.field private static final POPUP_WINDOW_BACKGROUND:I


# instance fields
.field private final mAdapter:Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;

.field private mAnchor:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mListViewUsedToMeasure:Landroid/widget/ListView;

.field private mMenuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;",
            ">;"
        }
    .end annotation
.end field

.field private mPopup:Landroidx/appcompat/widget/ListPopupWindow;

.field private mPopupHorizontalMargin:I

.field private mPopupMaxHeight:I

.field private mPopupVerticalMargin:I

.field private mPopupWidth:I

.field private mScreenWidth:I

.field private final mSuitableFontSize:F

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mUsedSpace:I

.field private mVisibleMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    sget v0, Lcoui/support/appcompat/R$layout;->coui_navigation_popup_item:I

    sput v0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->ITEM_LAYOUT:I

    .line 59
    sget v0, Lcoui/support/appcompat/R$drawable;->coui_navigation_popup_bg:I

    sput v0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->POPUP_WINDOW_BACKGROUND:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mMenuList:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mVisibleMenus:Ljava/util/List;

    .line 85
    iput-object p2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mAnchor:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    .line 86
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mAnchor:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 87
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mInflater:Landroid/view/LayoutInflater;

    .line 88
    new-instance v0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;-><init>(Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mAdapter:Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;

    .line 89
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 90
    .local v0, "layoutDirection":I
    const v1, 0x800055

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 91
    iput v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mDropDownGravity:I

    goto :goto_0

    .line 93
    :cond_0
    iput v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mDropDownGravity:I

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 97
    .local v1, "resources":Landroid/content/res/Resources;
    sget v3, Lcoui/support/appcompat/R$dimen;->coui_navigation_popup_text_size:I

    .line 98
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    const/4 v5, 0x5

    .line 97
    invoke-static {v3, v4, v5}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mSuitableFontSize:F

    .line 101
    sget v3, Lcoui/support/appcompat/R$dimen;->coui_navigation_popup_horizontal_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopupHorizontalMargin:I

    .line 102
    sget v3, Lcoui/support/appcompat/R$dimen;->coui_navigation_popup_vertical_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopupVerticalMargin:I

    .line 103
    sget v3, Lcoui/support/appcompat/R$dimen;->coui_navigation_popup_item_used_space:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mUsedSpace:I

    .line 104
    sget v3, Lcoui/support/appcompat/R$dimen;->coui_navigation_popup_item_min_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopupWidth:I

    .line 105
    sget v3, Lcoui/support/appcompat/R$dimen;->coui_navigation_popup_max_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopupMaxHeight:I

    .line 106
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_1

    .line 107
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mScreenWidth:I

    goto :goto_1

    .line 109
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mScreenWidth:I

    .line 111
    :goto_1
    new-instance v2, Landroid/widget/ListView;

    iget-object v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mListViewUsedToMeasure:Landroid/widget/ListView;

    .line 112
    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mListViewUsedToMeasure:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mListViewUsedToMeasure:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;

    .line 57
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mVisibleMenus:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 57
    sget v0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->ITEM_LAYOUT:I

    return v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;

    .line 57
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;)Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;

    .line 57
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mAnchor:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;

    .line 57
    iget v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mSuitableFontSize:F

    return v0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;

    .line 57
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private measureHeightOfChildrenCompat(I)I
    .locals 11
    .param p1, "widthMeasureSpec"    # I

    .line 215
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mAdapter:Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;

    .line 216
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 218
    .local v1, "returnedHeight":I
    const/4 v2, 0x0

    .line 219
    .local v2, "child":Landroid/view/View;
    const/4 v3, 0x0

    .line 220
    .local v3, "viewType":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    .line 221
    .local v4, "count":I
    const/4 v5, 0x0

    move-object v6, v2

    move v2, v1

    move v1, v5

    .local v1, "i":I
    .local v2, "returnedHeight":I
    .local v6, "child":Landroid/view/View;
    :goto_0
    if-ge v1, v4, :cond_2

    .line 222
    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v7

    .line 223
    .local v7, "newType":I
    if-eq v7, v3, :cond_0

    .line 224
    const/4 v6, 0x0

    .line 225
    move v3, v7

    .line 227
    :cond_0
    iget-object v8, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mListViewUsedToMeasure:Landroid/widget/ListView;

    invoke-interface {v0, v1, v6, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 231
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 232
    .local v8, "childLp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v8, :cond_1

    iget v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v9, :cond_1

    .line 233
    iget v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    goto :goto_1

    .line 236
    :cond_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 238
    .local v9, "heightMeasureSpec":I
    :goto_1
    invoke-virtual {v6, p1, v9}, Landroid/view/View;->measure(II)V

    .line 239
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v2, v10

    .line 221
    .end local v7    # "newType":I
    .end local v8    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v9    # "heightMeasureSpec":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method private tryShow()Z
    .locals 14

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "isListOverLap":Z
    new-instance v1, Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    .line 130
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v1, p0}, Landroidx/appcompat/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 131
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v1, p0}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mAdapter:Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setModal(Z)V

    .line 135
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mAnchor:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    .line 136
    .local v1, "anchor":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 137
    iget-object v5, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v4

    .line 138
    .local v5, "addGlobalListener":Z
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    iput-object v6, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 139
    if-eqz v5, :cond_1

    .line 140
    iget-object v6, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 142
    :cond_1
    iget-object v6, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 143
    iget-object v6, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    iget v7, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mDropDownGravity:I

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 144
    .end local v5    # "addGlobalListener":Z
    nop

    .line 148
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 149
    .local v5, "rect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->POPUP_WINDOW_BACKGROUND:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 150
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 151
    iget v7, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopupWidth:I

    iget v8, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mScreenWidth:I

    iget v9, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopupHorizontalMargin:I

    const/4 v10, 0x2

    mul-int/2addr v9, v10

    sub-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 152
    .local v7, "dropDownWidth":I
    iget-object v8, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v8, v7}, Landroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    .line 153
    iget v8, v5, Landroid/graphics/Rect;->right:I

    sub-int v8, v7, v8

    iget v9, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 154
    .local v8, "childWidthSpec":I
    invoke-direct {p0, v8}, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->measureHeightOfChildrenCompat(I)I

    move-result v9

    .line 155
    .local v9, "popupHeight":I
    iget-object v11, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v11, v6}, Landroidx/appcompat/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget v11, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v9

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopupMaxHeight:I

    if-lt v11, v12, :cond_2

    .line 157
    const/4 v0, 0x1

    .line 160
    :cond_2
    iget-object v11, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    iget v12, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v9

    iget v13, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    iget v13, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopupMaxHeight:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/ListPopupWindow;->setHeight(I)V

    .line 161
    iget-object v11, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v11, v10}, Landroidx/appcompat/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 162
    const/4 v10, 0x0

    .line 163
    .local v10, "xOffset":I
    const/4 v11, 0x0

    .line 164
    .local v11, "yOffset":I
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x13

    if-lt v12, v13, :cond_3

    .line 165
    iget v12, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopupHorizontalMargin:I

    neg-int v12, v12

    iget v13, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    .line 166
    .end local v10    # "xOffset":I
    .local v12, "xOffset":I
    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    iget v13, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopupVerticalMargin:I

    sub-int/2addr v10, v13

    goto :goto_1

    .line 168
    .end local v12    # "xOffset":I
    .restart local v10    # "xOffset":I
    :cond_3
    iget v12, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopupHorizontalMargin:I

    iget v13, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v13

    .line 169
    .end local v10    # "xOffset":I
    .restart local v12    # "xOffset":I
    iget-object v10, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mAnchor:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v10}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->getMeasuredHeight()I

    move-result v10

    iget v13, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopupVerticalMargin:I

    add-int/2addr v10, v13

    iget v13, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v13

    .line 171
    .end local v11    # "yOffset":I
    .local v10, "yOffset":I
    :goto_1
    iget-object v11, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 172
    iget-object v11, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v11, v10}, Landroidx/appcompat/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 173
    iget-object v11, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v11}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 175
    iget-object v11, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v11}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v11

    .line 176
    .local v11, "popupListView":Landroid/widget/ListView;
    invoke-virtual {v11, v3}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v11, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 178
    invoke-virtual {v11, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 180
    if-eqz v0, :cond_4

    .line 181
    invoke-virtual {v11}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 182
    .local v3, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, v5, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 183
    iget v4, v5, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 184
    invoke-virtual {v11, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    .end local v3    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4
    return v2

    .line 145
    .end local v5    # "rect":Landroid/graphics/Rect;
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "dropDownWidth":I
    .end local v8    # "childWidthSpec":I
    .end local v9    # "popupHeight":I
    .end local v10    # "yOffset":I
    .end local v11    # "popupListView":Landroid/widget/ListView;
    .end local v12    # "xOffset":I
    :cond_5
    return v4
.end method


# virtual methods
.method public addMenuItem(Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;)V
    .locals 8
    .param p1, "menuItem"    # Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    .line 199
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mMenuList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    .line 201
    .local v0, "itemData":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 203
    .local v1, "paint":Landroid/graphics/Paint;
    iget v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mSuitableFontSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 204
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->adaptBoldAndMediumFont(Landroid/graphics/Paint;Z)V

    .line 206
    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mVisibleMenus:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 210
    .local v3, "textLength":F
    iget v4, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopupWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mUsedSpace:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopupWidth:I

    .line 212
    .end local v1    # "paint":Landroid/graphics/Paint;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "textLength":F
    :cond_0
    return-void
.end method

.method public clearMenuItems()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mMenuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 195
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mVisibleMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 196
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 191
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyMenuChange()V
    .locals 4

    .line 246
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mVisibleMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mMenuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    .line 248
    .local v1, "item":Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v2

    .line 249
    .local v2, "itemData":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    iget-object v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mVisibleMenus:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    .end local v1    # "item":Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;
    .end local v2    # "itemData":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mAdapter:Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;->notifyDataSetChanged()V

    .line 254
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mAnchor:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 265
    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .line 287
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mAnchor:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    .line 289
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    goto :goto_1

    .line 290
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->dismiss()V

    .line 296
    .end local v0    # "anchor":Landroid/view/View;
    :cond_2
    :goto_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 269
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mVisibleMenus:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 271
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mVisibleMenus:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    .line 272
    .local v0, "item":Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->performClick()Z

    .line 274
    .end local v0    # "item":Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .line 278
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->dismiss()V

    .line 280
    return v1

    .line 282
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I
    .param p5, "i3"    # I
    .param p6, "i4"    # I
    .param p7, "i5"    # I
    .param p8, "i6"    # I
    .param p9, "i7"    # I

    .line 304
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 307
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 123
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->mDropDownGravity:I

    .line 124
    return-void
.end method

.method public show()V
    .locals 2

    .line 117
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    return-void

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
