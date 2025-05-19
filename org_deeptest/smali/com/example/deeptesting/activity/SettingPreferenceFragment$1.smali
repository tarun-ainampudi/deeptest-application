.class Lcom/example/deeptesting/activity/SettingPreferenceFragment$1;
.super Lcom/example/deeptesting/activity/SettingPreferenceFragment$OnlyOneClickListener;
.source "SettingPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/deeptesting/activity/SettingPreferenceFragment;->initJumpPreference(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/deeptesting/activity/SettingPreferenceFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/example/deeptesting/activity/SettingPreferenceFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/deeptesting/activity/SettingPreferenceFragment;

    .line 75
    iput-object p1, p0, Lcom/example/deeptesting/activity/SettingPreferenceFragment$1;->this$0:Lcom/example/deeptesting/activity/SettingPreferenceFragment;

    iput-object p2, p0, Lcom/example/deeptesting/activity/SettingPreferenceFragment$1;->val$context:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/example/deeptesting/activity/SettingPreferenceFragment$OnlyOneClickListener;-><init>(Lcom/example/deeptesting/activity/SettingPreferenceFragment;Lcom/example/deeptesting/activity/SettingPreferenceFragment$1;)V

    return-void
.end method


# virtual methods
.method protected onlyOneClick()V
    .locals 3

    .line 78
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/deeptesting/activity/SettingPreferenceFragment$1;->val$context:Landroid/content/Context;

    const-class v2, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/deeptesting/activity/SettingPreferenceFragment$1;->this$0:Lcom/example/deeptesting/activity/SettingPreferenceFragment;

    invoke-virtual {v1, v0}, Lcom/example/deeptesting/activity/SettingPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 80
    return-void
.end method
