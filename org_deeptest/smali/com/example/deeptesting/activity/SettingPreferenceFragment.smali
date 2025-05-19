.class public Lcom/example/deeptesting/activity/SettingPreferenceFragment;
.super Lcom/coui/appcompat/preference/COUIPreferenceFragment;
.source "SettingPreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/deeptesting/activity/SettingPreferenceFragment$OnlyOneClickListener;
    }
.end annotation


# static fields
.field private static final ACTION_STATEMENT_PAGE:Ljava/lang/String; = "com.coloros.bootreg.activity.statementpage"

.field private static final BOOTREG_PACKAGE:Ljava/lang/String; = "com.coloros.bootreg"

.field private static final STATEMENT_INTENT_FLAG:Ljava/lang/String; = "statement_intent_flag"

.field private static final TAG:Ljava/lang/String; = "OtaFeatureSelectActivity"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIPreferenceFragment;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/deeptesting/activity/SettingPreferenceFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$100(Lcom/example/deeptesting/activity/SettingPreferenceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/example/deeptesting/activity/SettingPreferenceFragment;

    .line 19
    invoke-direct {p0}, Lcom/example/deeptesting/activity/SettingPreferenceFragment;->jumpPrivacyPage()V

    return-void
.end method

.method private initJumpPreference(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    const-string v0, "open_source_notice"

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/SettingPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIPreference;

    .line 74
    .local v0, "OpenSourceJumpPreference":Lcom/coui/appcompat/preference/COUIPreference;
    if-eqz v0, :cond_0

    .line 75
    new-instance v1, Lcom/example/deeptesting/activity/SettingPreferenceFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/example/deeptesting/activity/SettingPreferenceFragment$1;-><init>(Lcom/example/deeptesting/activity/SettingPreferenceFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 83
    :cond_0
    const-string v1, "statement_link"

    invoke-virtual {p0, v1}, Lcom/example/deeptesting/activity/SettingPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/preference/COUIPreference;

    .line 84
    .local v1, "StatementJumpPreference":Lcom/coui/appcompat/preference/COUIPreference;
    if-eqz v1, :cond_1

    .line 85
    new-instance v2, Lcom/example/deeptesting/activity/SettingPreferenceFragment$2;

    invoke-direct {v2, p0}, Lcom/example/deeptesting/activity/SettingPreferenceFragment$2;-><init>(Lcom/example/deeptesting/activity/SettingPreferenceFragment;)V

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/preference/COUIPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 94
    :cond_1
    return-void
.end method

.method private initPreferenceSwitch()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/example/deeptesting/activity/SettingPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/example/deeptesting/activity/SettingPreferenceFragment;->initJumpPreference(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method private jumpPrivacyPage()V
    .locals 3

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.coloros.bootreg.activity.statementpage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.coloros.bootreg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v1, "statement_intent_flag"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/SettingPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 127
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 65
    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 46
    const-string v0, "OtaFeatureSelectActivity"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/example/deeptesting/utils/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 48
    iput-object p1, p0, Lcom/example/deeptesting/activity/SettingPreferenceFragment;->mActivity:Landroid/app/Activity;

    .line 49
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .line 29
    const v0, 0x7f130004

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/SettingPreferenceFragment;->addPreferencesFromResource(I)V

    .line 30
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 53
    const-string v0, "OtaFeatureSelectActivity"

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/example/deeptesting/utils/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-super {p0}, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->onDetach()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/deeptesting/activity/SettingPreferenceFragment;->mActivity:Landroid/app/Activity;

    .line 56
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroidx/preference/Preference;

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 5

    .line 34
    invoke-super {p0}, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->onResume()V

    .line 35
    invoke-direct {p0}, Lcom/example/deeptesting/activity/SettingPreferenceFragment;->initPreferenceSwitch()V

    .line 36
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/SettingPreferenceFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    .line 37
    .local v0, "tmp":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v0, :cond_0

    .line 38
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 39
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v1

    const/16 v2, 0x12

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/SettingPreferenceFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 42
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 60
    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    return-void
.end method
