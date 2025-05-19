.class Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;
.super Landroid/widget/BaseAdapter;
.source "COUIListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/app/COUIListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Adapter"
.end annotation


# static fields
.field private static final LAYOUT:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:[Ljava/lang/CharSequence;

.field private mTextAppearances:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 264
    sget v0, Lcoui/support/appcompat/R$layout;->coui_list_dialog_item:I

    sput v0, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->LAYOUT:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;[Ljava/lang/CharSequence;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "items"    # [Ljava/lang/CharSequence;
    .param p3, "textAppearances"    # [I

    .line 270
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 271
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->mContext:Landroid/content/Context;

    .line 272
    iput-object p2, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->mItems:[Ljava/lang/CharSequence;

    .line 273
    iput-object p3, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->mTextAppearances:[I

    .line 274
    return-void
.end method

.method private getViewInternal(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 300
    if-nez p2, :cond_0

    .line 301
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->LAYOUT:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 302
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 303
    .local v0, "itemView":Landroid/widget/TextView;
    new-instance v1, Lcom/coui/appcompat/dialog/app/COUIListDialog$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/coui/appcompat/dialog/app/COUIListDialog$ViewHolder;-><init>(Lcom/coui/appcompat/dialog/app/COUIListDialog$1;)V

    .line 304
    .local v1, "viewHolder":Lcom/coui/appcompat/dialog/app/COUIListDialog$ViewHolder;
    iput-object v0, v1, Lcom/coui/appcompat/dialog/app/COUIListDialog$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 305
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 306
    .end local v0    # "itemView":Landroid/widget/TextView;
    goto :goto_0

    .line 307
    .end local v1    # "viewHolder":Lcom/coui/appcompat/dialog/app/COUIListDialog$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/coui/appcompat/dialog/app/COUIListDialog$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/coui/appcompat/dialog/app/COUIListDialog$ViewHolder;
    :goto_0
    move-object v0, v1

    .line 309
    .end local v1    # "viewHolder":Lcom/coui/appcompat/dialog/app/COUIListDialog$ViewHolder;
    .local v0, "viewHolder":Lcom/coui/appcompat/dialog/app/COUIListDialog$ViewHolder;
    iget-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIListDialog$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->mTextAppearances:[I

    if-eqz v1, :cond_2

    .line 311
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->mTextAppearances:[I

    aget v1, v1, p1

    .line 312
    .local v1, "textAppearance":I
    if-lez v1, :cond_1

    .line 313
    iget-object v2, v0, Lcom/coui/appcompat/dialog/app/COUIListDialog$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 315
    :cond_1
    iget-object v2, v0, Lcom/coui/appcompat/dialog/app/COUIListDialog$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->mContext:Landroid/content/Context;

    sget v4, Lcoui/support/appcompat/R$style;->DefaultDialogItemTextStyle:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 318
    .end local v1    # "textAppearance":I
    :cond_2
    :goto_1
    return-object p2
.end method

.method private resetPadding(ILandroid/view/View;)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;

    .line 322
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->alert_dialog_item_padding_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 323
    .local v0, "paddingOffset":I
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->alert_dialog_list_item_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 324
    .local v1, "paddingTop":I
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$dimen;->alert_dialog_list_item_padding_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 325
    .local v2, "paddingLeft":I
    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcoui/support/appcompat/R$dimen;->alert_dialog_list_item_padding_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 326
    .local v3, "paddingBottom":I
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$dimen;->alert_dialog_list_item_padding_right:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 327
    .local v4, "paddingRight":I
    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$dimen;->alert_dialog_list_item_min_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 328
    .local v5, "minHeight":I
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->getCount()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 329
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->getCount()I

    move-result v6

    sub-int/2addr v6, v7

    if-ne p1, v6, :cond_0

    .line 330
    add-int v6, v3, v0

    invoke-virtual {p2, v2, v1, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 331
    add-int v6, v5, v0

    invoke-virtual {p2, v6}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_0

    .line 333
    :cond_0
    invoke-virtual {p2, v2, v1, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 334
    invoke-virtual {p2, v5}, Landroid/view/View;->setMinimumHeight(I)V

    .line 337
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->mItems:[Ljava/lang/CharSequence;

    array-length v0, v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .line 283
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->mItems:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 263
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 288
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 293
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->getViewInternal(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 294
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;->resetPadding(ILandroid/view/View;)V

    .line 295
    return-object p2
.end method
