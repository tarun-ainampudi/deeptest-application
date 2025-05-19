.class final Lcom/heytap/compat/telephony/TelephonyManagerNative$1;
.super Ljava/lang/Object;
.source "TelephonyManagerNative.java"

# interfaces
.implements Lcom/heytap/epona/Call$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/compat/telephony/TelephonyManagerNative;->listen(Lcom/heytap/compat/telephony/PhoneStateListenerNative;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$events:I

.field final synthetic val$listener:Lcom/heytap/compat/telephony/PhoneStateListenerNative;


# direct methods
.method constructor <init>(ILcom/heytap/compat/telephony/PhoneStateListenerNative;)V
    .locals 0

    .line 543
    iput p1, p0, Lcom/heytap/compat/telephony/TelephonyManagerNative$1;->val$events:I

    iput-object p2, p0, Lcom/heytap/compat/telephony/TelephonyManagerNative$1;->val$listener:Lcom/heytap/compat/telephony/PhoneStateListenerNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/heytap/epona/Response;)V
    .locals 6
    .param p1, "response"    # Lcom/heytap/epona/Response;

    .line 546
    invoke-virtual {p1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    const-string v0, "TelephonyManagerNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/heytap/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-void

    .line 550
    :cond_0
    invoke-virtual {p1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 551
    .local v0, "result":Landroid/os/Bundle;
    const/16 v1, 0x800

    iget v2, p0, Lcom/heytap/compat/telephony/TelephonyManagerNative$1;->val$events:I

    if-ne v1, v2, :cond_1

    .line 552
    iget-object v1, p0, Lcom/heytap/compat/telephony/TelephonyManagerNative$1;->val$listener:Lcom/heytap/compat/telephony/PhoneStateListenerNative;

    new-instance v2, Lcom/heytap/compat/telephony/PreciseCallStateNative;

    const-string v3, "ringingCall"

    .line 553
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "foregroundCall"

    .line 554
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "backgroundCall"

    .line 555
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/heytap/compat/telephony/PreciseCallStateNative;-><init>(III)V

    .line 552
    invoke-virtual {v1, v2}, Lcom/heytap/compat/telephony/PhoneStateListenerNative;->onPreciseCallStateChanged(Lcom/heytap/compat/telephony/PreciseCallStateNative;)V

    .line 557
    :cond_1
    return-void
.end method
