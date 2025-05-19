.class Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$1;
.super Lcom/coui/appcompat/widget/ChoiceListAdapter;
.source "COUIAlertController.java"


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
.method constructor <init>(Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[ZZLcom/coui/appcompat/dialog/app/AlertController;)V
    .locals 7
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "items"    # [Ljava/lang/CharSequence;
    .param p5, "summaries"    # [Ljava/lang/CharSequence;
    .param p6, "checkboxStates"    # [Z
    .param p7, "isMultiChoice"    # Z

    .line 715
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$1;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p8, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$1;->val$dialog:Lcom/coui/appcompat/dialog/app/AlertController;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/ChoiceListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[ZZ)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 718
    invoke-super {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/ChoiceListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 719
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$1;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCheckedItems:[Z

    if-eqz v1, :cond_0

    .line 720
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$1;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCheckedItems:[Z

    aget-boolean v1, v1, p1

    .line 721
    .local v1, "isItemChecked":Z
    if-eqz v1, :cond_0

    .line 722
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$1;->val$dialog:Lcom/coui/appcompat/dialog/app/AlertController;

    iget-object v2, v2, Lcom/coui/appcompat/dialog/app/AlertController;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 725
    .end local v1    # "isItemChecked":Z
    :cond_0
    return-object v0
.end method
