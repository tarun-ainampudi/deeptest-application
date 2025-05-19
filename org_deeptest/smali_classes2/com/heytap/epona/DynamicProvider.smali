.class public interface abstract Lcom/heytap/epona/DynamicProvider;
.super Ljava/lang/Object;
.source "DynamicProvider.java"


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public needIPC()Z
    .locals 1

    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/Response;
.end method

.method public onCall(Lcom/heytap/epona/Request;Lcom/heytap/epona/Call$Callback;)V
    .locals 1
    .param p1, "request"    # Lcom/heytap/epona/Request;
    .param p2, "callback"    # Lcom/heytap/epona/Call$Callback;

    .line 10
    invoke-interface {p0, p1}, Lcom/heytap/epona/DynamicProvider;->onCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/Response;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/heytap/epona/Call$Callback;->onReceive(Lcom/heytap/epona/Response;)V

    .line 11
    return-void
.end method
