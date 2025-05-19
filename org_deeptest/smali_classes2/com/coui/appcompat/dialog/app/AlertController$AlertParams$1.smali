.class Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->createListView(Lcom/coui/appcompat/dialog/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;

.field final synthetic val$listView:Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # [Ljava/lang/CharSequence;

    .line 1306
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$1;->this$0:Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;

    iput-object p6, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$1;->val$listView:Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1309
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1310
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$1;->this$0:Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v1, :cond_0

    .line 1311
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$1;->this$0:Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mCheckedItems:[Z

    aget-boolean v1, v1, p1

    .line 1312
    .local v1, "isItemChecked":Z
    if-eqz v1, :cond_0

    .line 1313
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$1;->val$listView:Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;->setItemChecked(IZ)V

    .line 1316
    .end local v1    # "isItemChecked":Z
    :cond_0
    return-object v0
.end method
