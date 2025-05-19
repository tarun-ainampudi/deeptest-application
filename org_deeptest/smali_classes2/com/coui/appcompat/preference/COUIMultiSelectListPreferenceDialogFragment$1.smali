.class Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment$1;
.super Ljava/lang/Object;
.source "COUIMultiSelectListPreferenceDialogFragment.java"

# interfaces
.implements Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;

.field final synthetic val$builder:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

.field final synthetic val$dialog:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;

    .line 69
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment$1;->this$0:Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment$1;->val$builder:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    iput-object p3, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment$1;->val$dialog:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelItemClick()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment$1;->this$0:Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment$1;->val$builder:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->getBottomSheetDialog()Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 79
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment$1;->val$dialog:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;->dismiss()V

    .line 80
    return-void
.end method

.method public onSaveItemClick()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment$1;->this$0:Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment$1;->val$builder:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->getBottomSheetDialog()Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 73
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment$1;->val$dialog:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;->dismiss()V

    .line 74
    return-void
.end method
