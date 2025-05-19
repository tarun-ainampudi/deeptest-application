.class Lcom/example/deeptesting/activity/SettingActivity$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/deeptesting/activity/SettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/deeptesting/activity/SettingActivity;


# direct methods
.method constructor <init>(Lcom/example/deeptesting/activity/SettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/deeptesting/activity/SettingActivity;

    .line 40
    iput-object p1, p0, Lcom/example/deeptesting/activity/SettingActivity$1;->this$0:Lcom/example/deeptesting/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/example/deeptesting/activity/SettingActivity$1;->this$0:Lcom/example/deeptesting/activity/SettingActivity;

    invoke-virtual {v0}, Lcom/example/deeptesting/activity/SettingActivity;->finish()V

    .line 44
    return-void
.end method
