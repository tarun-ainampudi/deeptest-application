.class Lcom/coui/appcompat/preference/COUIActivityDialogFragment$5;
.super Ljava/lang/Object;
.source "COUIActivityDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

.field final synthetic val$dialog:Landroidx/appcompat/app/AppCompatDialog;

.field final synthetic val$list:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;Landroid/widget/ListView;Landroidx/appcompat/app/AppCompatDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    .line 191
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$5;->this$0:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$5;->val$list:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$5;->val$dialog:Landroidx/appcompat/app/AppCompatDialog;

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

    .line 200
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$5;->this$0:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$5;->val$list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->access$102(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;I)I

    .line 202
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$5;->this$0:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 203
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$5;->val$dialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 204
    return-void
.end method
