.class Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$2;
.super Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;
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
.method constructor <init>(Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/coui/appcompat/dialog/app/AlertController;)V
    .locals 10
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "layoutResId"    # I
    .param p5, "labelColumn"    # Ljava/lang/String;
    .param p6, "isCheckedColumn"    # Ljava/lang/String;
    .param p7, "summaryColumn"    # Ljava/lang/String;
    .param p8, "isMultiChoice"    # Z

    .line 729
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$2;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    move-object/from16 v0, p9

    iput-object v0, v8, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$2;->val$dialog:Lcom/coui/appcompat/dialog/app/AlertController;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .line 732
    invoke-super {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 733
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$2;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 734
    .local v0, "mIsCheckedIndex":I
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$2;->val$dialog:Lcom/coui/appcompat/dialog/app/AlertController;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 735
    return-void
.end method
