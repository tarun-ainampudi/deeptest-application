.class Lcom/coui/appcompat/dialog/app/COUIAlertController$1;
.super Landroid/database/ContentObserver;
.source "COUIAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/app/COUIAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/app/COUIAlertController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/app/COUIAlertController;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 99
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$1;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .line 102
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$1;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->access$000(Lcom/coui/appcompat/dialog/app/COUIAlertController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "manual_hide_navigationbar"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 103
    .local v0, "navigationBarHideStatus":I
    if-nez v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$1;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->access$100(Lcom/coui/appcompat/dialog/app/COUIAlertController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$1;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->access$100(Lcom/coui/appcompat/dialog/app/COUIAlertController;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$1;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$1;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->access$100(Lcom/coui/appcompat/dialog/app/COUIAlertController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$1;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->access$100(Lcom/coui/appcompat/dialog/app/COUIAlertController;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$1;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    :goto_0
    return-void
.end method
