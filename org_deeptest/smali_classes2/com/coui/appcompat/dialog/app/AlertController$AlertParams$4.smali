.class Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->createListView(Lcom/coui/appcompat/dialog/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;

.field final synthetic val$dialog:Lcom/coui/appcompat/dialog/app/AlertController;

.field final synthetic val$listView:Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;Lcom/coui/appcompat/dialog/app/AlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;

    .line 1391
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$4;->this$0:Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$4;->val$listView:Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;

    iput-object p3, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$4;->val$dialog:Lcom/coui/appcompat/dialog/app/AlertController;

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

    .line 1394
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$4;->this$0:Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$4;->this$0:Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mCheckedItems:[Z

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$4;->val$listView:Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;

    invoke-virtual {v1, p3}, Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 1397
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$4;->this$0:Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$4;->val$dialog:Lcom/coui/appcompat/dialog/app/AlertController;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$4;->val$listView:Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;

    .line 1398
    invoke-virtual {v2, p3}, Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v2

    .line 1397
    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 1399
    return-void
.end method
