.class Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "COUINavigationPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 312
    return-void
.end method

.method private setIcon(Landroid/widget/ImageView;Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;)V
    .locals 8
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "itemView"    # Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    .line 363
    invoke-virtual {p2}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    .line 364
    .local v0, "data":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 365
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 366
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    const/4 v3, 0x0

    .line 368
    .local v3, "instof":Z
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 369
    instance-of v3, v1, Landroid/graphics/drawable/AnimatedStateListDrawable;

    .line 371
    :cond_0
    if-eqz v3, :cond_2

    .line 372
    const/4 v4, 0x1

    new-array v5, v4, [I

    const v6, 0x10100a0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    const/4 v7, -0x1

    :goto_0
    mul-int/2addr v7, v6

    aput v7, v5, v2

    move-object v2, v5

    .line 373
    .local v2, "stateSet":[I
    invoke-virtual {p1, v2, v4}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 374
    .end local v2    # "stateSet":[I
    goto :goto_2

    .line 375
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    .line 376
    .local v2, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v2, :cond_3

    move-object v4, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_1
    invoke-static {v4}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 377
    iget-object v4, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;

    invoke-static {v4}, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->access$300(Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;)Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-static {v1, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 379
    .end local v2    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v3    # "instof":Z
    :goto_2
    goto :goto_3

    .line 380
    :cond_4
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 383
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;

    invoke-static {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->access$000(Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1
    .param p1, "position"    # I

    .line 319
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;

    invoke-static {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->access$000(Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 309
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 325
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 329
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 330
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;

    invoke-static {v1}, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->access$200(Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {}, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->access$100()I

    move-result v2

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 332
    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 333
    sget v2, Lcoui/support/appcompat/R$drawable;->coui_popup_list_top_selector:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne p1, v2, :cond_2

    .line 335
    sget v2, Lcoui/support/appcompat/R$drawable;->coui_popup_list_bottom_selector:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 337
    :cond_2
    sget v2, Lcoui/support/appcompat/R$drawable;->coui_popup_list_center_selector:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 339
    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;

    invoke-static {v2}, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->access$000(Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->isEnabled()Z

    move-result v2

    .line 340
    .local v2, "enabled":Z
    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 341
    sget v3, Lcoui/support/appcompat/R$id;->popup_item_imageView:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 342
    .local v3, "icon":Landroid/widget/ImageView;
    sget v4, Lcoui/support/appcompat/R$id;->popup_item_textView:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 343
    .local v4, "title":Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 344
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 345
    iget-object v5, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;

    invoke-static {v5}, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->access$000(Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    invoke-direct {p0, v3, v5}, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;->setIcon(Landroid/widget/ImageView;Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;)V

    .line 346
    iget-object v5, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;

    invoke-static {v5}, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->access$000(Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    invoke-virtual {v5}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v5, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;

    invoke-static {v5}, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->access$300(Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;)Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 349
    iget-object v5, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;

    invoke-static {v5}, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->access$400(Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;)F

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 351
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 353
    .local v5, "iconLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    if-ne v6, v1, :cond_3

    move v0, v1

    nop

    .line 354
    .local v0, "isRtl":Z
    :cond_3
    if-eqz v0, :cond_4

    .line 355
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;

    invoke-static {v1}, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->access$500(Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcoui/support/appcompat/R$dimen;->coui_navigation_popup_horizontal_margin:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    .line 357
    :cond_4
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu$MenuAdapter;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;

    invoke-static {v1}, Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;->access$500(Lcom/coui/appcompat/widget/navigation/COUINavigationPopupMenu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcoui/support/appcompat/R$dimen;->coui_navigation_popup_horizontal_margin:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 359
    :goto_1
    return-object p2
.end method
