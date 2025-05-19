.class public Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;
.super Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;
.source "COUIMultiSelectListPreferenceDialogFragment.java"


# instance fields
.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mSummaries:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;-><init>()V

    .line 47
    .local v0, "fragment":Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 48
    .local v1, "b":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 55
    invoke-super {p0, p1}, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    .line 57
    .local v0, "preference":Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;
    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    .line 58
    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->getSummaries()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mSummaries:[Ljava/lang/CharSequence;

    .line 59
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 65
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    .line 66
    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mSummaries:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->setSummaries([Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    move-result-object v1

    .line 67
    .local v1, "builder":Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 68
    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->createDialog()Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;

    move-result-object v2

    .line 69
    .local v2, "dialog":Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;
    new-instance v3, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment$1;-><init>(Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;)V

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->setMenuItemClickListener(Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$OnMenuItemClickListener;)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    .line 82
    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->getBottomSheetDialog()Landroid/app/Dialog;

    move-result-object v3

    return-object v3
.end method
