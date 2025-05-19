.class public Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;
.super Landroid/widget/BaseAdapter;
.source "DefaultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mContext:Landroid/content/Context;

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/widget/popupwindow/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMinWidthWithCheckbox:I

.field private mPopupListItemMinHeight:I

.field private mPopupListItemPaddingVertical:I

.field private mPopupListPaddingVertical:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextScale:F

.field private mTextSize:F

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginWithNoIcon:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/widget/popupwindow/PopupListItem;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p2, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/coui/appcompat/widget/popupwindow/PopupListItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mItemList:Ljava/util/List;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcoui/support/appcompat/R$dimen;->coui_popup_list_padding_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mPopupListPaddingVertical:I

    .line 60
    sget v1, Lcoui/support/appcompat/R$dimen;->coui_popup_list_window_item_padding_top_and_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mPopupListItemPaddingVertical:I

    .line 61
    sget v1, Lcoui/support/appcompat/R$dimen;->coui_popup_list_window_item_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mPopupListItemMinHeight:I

    .line 62
    sget v1, Lcoui/support/appcompat/R$dimen;->coui_popup_list_window_content_min_width_with_checkbox:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mMinWidthWithCheckbox:I

    .line 63
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_popup_list_window_item_title_margin_with_no_icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mTitleMarginWithNoIcon:I

    .line 64
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_popup_list_window_item_title_margin_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mTitleMarginStart:I

    .line 65
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_popup_list_window_item_title_margin_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mTitleMarginEnd:I

    .line 66
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_popup_list_window_item_title_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mTextSize:F

    .line 67
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mTextScale:F

    .line 68
    new-instance v1, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter$1;-><init>(Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 75
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [I

    sget v3, Lcoui/support/appcompat/R$attr;->couiPopupListWindowTextColor:I

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 76
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mTextColor:Landroid/content/res/ColorStateList;

    .line 77
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    return-void
.end method

.method private setChecked(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Lcom/coui/appcompat/widget/popupwindow/PopupListItem;Z)V
    .locals 3
    .param p1, "content"    # Landroid/widget/LinearLayout;
    .param p2, "checkbox"    # Landroid/widget/CheckBox;
    .param p3, "item"    # Lcom/coui/appcompat/widget/popupwindow/PopupListItem;
    .param p4, "isEnable"    # Z

    .line 181
    invoke-virtual {p3}, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->isCheckable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mMinWidthWithCheckbox:I

    if-eq v0, v2, :cond_0

    .line 183
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mMinWidthWithCheckbox:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 185
    :cond_0
    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 186
    invoke-virtual {p3}, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->isChecked()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 187
    invoke-virtual {p2, p4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mMinWidthWithCheckbox:I

    if-ne v0, v2, :cond_2

    .line 190
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 192
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 194
    :goto_0
    return-void
.end method

.method private setIcon(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/coui/appcompat/widget/popupwindow/PopupListItem;Z)V
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "item"    # Lcom/coui/appcompat/widget/popupwindow/PopupListItem;
    .param p4, "isEnable"    # Z

    .line 141
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 142
    .local v0, "titleLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p3}, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->getIconId()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p3}, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 143
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mTitleMarginWithNoIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 145
    invoke-virtual {p3}, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->getRedDotAmount()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p3}, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->isCheckable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mTitleMarginWithNoIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_2

    .line 148
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_2

    .line 151
    :cond_1
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mTitleMarginStart:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 153
    invoke-virtual {p3}, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->getRedDotAmount()I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p3}, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->isCheckable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 154
    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mTitleMarginEnd:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 159
    :goto_0
    invoke-virtual {p3}, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_3

    .line 160
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p3}, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 162
    :cond_3
    invoke-virtual {p3}, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 164
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    return-void
.end method

