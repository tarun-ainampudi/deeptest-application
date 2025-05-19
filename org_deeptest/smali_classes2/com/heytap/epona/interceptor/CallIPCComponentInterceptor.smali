.class public Lcom/heytap/epona/interceptor/CallIPCComponentInterceptor;
.super Ljava/lang/Object;
.source "CallIPCComponentInterceptor.java"

# interfaces
.implements Lcom/heytap/epona/Interceptor;


# static fields
.field private static final TAG:Ljava/lang/String; = "CallIPCComponentInterceptor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/heytap/epona/Interceptor$Chain;)V
    .locals 12
    .param p1, "chain"    # Lcom/heytap/epona/Interceptor$Chain;

    .line 19
    invoke-interface {p1}, Lcom/heytap/epona/Interceptor$Chain;->request()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 20
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {}, Lcom/heytap/epona/ipc/local/RemoteTransfer;->getInstance()Lcom/heytap/epona/ipc/local/RemoteTransfer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/heytap/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heytap/epona/ipc/local/RemoteTransfer;->findRemoteTransfer(Ljava/lang/String;)Lcom/heytap/epona/IRemoteTransfer;

    move-result-object v1

    .line 21
    .local v1, "transfer":Lcom/heytap/epona/IRemoteTransfer;
    if-eqz v1, :cond_1

    .line 22
    invoke-interface {p1}, Lcom/heytap/epona/Interceptor$Chain;->callback()Lcom/heytap/epona/Call$Callback;

    move-result-object v2

    .line 24
    .local v2, "callback":Lcom/heytap/epona/Call$Callback;
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    :try_start_0
    invoke-interface {p1}, Lcom/heytap/epona/Interceptor$Chain;->isAsync()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 25
    new-instance v7, Lcom/heytap/epona/interceptor/CallIPCComponentInterceptor$1;

    invoke-direct {v7, p0, v0, v2}, Lcom/heytap/epona/interceptor/CallIPCComponentInterceptor$1;-><init>(Lcom/heytap/epona/interceptor/CallIPCComponentInterceptor;Lcom/heytap/epona/Request;Lcom/heytap/epona/Call$Callback;)V

    invoke-interface {v1, v0, v7}, Lcom/heytap/epona/IRemoteTransfer;->asyncCall(Lcom/heytap/epona/Request;Lcom/heytap/epona/ITransferCallback;)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-interface {v1, v0}, Lcom/heytap/epona/IRemoteTransfer;->call(Lcom/heytap/epona/Request;)Lcom/heytap/epona/Response;

    move-result-object v7

    .line 35
    .local v7, "response":Lcom/heytap/epona/Response;
    const-string v8, "CallIPCComponentInterceptor"

    const-string v9, "Component(%s).Action(%s) response : %s"

    new-array v10, v6, [Ljava/lang/Object;

    .line 36
    invoke-virtual {v0}, Lcom/heytap/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-virtual {v0}, Lcom/heytap/epona/Request;->getActionName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    aput-object v7, v10, v3

    .line 35
    invoke-static {v8, v9, v10}, Lcom/heytap/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-interface {v2, v7}, Lcom/heytap/epona/Call$Callback;->onReceive(Lcom/heytap/epona/Response;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v7    # "response":Lcom/heytap/epona/Response;
    :goto_0
    goto :goto_1

    .line 39
    :catch_0
    move-exception v7

    .line 40
    .local v7, "e":Landroid/os/RemoteException;
    const-string v8, "CallIPCComponentInterceptor"

    const-string v9, "fail to call %s#%s and exception is %s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/heytap/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v5

    .line 41
    invoke-virtual {v0}, Lcom/heytap/epona/Request;->getActionName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    .line 40
    invoke-static {v8, v9, v6}, Lcom/heytap/epona/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-static {}, Lcom/heytap/epona/Response;->defaultErrorResponse()Lcom/heytap/epona/Response;

    move-result-object v3

    .line 43
    .local v3, "response":Lcom/heytap/epona/Response;
    invoke-interface {v2, v3}, Lcom/heytap/epona/Call$Callback;->onReceive(Lcom/heytap/epona/Response;)V

    .line 45
    .end local v3    # "response":Lcom/heytap/epona/Response;
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 47
    .end local v2    # "callback":Lcom/heytap/epona/Call$Callback;
    :cond_1
    invoke-interface {p1}, Lcom/heytap/epona/Interceptor$Chain;->proceed()V

    .line 48
    return-void
.end method
