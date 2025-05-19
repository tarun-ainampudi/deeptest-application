.class Lcom/example/deeptesting/activity/ApplyActivity$1;
.super Landroid/os/Handler;
.source "ApplyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/deeptesting/activity/ApplyActivity;
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

    .line 51
    iput-object p1, p0, Lcom/example/deeptesting/activity/ApplyActivity$1;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 54
    iget-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity$1;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    invoke-static {v0}, Lcom/example/deeptesting/activity/ApplyActivity;->access$000(Lcom/example/deeptesting/activity/ApplyActivity;)Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->dismiss()V

    .line 55
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/deeptesting/activity/ApplyActivity$1;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    const-class v2, Lcom/example/deeptesting/activity/StatusActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "resultCode"

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    const-string v1, "data"

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    iget-object v1, p0, Lcom/example/deeptesting/activity/ApplyActivity$1;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    invoke-virtual {v1, v0}, Lcom/example/deeptesting/activity/ApplyActivity;->startActivity(Landroid/content/Intent;)V

    .line 59
    invoke-static {}, Lcom/example/deeptesting/activity/ActivityCollector;->finishAll()V

    .line 60
    return-void
.end method
