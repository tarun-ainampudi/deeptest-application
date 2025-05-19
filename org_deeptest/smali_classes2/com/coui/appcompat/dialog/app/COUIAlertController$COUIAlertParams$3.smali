.class Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$3;
.super Ljava/lang/Object;
.source "COUIAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->setAdapter(Lcom/coui/appcompat/dialog/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

.field final synthetic val$dialog:Lcom/coui/appcompat/dialog/app/AlertController;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;Lcom/coui/appcompat/dialog/app/AlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    .line 748
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$3;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$3;->val$dialog:Lcom/coui/appcompat/dialog/app/AlertController;

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

    .line 751
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$3;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$3;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCheckedItems:[Z

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$3;->val$dialog:Lcom/coui/appcompat/dialog/app/AlertController;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$3;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$3;->val$dialog:Lcom/coui/appcompat/dialog/app/AlertController;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$3;->val$dialog:Lcom/coui/appcompat/dialog/app/AlertController;

    iget-object v2, v2, Lcom/coui/appcompat/dialog/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 755
    invoke-virtual {v2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    .line 754
    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 757
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$3;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-boolean v0, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mIsMultiChoice:Z

    if-eqz v0, :cond_3

    .line 758
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$3;->val$dialog:Lcom/coui/appcompat/dialog/app/AlertController;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 759
    .local v0, "state":I
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$3;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_2

    .line 760
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$3;->val$dialog:Lcom/coui/appcompat/dialog/app/AlertController;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/coui/appcompat/widget/ChoiceListAdapter;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$3;->val$dialog:Lcom/coui/appcompat/dialog/app/AlertController;

    iget-object v2, v2, Lcom/coui/appcompat/dialog/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0, p3, v2}, Lcom/coui/appcompat/widget/ChoiceListAdapter;->setCheckboxState(IILandroid/widget/ListView;)V

    goto :goto_1

    .line 762
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$3;->val$dialog:Lcom/coui/appcompat/dialog/app/AlertController;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$3;->val$dialog:Lcom/coui/appcompat/dialog/app/AlertController;

    iget-object v2, v2, Lcom/coui/appcompat/dialog/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0, p3, v2}, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->setCheckboxState(IILandroid/widget/ListView;)V

    .line 765
    .end local v0    # "state":I
    :cond_3
    :goto_1
    return-void
.end method
