.class Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder$3;
.super Ljava/lang/Object;
.source "COUIListBottomSheetDialog.java"

# interfaces
.implements Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->createDialog()Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    .line 352
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;II)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "state"    # I

    .line 355
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->access$100(Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->access$200(Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;->access$000(Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;)Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    move-result-object v1

    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v1, p2, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    goto :goto_1

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mOnRadioButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mOnRadioButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->access$200(Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;->access$000(Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;)Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 364
    :cond_2
    :goto_1
    return-void
.end method
