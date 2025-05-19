.class Lcom/example/deeptesting/activity/ApplyActivity$5;
.super Ljava/lang/Object;
.source "ApplyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/deeptesting/activity/ApplyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/deeptesting/activity/ApplyActivity;


# direct methods
.method constructor <init>(Lcom/example/deeptesting/activity/ApplyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/deeptesting/activity/ApplyActivity;

    .line 112
    iput-object p1, p0, Lcom/example/deeptesting/activity/ApplyActivity$5;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity$5;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    # invoke-static {v0}, Lcom/example/deeptesting/utils/Utils;->isGovCustom(Landroid/content/Context;)Z

    # move-result v0

    const v0, 0x0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/deeptesting/activity/ApplyActivity$5;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    const-class v2, Lcom/example/deeptesting/activity/StatusActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "resultCode"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/example/deeptesting/activity/ApplyActivity$5;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    invoke-virtual {v1, v0}, Lcom/example/deeptesting/activity/ApplyActivity;->startActivity(Landroid/content/Intent;)V

    .line 119
    invoke-static {}, Lcom/example/deeptesting/activity/ActivityCollector;->finishAll()V

    .line 120
    .end local v0    # "intent":Landroid/content/Intent;
    goto/16 :goto_1

    :cond_0
    # invoke-static {}, Lcom/example/deeptesting/utils/Utils;->isMobileCustom()Z

    # move-result v0
    
    const v0, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity$5;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    # invoke-static {v0}, Lcom/example/deeptesting/utils/Utils;->isSimLocked(Landroid/content/Context;)Z

    # move-result v0

    const v0, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity$5;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    invoke-static {v0}, Lcom/example/deeptesting/activity/ApplyActivity;->access$500(Lcom/example/deeptesting/activity/ApplyActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/example/deeptesting/utils/UserCenterHelper;->isLogin(Landroid/content/Context;)Z

    move-result v0

    # const v0, 0x1

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity$5;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    invoke-static {v0}, Lcom/example/deeptesting/utils/Utils;->hasAvaiablelNet(Landroid/content/Context;)Z

    move-result v0

    # const v0, 0x1

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity$5;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    invoke-virtual {v0}, Lcom/example/deeptesting/activity/ApplyActivity;->showProgressDialog()V

    .line 128
    iget-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity$5;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    const/16 v1, 0x3e8

    iget-object v2, p0, Lcom/example/deeptesting/activity/ApplyActivity$5;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    invoke-static {v2}, Lcom/example/deeptesting/activity/ApplyActivity;->access$600(Lcom/example/deeptesting/activity/ApplyActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/example/deeptesting/utils/Utils;->requestService(Landroid/content/Context;ILandroid/os/Handler;)V

    goto :goto_1

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity$5;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    const v1, 0x7f1000a2

    invoke-virtual {v0, v1}, Lcom/example/deeptesting/activity/ApplyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/deeptesting/activity/ApplyActivity$5;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    const v2, 0x7f1000a0

    invoke-virtual {v1, v2}, Lcom/example/deeptesting/activity/ApplyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/example/deeptesting/activity/ApplyActivity$5;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v0, v1, v3, v4}, Lcom/example/deeptesting/utils/Utils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    .line 133
    .end local v0    # "title":Ljava/lang/String;
    .end local v1    # "str":Ljava/lang/String;
    goto :goto_1

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity$5;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    invoke-static {v0}, Lcom/example/deeptesting/activity/ApplyActivity;->access$500(Lcom/example/deeptesting/activity/ApplyActivity;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/example/deeptesting/utils/UserCenterHelper;->startUserCenterColorOSUpgrade(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_1

    .line 121
    :cond_4
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/deeptesting/activity/ApplyActivity$5;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    const-class v2, Lcom/example/deeptesting/activity/StatusActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "resultCode"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lcom/example/deeptesting/activity/ApplyActivity$5;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    invoke-virtual {v1, v0}, Lcom/example/deeptesting/activity/ApplyActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    invoke-static {}, Lcom/example/deeptesting/activity/ActivityCollector;->finishAll()V

    .line 125
    .end local v0    # "intent":Landroid/content/Intent;
    nop

    .line 137
    :goto_1
    return-void
.end method