.method private setRedDot(Lcom/coui/appcompat/widget/popupwindow/PopupListItem;Lcom/coui/appcompat/widget/COUIHintRedDot;)V
    .locals 2
    .param p1, "item"    # Lcom/coui/appcompat/widget/popupwindow/PopupListItem;
    .param p2, "redDot"    # Lcom/coui/appcompat/widget/COUIHintRedDot;

    .line 197
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->getRedDotAmount()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setPointNumber(I)V

    .line 198
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->getRedDotAmount()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 207
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setPointMode(I)V

    .line 208
    invoke-virtual {p2, v1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setVisibility(I)V

    goto :goto_0

    .line 203
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setPointMode(I)V

    .line 204
    invoke-virtual {p2, v1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setVisibility(I)V

    .line 205
    goto :goto_0

    .line 200
    :pswitch_1
    invoke-virtual {p2, v1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setPointMode(I)V

    .line 201
    nop

    .line 211
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setTitle(Landroid/widget/TextView;Lcom/coui/appcompat/widget/popupwindow/PopupListItem;Z)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "item"    # Lcom/coui/appcompat/widget/popupwindow/PopupListItem;
    .param p3, "isEnable"    # Z

    .line 170
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 171
    invoke-virtual {p2}, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 173
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mTextSize:F

    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mTextScale:F

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v0

    .line 177
    .local v0, "suitableFontSize":F
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 178
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 87
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 92
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 98
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 99
    new-instance v1, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter$ViewHolder;-><init>()V

    .line 100
    .local v1, "viewHolder":Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter$ViewHolder;
    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$layout;->coui_popup_list_window_item:I

    invoke-virtual {v2, v3, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 101
    sget v2, Lcoui/support/appcompat/R$id;->popup_list_window_item_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 102
    sget v2, Lcoui/support/appcompat/R$id;->popup_list_window_item_title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 103
    sget v2, Lcoui/support/appcompat/R$id;->content:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter$ViewHolder;->content:Landroid/widget/LinearLayout;

    .line 104
    sget v2, Lcoui/support/appcompat/R$id;->red_dot:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/COUIHintRedDot;

    iput-object v2, v1, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter$ViewHolder;->redDotView:Lcom/coui/appcompat/widget/COUIHintRedDot;

    .line 105
    sget v2, Lcoui/support/appcompat/R$id;->checkbox:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 106
    iget-object v2, v1, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, v1, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 109
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 111
    .end local v1    # "viewHolder":Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter$ViewHolder;

    .line 114
    .restart local v1    # "viewHolder":Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter$ViewHolder;
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 115
    iget v2, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mPopupListItemMinHeight:I

    iget v3, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mPopupListPaddingVertical:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p2, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 116
    iget v2, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mPopupListItemPaddingVertical:I

    iget v3, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mPopupListPaddingVertical:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mPopupListItemPaddingVertical:I

    iget v4, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mPopupListPaddingVertical:I

    add-int/2addr v3, v4

    invoke-virtual {p2, v0, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 119
    :cond_2
    if-nez p1, :cond_3

    .line 120
    iget v2, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mPopupListItemMinHeight:I

    iget v3, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mPopupListPaddingVertical:I

    add-int/2addr v2, v3

    invoke-virtual {p2, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 121
    iget v2, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mPopupListItemPaddingVertical:I

    iget v3, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mPopupListPaddingVertical:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mPopupListItemPaddingVertical:I

    invoke-virtual {p2, v0, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 122
    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ne p1, v2, :cond_4

    .line 123
    iget v2, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mPopupListItemMinHeight:I

    iget v3, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mPopupListPaddingVertical:I

    add-int/2addr v2, v3

    invoke-virtual {p2, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 124
    iget v2, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mPopupListItemPaddingVertical:I

    iget v3, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mPopupListItemPaddingVertical:I

    iget v4, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mPopupListPaddingVertical:I

    add-int/2addr v3, v4

    invoke-virtual {p2, v0, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 126
    :cond_4
    iget v2, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mPopupListItemMinHeight:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 127
    iget v2, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mPopupListItemPaddingVertical:I

    iget v3, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mPopupListItemPaddingVertical:I

    invoke-virtual {p2, v0, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 131
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->isEnable()Z

    move-result v0

    .line 132
    .local v0, "isEnable":Z
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 133
    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;

    iget-object v3, v1, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter$ViewHolder;->redDotView:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-direct {p0, v2, v3}, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->setRedDot(Lcom/coui/appcompat/widget/popupwindow/PopupListItem;Lcom/coui/appcompat/widget/COUIHintRedDot;)V

    .line 134
    iget-object v2, v1, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->setIcon(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/coui/appcompat/widget/popupwindow/PopupListItem;Z)V

    .line 135
    iget-object v2, v1, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;

    invoke-direct {p0, v2, v3, v0}, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->setTitle(Landroid/widget/TextView;Lcom/coui/appcompat/widget/popupwindow/PopupListItem;Z)V

    .line 136
    move-object v2, p2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, v1, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;->setChecked(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Lcom/coui/appcompat/widget/popupwindow/PopupListItem;Z)V

    .line 137
    return-object p2
.end method
