.class Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source "COUIBaseSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;-><init>(Lcom/coui/appcompat/widget/COUIBaseSpinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

.field final synthetic val$this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;Lcom/coui/appcompat/widget/COUIBaseSpinner;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    .line 1007
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$1;->this$1:Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    iput-object p2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$1;->val$this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
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

    .line 1010
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$1;->this$1:Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    iget-object v0, v0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-virtual {v0, p3}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->setSelection(I)V

    .line 1011
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$1;->this$1:Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    iget-object v0, v0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    iget-object v0, v0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mOnItemClickListener:Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$1;->this$1:Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    iget-object v0, v0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$1;->this$1:Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    .line 1013
    invoke-static {v1}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->access$100(Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 1015
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$1;->this$1:Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->dismiss()V

    .line 1016
    return-void
.end method
