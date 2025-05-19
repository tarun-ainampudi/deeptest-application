.class Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$1;
.super Ljava/lang/Object;
.source "COUINavigationMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    .line 93
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$1;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 96
    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    .line 97
    .local v0, "itemView":Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v1

    .line 98
    .local v1, "item":Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$1;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-static {v2}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->access$100(Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$1;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-static {v3}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->access$000(Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;)Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$1;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-static {v2}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->access$200(Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$1;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->getSelectedItemId()I

    move-result v2

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 102
    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$1;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-static {v2}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->access$300(Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;)V

    .line 104
    :cond_1
    return-void
.end method
