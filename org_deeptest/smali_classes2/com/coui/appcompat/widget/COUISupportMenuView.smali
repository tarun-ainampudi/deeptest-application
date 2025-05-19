.class public Lcom/coui/appcompat/widget/COUISupportMenuView;
.super Landroid/view/View;
.source "COUISupportMenuView.java"


# static fields
.field private static final MAX_ITEM_COUNTS:I = 0xa

.field static final STATE_ENABLED:[I

.field static final STATE_NORMAL:[I

.field static final STATE_PRESSED:[I

.field static final STATE_UNENABLED:[I

.field private static final TAG:Ljava/lang/String; = "COUISupportMenuView"

.field static final VIEW_STATE_ENABLED:I = 0x101009e

.field static final VIEW_STATE_PRESSED:I = 0x10100a7


# instance fields
.field private mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

.field private mIconCover:Landroid/graphics/drawable/Drawable;

.field private mIconHeight:I

.field private mIconWidth:I

.field private mIsSelected:Z

.field private mItemCount:I

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/widget/COUISupportMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemPadding:I

.field private mLineMaxCount:I

.field private mNormalColor:I

.field private mPaddingBottom:I

.field private mPaddingTop:I

.field private mPaint:Landroid/graphics/Paint;

.field private mSelectRect:Landroid/graphics/Rect;

.field private mSelectedColor:I

.field private mSelectedPosition:I

.field private mSingleLineViewHeight:I

.field private mTextMaxLength:I

.field private mTextPaddingSide:I

.field private mTextPaddingTop:I

.field private mTextSize:F

.field private mTouchHelper:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;

.field private mViewPaddingBottom:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x101009e

    aput v3, v1, v2

    sput-object v1, Lcom/coui/appcompat/widget/COUISupportMenuView;->STATE_ENABLED:[I

    .line 48
    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/coui/appcompat/widget/COUISupportMenuView;->STATE_UNENABLED:[I

    .line 49
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/coui/appcompat/widget/COUISupportMenuView;->STATE_PRESSED:[I

    .line 50
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/coui/appcompat/widget/COUISupportMenuView;->STATE_NORMAL:[I

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        -0x10100a7
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUISupportMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUISupportMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v0, 0x5

    iput v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mLineMaxCount:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemList:Ljava/util/List;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mSelectRect:Landroid/graphics/Rect;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mIsSelected:Z

    .line 60
    const/4 v1, -0x1

    iput v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mSelectedPosition:I

    .line 62
    const/high16 v1, 0x41f00000    # 30.0f

    iput v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mTextSize:F

    .line 69
    iput v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemCount:I

    .line 390
    new-instance v0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUISupportMenuView$1;-><init>(Lcom/coui/appcompat/widget/COUISupportMenuView;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mPaint:Landroid/graphics/Paint;

    .line 89
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 90
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_support_menu_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mViewWidth:I

    .line 92
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_support_menu_padding_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mPaddingTop:I

    .line 93
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_support_menu_padding_bottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mPaddingBottom:I

    .line 94
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_support_menu_view_padding_bottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mViewPaddingBottom:I

    .line 95
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_support_menu_item_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mIconHeight:I

    .line 96
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_support_menu_item_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mIconWidth:I

    .line 97
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_support_menu_text_padding_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mTextPaddingTop:I

    .line 98
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_support_menu_text_max_length:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mTextMaxLength:I

    .line 99
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_support_menu_text_padding_side:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mTextPaddingSide:I

    .line 100
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_support_menu_item_textsize:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mTextSize:F

    .line 101
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$color;->coui_support_menu_textcolor_select:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mSelectedColor:I

    .line 102
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$color;->coui_support_menu_textcolor_normal:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mNormalColor:I

    .line 103
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$drawable;->coui_support_menu_item_cover:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mIconCover:Landroid/graphics/drawable/Drawable;

    .line 106
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 107
    .local v0, "fontScale":F
    const/4 v2, 0x4

    .line 108
    .local v2, "scaleLevel":I
    iget v3, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mTextSize:F

    invoke-static {v3, v0, v2}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mTextSize:F

    .line 110
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mTextSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 115
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUISupportMenuView;->setClickable(Z)V

    .line 118
    new-instance v3, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mTouchHelper:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;

    .line 119
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mTouchHelper:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->setCOUIViewTalkBalkInteraction(Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;)V

    .line 120
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mTouchHelper:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;

    invoke-static {p0, v3}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 121
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUISupportMenuView;FF)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISupportMenuView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/COUISupportMenuView;->selectedIndex(FF)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUISupportMenuView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISupportMenuView;

    .line 44
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/widget/COUISupportMenuView;)Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISupportMenuView;

    .line 44
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mTouchHelper:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/widget/COUISupportMenuView;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISupportMenuView;

    .line 44
    iget v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/widget/COUISupportMenuView;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISupportMenuView;

    .line 44
    iget v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUISupportMenuView;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISupportMenuView;

    .line 44
    iget v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemPadding:I

    return v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/COUISupportMenuView;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISupportMenuView;

    .line 44
    iget v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mIconWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/COUISupportMenuView;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISupportMenuView;

    .line 44
    iget v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mLineMaxCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/COUISupportMenuView;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISupportMenuView;

    .line 44
    iget v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/COUISupportMenuView;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISupportMenuView;

    .line 44
    iget v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mSingleLineViewHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/widget/COUISupportMenuView;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISupportMenuView;

    .line 44
    iget v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mIconHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/coui/appcompat/widget/COUISupportMenuView;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISupportMenuView;

    .line 44
    iget v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mTextPaddingTop:I

    return v0
.end method

.method static synthetic access$900(Lcom/coui/appcompat/widget/COUISupportMenuView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISupportMenuView;

    .line 44
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemList:Ljava/util/List;

    return-object v0
.end method

.method private clearState()V
    .locals 4

    .line 360
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUISupportMenuItem;

    .line 361
    .local v1, "ci":Lcom/coui/appcompat/widget/COUISupportMenuItem;
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUISupportMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 362
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 363
    sget-object v3, Lcom/coui/appcompat/widget/COUISupportMenuView;->STATE_NORMAL:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 365
    .end local v1    # "ci":Lcom/coui/appcompat/widget/COUISupportMenuItem;
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    goto :goto_0

    .line 366
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mIsSelected:Z

    .line 367
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->invalidate()V

    .line 368
    return-void
.end method

.method private getDisplayText(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "maxWidth"    # I

    .line 313
    int-to-float v0, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v1, v0, v2}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    .line 315
    .local v0, "breakIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 316
    move-object v1, p1

    goto :goto_0

    .line 318
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "textTemp":Ljava/lang/String;
    :goto_0
    return-object v1
.end method

.method private getRect(ILandroid/graphics/Rect;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 271
    iget v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemPadding:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemPadding:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mIconWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mLineMaxCount:I

    rem-int v2, p1, v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 274
    .local v0, "left":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mIconWidth:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemPadding:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemPadding:I

    iget v4, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mIconWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mLineMaxCount:I

    rem-int v4, p1, v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 278
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mPaddingTop:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mLineMaxCount:I

    div-int v2, p1, v2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    .line 279
    .local v1, "top":I
    iget v2, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mLineMaxCount:I

    if-ge p1, v2, :cond_1

    .line 280
    iget v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mPaddingTop:I

    goto :goto_0

    .line 284
    :cond_1
    iget v2, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mSingleLineViewHeight:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mPaddingTop:I

    add-int v1, v2, v3

    .line 287
    :goto_0
    iget v2, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mIconWidth:I

    add-int/2addr v2, v0

    .line 288
    .local v2, "right":I
    iget v3, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mIconHeight:I

    add-int/2addr v3, v1

    .line 289
    .local v3, "bottom":I
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 290
    return-void
.end method

.method private initStateListDrawable(I)V
    .locals 4
    .param p1, "i"    # I

    .line 158
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUISupportMenuItem;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISupportMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 159
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 161
    .local v1, "statelistDrawable":Landroid/graphics/drawable/StateListDrawable;
    sget-object v2, Lcom/coui/appcompat/widget/COUISupportMenuView;->STATE_PRESSED:[I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 162
    sget-object v2, Lcom/coui/appcompat/widget/COUISupportMenuView;->STATE_PRESSED:[I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 163
    sget-object v2, Lcom/coui/appcompat/widget/COUISupportMenuView;->STATE_ENABLED:[I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 164
    sget-object v2, Lcom/coui/appcompat/widget/COUISupportMenuView;->STATE_ENABLED:[I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 165
    sget-object v2, Lcom/coui/appcompat/widget/COUISupportMenuView;->STATE_UNENABLED:[I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 166
    sget-object v2, Lcom/coui/appcompat/widget/COUISupportMenuView;->STATE_UNENABLED:[I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 167
    sget-object v2, Lcom/coui/appcompat/widget/COUISupportMenuView;->STATE_NORMAL:[I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 168
    sget-object v2, Lcom/coui/appcompat/widget/COUISupportMenuView;->STATE_NORMAL:[I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/COUISupportMenuItem;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/COUISupportMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 171
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/COUISupportMenuItem;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUISupportMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 172
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->clearState()V

    .line 173
    return-void
.end method

.method private selectedIndex(FF)I
    .locals 5
    .param p1, "eventX"    # F
    .param p2, "eventY"    # F

    .line 293
    const/4 v0, 0x0

    .line 296
    .local v0, "position":I
    iget v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemCount:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    .line 297
    return v2

    .line 299
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemCount:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mLineMaxCount:I

    if-gt v1, v3, :cond_2

    .line 300
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemCount:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v1, v3

    float-to-int v0, v1

    goto :goto_2

    .line 302
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    goto :goto_1

    :cond_3
    move v1, p1

    :goto_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mLineMaxCount:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v1, v3

    float-to-int v0, v1

    .line 303
    iget v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mSingleLineViewHeight:I

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_4

    .line 304
    iget v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mLineMaxCount:I

    add-int/2addr v0, v1

    .line 308
    :cond_4
    :goto_2
    iget v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemCount:I

    if-ge v0, v1, :cond_5

    move v2, v0

    nop

    :cond_5
    move v0, v2

    .line 309
    return v0
.end method


# virtual methods
.method public clearAccessibilityFocus()V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mTouchHelper:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mTouchHelper:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->clearFocusedVirtualView()V

    .line 388
    :cond_0
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 373
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mTouchHelper:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mTouchHelper:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const/4 v0, 0x1

    return v0

    .line 377
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 347
    .local v0, "eventY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 348
    .local v1, "pointerCount":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    .line 349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/coui/appcompat/widget/COUISupportMenuView;->selectedIndex(FF)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mSelectedPosition:I

    goto :goto_0

    .line 354
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->clearState()V

    .line 356
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 177
    iget v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mSelectedPosition:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemCount:I

    if-ge v0, v1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemList:Ljava/util/List;

    iget v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mSelectedPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUISupportMenuItem;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISupportMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 179
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 184
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 185
    return-void
.end method

.method public isLayoutRtl()Z
    .locals 3

    .line 263
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 266
    :cond_1
    return v1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 200
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 201
    iget v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 202
    return-void

    .line 204
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemCount:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mLineMaxCount:I

    if-gt v0, v1, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mIconWidth:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemCount:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemCount:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemPadding:I

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mIconWidth:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mLineMaxCount:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mLineMaxCount:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemPadding:I

    .line 209
    :goto_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemPadding:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mIconWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mTextPaddingSide:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mTextMaxLength:I

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemCount:I

    if-ge v0, v1, :cond_2

    .line 211
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mSelectRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getRect(ILandroid/graphics/Rect;)V

    .line 212
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUISupportMenuItem;

    .line 213
    .local v1, "ci":Lcom/coui/appcompat/widget/COUISupportMenuItem;
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUISupportMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 214
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUISupportMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 224
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mNormalColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 226
    .local v2, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    iget v3, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v3, v3

    .line 227
    .local v3, "fontHeight":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mSelectRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mIconWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 228
    .local v4, "x":I
    const/4 v5, 0x0

    .line 234
    .local v5, "y":I
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mSelectRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mTextPaddingTop:I

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    .line 238
    .end local v5    # "y":I
    .local v6, "y":I
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUISupportMenuItem;->getText()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mTextMaxLength:I

    invoke-direct {p0, v5, v7, v8}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getDisplayText(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object v5

    .line 239
    .local v5, "text":Ljava/lang/String;
    int-to-float v7, v4

    int-to-float v8, v6

    iget-object v9, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 210
    .end local v1    # "ci":Lcom/coui/appcompat/widget/COUISupportMenuItem;
    .end local v2    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .end local v3    # "fontHeight":I
    .end local v4    # "x":I
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "y":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 241
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 195
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 196
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 246
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 247
    .local v0, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    const/4 v1, 0x0

    .line 248
    .local v1, "viewHeight":I
    iget v2, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mPaddingTop:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mIconHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mTextPaddingTop:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v4, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mPaddingBottom:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mSingleLineViewHeight:I

    .line 251
    iget v2, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemCount:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mLineMaxCount:I

    if-gt v2, v3, :cond_0

    .line 252
    iget v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mSingleLineViewHeight:I

    goto :goto_0

    .line 254
    :cond_0
    iget v2, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mSingleLineViewHeight:I

    mul-int/lit8 v1, v2, 0x2

    .line 257
    :goto_0
    iget v2, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mViewWidth:I

    invoke-virtual {p0, v2, v1}, Lcom/coui/appcompat/widget/COUISupportMenuView;->setMeasuredDimension(II)V

    .line 258
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 325
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 342
    return v1

    .line 332
    :pswitch_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemList:Ljava/util/List;

    iget v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mSelectedPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUISupportMenuItem;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISupportMenuItem;->getOnItemClickListener()Lcom/coui/appcompat/widget/COUISupportMenuItem$OnItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mSelectedPosition:I

    invoke-interface {v0, v1}, Lcom/coui/appcompat/widget/COUISupportMenuItem$OnItemClickListener;->onCOUIMenuItemClick(I)V

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->clearState()V

    .line 336
    return v2

    .line 328
    :pswitch_1
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mIsSelected:Z

    .line 329
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->invalidate()V

    .line 330
    return v1

    .line 338
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->clearState()V

    .line 339
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setColorSupportMenuItem(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/widget/COUISupportMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 126
    .local p1, "dl":Ljava/util/List;, "Ljava/util/List<Lcom/coui/appcompat/widget/COUISupportMenuItem;>;"
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemList:Ljava/util/List;

    .line 127
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 128
    .local v0, "size":I
    const/4 v1, 0x5

    .line 129
    .local v1, "sizeCountFive":I
    const/4 v2, 0x7

    .line 130
    .local v2, "sizeCountSeven":I
    const/16 v3, 0x8

    .line 131
    .local v3, "sizeCountEight":I
    const/16 v4, 0x9

    .line 132
    .local v4, "sizeCountNight":I
    if-gtz v0, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    const/16 v5, 0xa

    const/4 v6, 0x0

    if-le v0, v5, :cond_1

    .line 136
    iput v5, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemCount:I

    .line 137
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemList:Ljava/util/List;

    invoke-interface {v7, v6, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemList:Ljava/util/List;

    goto :goto_0

    .line 138
    :cond_1
    const/4 v5, 0x7

    if-ne v0, v5, :cond_2

    .line 139
    const/4 v5, 0x6

    iput v5, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemCount:I

    .line 140
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemList:Ljava/util/List;

    iget v7, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemCount:I

    invoke-interface {v5, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemList:Ljava/util/List;

    goto :goto_0

    .line 141
    :cond_2
    const/16 v5, 0x9

    if-ne v0, v5, :cond_3

    .line 142
    const/16 v5, 0x8

    iput v5, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemCount:I

    .line 143
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemList:Ljava/util/List;

    iget v7, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemCount:I

    invoke-interface {v5, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemList:Ljava/util/List;

    goto :goto_0

    .line 145
    :cond_3
    iput v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemCount:I

    .line 147
    :goto_0
    const/4 v5, 0x5

    if-le v0, v5, :cond_4

    .line 148
    div-int/lit8 v5, v0, 0x2

    iput v5, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mLineMaxCount:I

    goto :goto_1

    .line 150
    :cond_4
    iput v5, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mLineMaxCount:I

    .line 152
    :goto_1
    nop

    .local v6, "i":I
    :goto_2
    move v5, v6

    .end local v6    # "i":I
    .local v5, "i":I
    iget v6, p0, Lcom/coui/appcompat/widget/COUISupportMenuView;->mItemCount:I

    if-ge v5, v6, :cond_5

    .line 153
    invoke-direct {p0, v5}, Lcom/coui/appcompat/widget/COUISupportMenuView;->initStateListDrawable(I)V

    .line 152
    add-int/lit8 v6, v5, 0x1

    goto :goto_2

    .line 155
    .end local v5    # "i":I
    :cond_5
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 189
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 190
    const/4 v0, 0x1

    return v0
.end method
