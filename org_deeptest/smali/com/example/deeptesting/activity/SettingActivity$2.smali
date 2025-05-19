.class Lcom/example/deeptesting/activity/SettingActivity$2;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 50
    iput-object p1, p0, Lcom/example/deeptesting/activity/SettingActivity$2;->this$0:Lcom/example/deeptesting/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/example/deeptesting/activity/SettingActivity$2;->this$0:Lcom/example/deeptesting/activity/SettingActivity;

    invoke-static {v0}, Lcom/example/deeptesting/activity/SettingActivity;->access$000(Lcom/example/deeptesting/activity/SettingActivity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getMeasuredHeight()I

    move-result v0

    .line 54
    .local v0, "appBarLayoutHeight":I
    iget-object v1, p0, Lcom/example/deeptesting/activity/SettingActivity$2;->this$0:Lcom/example/deeptesting/activity/SettingActivity;

    invoke-static {v1}, Lcom/example/deeptesting/activity/SettingActivity;->access$100(Lcom/example/deeptesting/activity/SettingActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/example/deeptesting/activity/SettingActivity$2;->this$0:Lcom/example/deeptesting/activity/SettingActivity;

    invoke-static {v2}, Lcom/example/deeptesting/activity/SettingActivity;->access$100(Lcom/example/deeptesting/activity/SettingActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/example/deeptesting/activity/SettingActivity$2;->this$0:Lcom/example/deeptesting/activity/SettingActivity;

    .line 55
    invoke-static {v3}, Lcom/example/deeptesting/activity/SettingActivity;->access$100(Lcom/example/deeptesting/activity/SettingActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/example/deeptesting/activity/SettingActivity$2;->this$0:Lcom/example/deeptesting/activity/SettingActivity;

    invoke-static {v4}, Lcom/example/deeptesting/activity/SettingActivity;->access$100(Lcom/example/deeptesting/activity/SettingActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v4

    .line 54
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 56
    return-void
.end method
