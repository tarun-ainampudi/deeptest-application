.class public Lcom/coui/appcompat/preference/COUIPreferenceFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "COUIPreferenceFragment.java"


# static fields
.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "androidx.preference.PreferenceFragment.DIALOG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .line 43
    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    sget v0, Lcoui/support/appcompat/R$layout;->coui_preference_recyclerview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    .local v0, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 50
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 55
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 57
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->setDividerHeight(I)V

    .line 58
    return-object v0
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroidx/preference/Preference;

    .line 63
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    return-void

    .line 67
    :cond_0
    instance-of v0, p1, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->newInstance(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_1
    instance-of v0, p1, Lcom/coui/appcompat/preference/COUIEditTextPreference;

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_2
    instance-of v0, p1, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    if-eqz v0, :cond_3

    .line 72
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_3
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_4

    .line 74
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;

    move-result-object v0

    .line 77
    .local v0, "f":Landroidx/fragment/app/DialogFragment;
    :goto_0
    nop

    .line 79
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 80
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 81
    return-void

    .line 76
    .end local v0    # "f":Landroidx/fragment/app/DialogFragment;
    :cond_4
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onDisplayPreferenceDialog(Landroidx/preference/Preference;)V

    .line 77
    return-void
.end method
