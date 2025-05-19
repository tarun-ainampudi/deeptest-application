.class Lcom/example/deeptesting/activity/StatusActivity$1;
.super Landroid/os/Handler;
.source "StatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/deeptesting/activity/StatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/deeptesting/activity/StatusActivity;


# direct methods
.method constructor <init>(Lcom/example/deeptesting/activity/StatusActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/deeptesting/activity/StatusActivity;

    .line 63
    iput-object p1, p0, Lcom/example/deeptesting/activity/StatusActivity$1;->this$0:Lcom/example/deeptesting/activity/StatusActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    const/4 v2, 0x0

    const v3, 0x7f1000a2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity$1;->this$0:Lcom/example/deeptesting/activity/StatusActivity;

    invoke-static {v0}, Lcom/example/deeptesting/activity/StatusActivity;->access$000(Lcom/example/deeptesting/activity/StatusActivity;)Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->dismiss()V

    .line 87
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity$1;->this$0:Lcom/example/deeptesting/activity/StatusActivity;

    invoke-virtual {v0, v3}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/deeptesting/activity/StatusActivity$1;->this$0:Lcom/example/deeptesting/activity/StatusActivity;

    const v3, 0x7f100092

    invoke-virtual {v1, v3}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "str":Ljava/lang/String;
    iget-object v3, p0, Lcom/example/deeptesting/activity/StatusActivity$1;->this$0:Lcom/example/deeptesting/activity/StatusActivity;

    invoke-static {v3, v0, v1, v2, v4}, Lcom/example/deeptesting/utils/Utils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    goto :goto_1

    .line 74
    .end local v0    # "title":Ljava/lang/String;
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity$1;->this$0:Lcom/example/deeptesting/activity/StatusActivity;

    invoke-static {v0}, Lcom/example/deeptesting/activity/StatusActivity;->access$000(Lcom/example/deeptesting/activity/StatusActivity;)Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->dismiss()V

    .line 75
    invoke-static {}, Lcom/example/deeptesting/utils/Utils;->isMobileCustom()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity$1;->this$0:Lcom/example/deeptesting/activity/StatusActivity;

    invoke-static {v0}, Lcom/example/deeptesting/utils/Utils;->isGovCustom(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity$1;->this$0:Lcom/example/deeptesting/activity/StatusActivity;

    .line 76
    invoke-static {v0}, Lcom/example/deeptesting/utils/Utils;->isSimLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity$1;->this$0:Lcom/example/deeptesting/activity/StatusActivity;

    invoke-virtual {v0}, Lcom/example/deeptesting/activity/StatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/deeptesting/utils/Utils;->unlock(Ljava/lang/String;)Z

    move-result v0

    .line 80
    .local v0, "result":Z
    const-string v1, "Status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/example/deeptesting/utils/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/example/deeptesting/activity/StatusActivity$1;->this$0:Lcom/example/deeptesting/activity/StatusActivity;

    invoke-static {v1, v4}, Lcom/example/deeptesting/utils/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    .line 82
    invoke-static {}, Lcom/example/deeptesting/utils/Utils;->reboot()V

    .line 84
    .end local v0    # "result":Z
    goto :goto_1

    .line 77
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity$1;->this$0:Lcom/example/deeptesting/activity/StatusActivity;

    invoke-virtual {v0}, Lcom/example/deeptesting/activity/StatusActivity;->finish()V

    goto :goto_1

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity$1;->this$0:Lcom/example/deeptesting/activity/StatusActivity;

    invoke-static {v0}, Lcom/example/deeptesting/activity/StatusActivity;->access$000(Lcom/example/deeptesting/activity/StatusActivity;)Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->dismiss()V

    .line 69
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity$1;->this$0:Lcom/example/deeptesting/activity/StatusActivity;

    invoke-virtual {v0, v3}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/deeptesting/activity/StatusActivity$1;->this$0:Lcom/example/deeptesting/activity/StatusActivity;

    const v3, 0x7f1000a0

    invoke-virtual {v1, v3}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    .restart local v1    # "str":Ljava/lang/String;
    iget-object v3, p0, Lcom/example/deeptesting/activity/StatusActivity$1;->this$0:Lcom/example/deeptesting/activity/StatusActivity;

    invoke-static {v3, v0, v1, v2, v4}, Lcom/example/deeptesting/utils/Utils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    .line 72
    nop

    .line 92
    .end local v0    # "title":Ljava/lang/String;
    .end local v1    # "str":Ljava/lang/String;
    :goto_1
    return-void
.end method
