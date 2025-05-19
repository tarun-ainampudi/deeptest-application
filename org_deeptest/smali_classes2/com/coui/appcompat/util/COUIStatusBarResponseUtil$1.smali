.class Lcom/coui/appcompat/util/COUIStatusBarResponseUtil$1;
.super Landroid/content/BroadcastReceiver;
.source "COUIStatusBarResponseUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;->initReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;

    .line 55
    iput-object p1, p0, Lcom/coui/appcompat/util/COUIStatusBarResponseUtil$1;->this$0:Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 60
    const-string v0, "COUIStatusBarResponseUtil"

    const-string v1, "The broadcast receiever was registered successfully and receives the broadcast"

    invoke-static {v0, v1}, Lcom/coui/appcompat/util/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIStatusBarResponseUtil$1;->this$0:Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;

    invoke-static {v0}, Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;->access$000(Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;)Lcom/coui/appcompat/util/COUIStatusBarResponseUtil$StatusBarClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIStatusBarResponseUtil$1;->this$0:Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;

    invoke-static {v0}, Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;->access$000(Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;)Lcom/coui/appcompat/util/COUIStatusBarResponseUtil$StatusBarClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/coui/appcompat/util/COUIStatusBarResponseUtil$StatusBarClickListener;->onStatusBarClicked()V

    .line 63
    const-string v0, "COUIStatusBarResponseUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusBarClicked is called at time :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/util/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method
