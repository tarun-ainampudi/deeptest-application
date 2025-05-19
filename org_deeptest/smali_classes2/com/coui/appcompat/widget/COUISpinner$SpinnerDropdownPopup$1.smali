.class Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$1;
.super Ljava/lang/Object;
.source "COUISpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;-><init>(Lcom/coui/appcompat/widget/COUISpinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

.field final synthetic val$this$0:Lcom/coui/appcompat/widget/COUISpinner;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Lcom/coui/appcompat/widget/COUISpinner;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    .line 649
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$1;->this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    iput-object p2, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$1;->val$this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 652
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$1;->this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    iget-object v0, v0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISpinner;->getSelectedItemPosition()I

    move-result v0

    .line 653
    .local v0, "oldPosition":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$1;->this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    const/4 v2, 0x0

    if-eq v0, p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v1, v3}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->access$402(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Z)Z

    .line 654
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$1;->this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    iget-object v1, v1, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUISpinner;->access$500(Lcom/coui/appcompat/widget/COUISpinner;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 655
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$1;->this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    invoke-static {v1, p3}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->access$102(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;I)I

    .line 656
    if-eq v0, p3, :cond_2

    .line 657
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$1;->this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    iget-object v1, v1, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-virtual {v1, p3}, Lcom/coui/appcompat/widget/COUISpinner;->setNextSelectedPositionInt(I)V

    .line 658
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$1;->this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    iget-object v1, v1, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUISpinner;->selectionChanged()V

    .line 659
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$1;->this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    iget-object v1, v1, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/COUISpinner;->setNextSelectedPositionInt(I)V

    goto :goto_1

    .line 662
    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$1;->this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    iget-object v1, v1, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-virtual {v1, p3}, Lcom/coui/appcompat/widget/COUISpinner;->setSelection(I)V

    .line 664
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$1;->this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    iget-object v1, v1, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    iget-object v1, v1, Lcom/coui/appcompat/widget/COUISpinner;->mOnItemClickListener:Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;

    if-eqz v1, :cond_3

    .line 665
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$1;->this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    iget-object v1, v1, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$1;->this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    iget-object v3, v3, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    iget-object v3, v3, Lcom/coui/appcompat/widget/COUISpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, p3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v1, p2, p3, v3, v4}, Lcom/coui/appcompat/widget/COUISpinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 667
    :cond_3
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$1;->this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->dismiss()V

    .line 668
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$1;->this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    invoke-static {v1, v2}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->access$402(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Z)Z

    .line 669
    return-void
.end method
