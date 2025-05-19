.class final Lcom/heytap/compat/net/ConnectivityManagerNative$1;
.super Ljava/lang/Object;
.source "ConnectivityManagerNative.java"

# interfaces
.implements Lcom/heytap/epona/Call$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/compat/net/ConnectivityManagerNative;->startTethering(IZLcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onStartTetheringCallbackNative:Lcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;


# direct methods
.method constructor <init>(Lcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/heytap/compat/net/ConnectivityManagerNative$1;->val$onStartTetheringCallbackNative:Lcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/heytap/epona/Response;)V
    .locals 5
    .param p1, "response"    # Lcom/heytap/epona/Response;

    .line 125
    const-string v0, "ConnectivityManagerNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/heytap/epona/Response;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 127
    invoke-virtual {p1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 128
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 129
    return-void

    .line 132
    :cond_0
    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 134
    return-void

    .line 137
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x6a680030

    if-eq v3, v4, :cond_3

    const v4, 0x71bd2f0e

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "onTetheringFailed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const-string v3, "onTetheringStarted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    :cond_4
    :goto_0
    packed-switch v2, :pswitch_data_0

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "action":Ljava/lang/String;
    goto :goto_1

    .line 143
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "action":Ljava/lang/String;
    :pswitch_0
    iget-object v2, p0, Lcom/heytap/compat/net/ConnectivityManagerNative$1;->val$onStartTetheringCallbackNative:Lcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;

    invoke-interface {v2}, Lcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;->onTetheringFailed()V

    .line 144
    goto :goto_1

    .line 139
    :pswitch_1
    iget-object v2, p0, Lcom/heytap/compat/net/ConnectivityManagerNative$1;->val$onStartTetheringCallbackNative:Lcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;

    invoke-interface {v2}, Lcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;->onTetheringStarted()V

    .line 140
    nop

    .line 150
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "action":Ljava/lang/String;
    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
