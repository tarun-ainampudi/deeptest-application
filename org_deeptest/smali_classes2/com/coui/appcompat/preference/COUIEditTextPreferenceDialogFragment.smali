.class public Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;
.super Landroidx/preference/EditTextPreferenceDialogFragmentCompat;
.source "COUIEditTextPreferenceDialogFragment.java"


# instance fields
.field private mEditText:Lcom/coui/appcompat/widget/COUIEditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;-><init>()V

    .line 56
    .local v0, "fragment":Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 57
    .local v1, "b":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 59
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 66
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$style;->DefaultBottomSheetDialog:I

    invoke-direct {v1, v2, v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 67
    .local v1, "mCOUIBottomSheetDialog":Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, "contentView":Landroid/view/View;
    const v3, 0x1020003

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/COUIEditText;

    iput-object v3, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    .line 71
    sget v3, Lcoui/support/appcompat/R$id;->normal_bottom_sheet_toolbar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    .line 72
    .local v3, "toolbar":Lcom/coui/appcompat/widget/toolbar/COUIToolbar;
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setIsTitleCenterStyle(Z)V

    .line 74
    sget v4, Lcoui/support/appcompat/R$menu;->edit_text_preference_dialog_menu:I

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->inflateMenu(I)V

    .line 76
    invoke-virtual {v3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$id;->menu_cancel:I

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 77
    .local v4, "cancelItem":Landroid/view/MenuItem;
    invoke-virtual {v3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$id;->menu_save:I

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 78
    .local v5, "saveItem":Landroid/view/MenuItem;
    new-instance v6, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment$1;

    invoke-direct {v6, p0, v1}, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment$1;-><init>(Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)V

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 86
    new-instance v6, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment$2;

    invoke-direct {v6, p0, v1}, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment$2;-><init>(Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)V

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 95
    iget-object v6, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    new-instance v7, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment$3;

    invoke-direct {v7, p0, v5}, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment$3;-><init>(Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;Landroid/view/MenuItem;)V

    invoke-virtual {v6, v7}, Lcom/coui/appcompat/widget/COUIEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 108
    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    .line 110
    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 112
    :cond_0
    return-object v1
.end method

.method public onResume()V
    .locals 2

    .line 117
    invoke-super {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->onResume()V

    .line 118
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIEditText;->setFocusable(Z)V

    .line 120
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIEditText;->requestFocus()Z

    .line 121
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 123
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 126
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method
