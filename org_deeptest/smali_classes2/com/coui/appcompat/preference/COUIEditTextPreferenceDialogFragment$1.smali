.class Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment$1;
.super Ljava/lang/Object;
.source "COUIEditTextPreferenceDialogFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;

.field final synthetic val$mCOUIBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;

    .line 78
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment$1;->this$0:Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment$1;->val$mCOUIBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 81
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment$1;->this$0:Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment$1;->val$mCOUIBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 82
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment$1;->val$mCOUIBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->dismiss()V

    .line 83
    const/4 v0, 0x1

    return v0
.end method
