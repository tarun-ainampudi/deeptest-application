.class Lcom/example/deeptesting/activity/MainActivity$1;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/deeptesting/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/deeptesting/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/deeptesting/activity/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/deeptesting/activity/MainActivity;

    .line 70
    iput-object p1, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 73
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v0}, Lcom/example/deeptesting/activity/MainActivity;->access$000(Lcom/example/deeptesting/activity/MainActivity;)Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v0}, Lcom/example/deeptesting/activity/MainActivity;->access$000(Lcom/example/deeptesting/activity/MainActivity;)Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v0}, Lcom/example/deeptesting/activity/MainActivity;->access$000(Lcom/example/deeptesting/activity/MainActivity;)Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->dismiss()V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v0}, Lcom/example/deeptesting/activity/MainActivity;->access$100(Lcom/example/deeptesting/activity/MainActivity;)I

    move-result v0

    const/4 v1, -0x1

    const v2, 0x7f1000a0

    const v3, 0x7f100092

    const/16 v4, 0xc8

    const/16 v5, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7f1000a2

    packed-switch v0, :pswitch_data_0

    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    goto :goto_1

    .line 84
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v9, 0x1

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    .line 97
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-virtual {v0, v8}, Lcom/example/deeptesting/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-virtual {v1, v3}, Lcom/example/deeptesting/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v2, v0, v1, v7, v9}, Lcom/example/deeptesting/utils/Utils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    goto :goto_0

    .line 86
    .end local v0    # "title":Ljava/lang/String;
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/example/deeptesting/utils/Utils;->lock()Z

    .line 87
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v0, v1}, Lcom/example/deeptesting/activity/MainActivity;->access$200(Lcom/example/deeptesting/activity/MainActivity;I)V

    .line 88
    sput-boolean v6, Lcom/example/deeptesting/activity/MainActivity;->mApplyRecord:Z

    .line 89
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-virtual {v0}, Lcom/example/deeptesting/activity/MainActivity;->onStart()V

    .line 90
    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-virtual {v0, v8}, Lcom/example/deeptesting/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    .restart local v0    # "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-virtual {v1, v2}, Lcom/example/deeptesting/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    .restart local v1    # "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v2, v0, v1, v7, v9}, Lcom/example/deeptesting/utils/Utils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    .line 95
    nop

    .line 102
    .end local v0    # "title":Ljava/lang/String;
    .end local v1    # "str":Ljava/lang/String;
    :goto_0
    goto :goto_2

    .line 78
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    const-class v2, Lcom/example/deeptesting/activity/StatusActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "resultCode"

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    const-string v1, "data"

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/example/deeptesting/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 82
    goto :goto_2

    .line 104
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_3

    .line 120
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-virtual {v0, v8}, Lcom/example/deeptesting/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-virtual {v1, v3}, Lcom/example/deeptesting/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    .restart local v1    # "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v2, v0, v1, v7, v6}, Lcom/example/deeptesting/utils/Utils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    goto :goto_2

    .line 106
    .end local v0    # "title":Ljava/lang/String;
    .end local v1    # "str":Ljava/lang/String;
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4

    .line 107
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/example/deeptesting/activity/MainActivity;->access$200(Lcom/example/deeptesting/activity/MainActivity;I)V

    .line 108
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-virtual {v0}, Lcom/example/deeptesting/activity/MainActivity;->onStart()V

    goto :goto_2

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v0, v1}, Lcom/example/deeptesting/activity/MainActivity;->access$200(Lcom/example/deeptesting/activity/MainActivity;I)V

    .line 111
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-virtual {v0}, Lcom/example/deeptesting/activity/MainActivity;->onStart()V

    .line 113
    goto :goto_2

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-virtual {v0, v8}, Lcom/example/deeptesting/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .restart local v0    # "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-virtual {v1, v2}, Lcom/example/deeptesting/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    .restart local v1    # "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/example/deeptesting/activity/MainActivity$1;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v2, v0, v1, v7, v6}, Lcom/example/deeptesting/utils/Utils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    .line 118
    nop

    .line 127
    .end local v0    # "title":Ljava/lang/String;
    .end local v1    # "str":Ljava/lang/String;
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
