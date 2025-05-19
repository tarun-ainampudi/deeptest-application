.class Lcom/example/deeptesting/activity/SettingPreferenceFragment$2;
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


# direct methods
.method constructor <init>(Lcom/example/deeptesting/activity/SettingPreferenceFragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/example/deeptesting/activity/SettingPreferenceFragment;

    .line 85
    iput-object p1, p0, Lcom/example/deeptesting/activity/SettingPreferenceFragment$2;->this$0:Lcom/example/deeptesting/activity/SettingPreferenceFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/example/deeptesting/activity/SettingPreferenceFragment$OnlyOneClickListener;-><init>(Lcom/example/deeptesting/activity/SettingPreferenceFragment;Lcom/example/deeptesting/activity/SettingPreferenceFragment$1;)V

    return-void
.end method


# virtual methods
.method protected onlyOneClick()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/example/deeptesting/activity/SettingPreferenceFragment$2;->this$0:Lcom/example/deeptesting/activity/SettingPreferenceFragment;

    invoke-static {v0}, Lcom/example/deeptesting/activity/SettingPreferenceFragment;->access$100(Lcom/example/deeptesting/activity/SettingPreferenceFragment;)V

    .line 89
    return-void
.end method
