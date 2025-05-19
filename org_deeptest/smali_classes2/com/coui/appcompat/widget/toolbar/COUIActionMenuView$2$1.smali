.class Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2$1;
.super Ljava/lang/Object;
.source "COUIActionMenuView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;

    .line 200
    iput-object p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2$1;->this$1:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 203
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2$1;->this$1:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;

    iget-object v0, v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->access$200(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2$1;->this$1:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;

    iget-object v1, v1, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    invoke-static {v1}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->access$200(Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 204
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2$1;->this$1:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;

    iget-object v0, v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    iget-object v0, v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->dismiss()V

    .line 205
    return-void
.end method
