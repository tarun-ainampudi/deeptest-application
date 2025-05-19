.class public Lcom/platform/usercenter/tools/ui/HomeKeyDispacherHelper$HomeKeyEventBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeKeyDispacherHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/platform/usercenter/tools/ui/HomeKeyDispacherHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HomeKeyEventBroadCastReceiver"
.end annotation


# static fields
.field static final SYSTEM_REASON:Ljava/lang/String; = "reason"

.field static final SYSTEM_RECENT_APPS:Ljava/lang/String; = "recentapps"


# instance fields
.field final SYSTEM_HOME_K:Ljava/lang/String;

.field final synthetic this$0:Lcom/platform/usercenter/tools/ui/HomeKeyDispacherHelper;


# direct methods
.method public constructor <init>(Lcom/platform/usercenter/tools/ui/HomeKeyDispacherHelper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/platform/usercenter/tools/ui/HomeKeyDispacherHelper;

    .line 50
    iput-object p1, p0, Lcom/platform/usercenter/tools/ui/HomeKeyDispacherHelper$HomeKeyEventBroadCastReceiver;->this$0:Lcom/platform/usercenter/tools/ui/HomeKeyDispacherHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 54
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getProviderHomeKeyXor8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/tools/ui/HomeKeyDispacherHelper$HomeKeyEventBroadCastReceiver;->SYSTEM_HOME_K:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "reason":Ljava/lang/String;
    iget-object v2, p0, Lcom/platform/usercenter/tools/ui/HomeKeyDispacherHelper$HomeKeyEventBroadCastReceiver;->SYSTEM_HOME_K:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/platform/usercenter/tools/ui/HomeKeyDispacherHelper$HomeKeyEventBroadCastReceiver;->this$0:Lcom/platform/usercenter/tools/ui/HomeKeyDispacherHelper;

    invoke-static {v2}, Lcom/platform/usercenter/tools/ui/HomeKeyDispacherHelper;->access$000(Lcom/platform/usercenter/tools/ui/HomeKeyDispacherHelper;)Lcom/platform/usercenter/tools/ui/HomeKeyDispacherHelper$HomeKeyDispatcherListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 65
    const-string v2, "HomeKeyPress"

    invoke-static {v2}, Lcom/platform/usercenter/tools/log/UCLogUtil;->d(Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lcom/platform/usercenter/tools/ui/HomeKeyDispacherHelper$HomeKeyEventBroadCastReceiver;->this$0:Lcom/platform/usercenter/tools/ui/HomeKeyDispacherHelper;

    invoke-static {v2}, Lcom/platform/usercenter/tools/ui/HomeKeyDispacherHelper;->access$000(Lcom/platform/usercenter/tools/ui/HomeKeyDispacherHelper;)Lcom/platform/usercenter/tools/ui/HomeKeyDispacherHelper$HomeKeyDispatcherListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/platform/usercenter/tools/ui/HomeKeyDispacherHelper$HomeKeyDispatcherListener;->onHomeKeyPress()V

    goto :goto_0

    .line 69
    :cond_0
    const-string v2, "recentapps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .end local v1    # "reason":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method
