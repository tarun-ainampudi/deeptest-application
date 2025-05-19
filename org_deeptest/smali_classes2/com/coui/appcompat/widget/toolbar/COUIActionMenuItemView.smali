.class public Lcom/coui/appcompat/widget/toolbar/COUIActionMenuItemView;
.super Landroidx/appcompat/view/menu/ActionMenuItemView;
.source "COUIActionMenuItemView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# instance fields
.field private mPaddingHorizontal:I

.field private mPaddingVertical:I

.field private mTextPaddingHorizontal:I

.field private mTextPaddingVertical:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_toolbar_menu_bg_padding_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuItemView;->mPaddingHorizontal:I

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_toolbar_menu_bg_padding_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuItemView;->mPaddingVertical:I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_toolbar_text_menu_bg_padding_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuItemView;->mTextPaddingHorizontal:I

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_toolbar_text_menu_bg_padding_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuItemView;->mTextPaddingVertical:I

    .line 33
    return-void
.end method


# virtual methods
.method public initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V
    .locals 6
    .param p1, "itemData"    # Landroidx/appcompat/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .line 37
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/ActionMenuItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    .line 38
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 39
    .local v0, "isText":Z
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 40
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_1

    const/4 v2, -0x2

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    if-eqz v0, :cond_2

    sget v2, Lcoui/support/appcompat/R$drawable;->coui_toolbar_text_menu_bg:I

    goto :goto_2

    :cond_2
    sget v2, Lcoui/support/appcompat/R$drawable;->coui_toolbar_menu_bg:I

    :goto_2
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuItemView;->setBackgroundResource(I)V

    .line 43
    if-nez v0, :cond_3

    .line 44
    iget v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuItemView;->mPaddingHorizontal:I

    iget v3, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuItemView;->mPaddingVertical:I

    iget v4, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuItemView;->mPaddingHorizontal:I

    iget v5, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuItemView;->mPaddingVertical:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuItemView;->setPadding(IIII)V

    goto :goto_3

    .line 46
    :cond_3
    iget v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuItemView;->mTextPaddingHorizontal:I

    iget v3, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuItemView;->mTextPaddingVertical:I

    iget v4, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuItemView;->mTextPaddingHorizontal:I

    iget v5, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuItemView;->mTextPaddingVertical:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuItemView;->setPadding(IIII)V

    .line 48
    :goto_3
    return-void
.end method
