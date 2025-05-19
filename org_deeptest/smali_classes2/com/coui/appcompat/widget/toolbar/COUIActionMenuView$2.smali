.class Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;
.super Ljava/lang/Object;
.source "COUIActionMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    .line 176
    iput-object p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    iget-object v0, v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    new-instance v1, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    .line 181
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    iget-object v0, v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->setInputMethodMode(I)V

    .line 182
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    iget-object v0, v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->setDismissTouchOutside(Z)V

    .line 183
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    iget-object v0, v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    invoke-static {v1}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->access$000(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 184
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->access$102(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->access$100(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 187
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->access$200(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    invoke-static {v1}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->access$200(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 189
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    invoke-static {v2}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->access$200(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-static {v1, v2}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->access$302(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;Landroidx/appcompat/view/menu/MenuItemImpl;)Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 190
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    invoke-static {v1}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->access$100(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v9, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    .line 191
    invoke-static {v2}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->access$300(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    .line 192
    invoke-static {v2}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->access$300(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    invoke-static {v2}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->access$300(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v2

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
    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    .line 193
    invoke-static {v2}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->access$300(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v5

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    .line 194
    invoke-static {v2}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->access$300(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v6

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    .line 195
    invoke-static {v2}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->access$400(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v7, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    invoke-static {v7}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->access$300(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    invoke-static {v2}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->access$400(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v7, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    invoke-static {v7}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->access$300(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v7

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
    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    .line 196
    invoke-static {v2}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->access$300(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZ)V

    .line 190
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 199
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    iget-object v0, v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    invoke-static {v1}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->access$100(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->setItemList(Ljava/util/List;)V

    .line 200
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    iget-object v0, v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    new-instance v1, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2$1;-><init>(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 208
    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    iget-object v0, v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    invoke-static {v1}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->access$500(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->show(Landroid/view/View;)V

    .line 209
    return-void
.end method
