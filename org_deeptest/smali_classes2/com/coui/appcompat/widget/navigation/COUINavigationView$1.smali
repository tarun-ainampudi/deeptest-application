.class Lcom/coui/appcompat/widget/navigation/COUINavigationView$1;
.super Ljava/lang/Object;
.source "COUINavigationView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/navigation/COUINavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/navigation/COUINavigationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/navigation/COUINavigationView;

    .line 173
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView$1;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 176
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView$1;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->access$000(Lcom/coui/appcompat/widget/navigation/COUINavigationView;)Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationItemReselectedListener;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView$1;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->getSelectedItemId()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 177
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView$1;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->access$000(Lcom/coui/appcompat/widget/navigation/COUINavigationView;)Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationItemReselectedListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationItemReselectedListener;->onNavigationItemReselected(Landroid/view/MenuItem;)V

    .line 178
    return v1

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView$1;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->access$100(Lcom/coui/appcompat/widget/navigation/COUINavigationView;)Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->updateSelectPosition(Landroid/view/MenuItem;)V

    .line 181
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView$1;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->access$200(Lcom/coui/appcompat/widget/navigation/COUINavigationView;)Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView$1;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->access$200(Lcom/coui/appcompat/widget/navigation/COUINavigationView;)Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationItemSelectedListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationItemSelectedListener;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;

    .line 187
    return-void
.end method
