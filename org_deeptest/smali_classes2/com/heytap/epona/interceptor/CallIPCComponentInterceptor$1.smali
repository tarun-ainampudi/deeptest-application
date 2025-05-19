.class Lcom/heytap/epona/interceptor/CallIPCComponentInterceptor$1;
.super Lcom/heytap/epona/ITransferCallback$Stub;
.source "CallIPCComponentInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/epona/interceptor/CallIPCComponentInterceptor;->intercept(Lcom/heytap/epona/Interceptor$Chain;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heytap/epona/interceptor/CallIPCComponentInterceptor;

.field final synthetic val$callback:Lcom/heytap/epona/Call$Callback;

.field final synthetic val$request:Lcom/heytap/epona/Request;


# direct methods
.method constructor <init>(Lcom/heytap/epona/interceptor/CallIPCComponentInterceptor;Lcom/heytap/epona/Request;Lcom/heytap/epona/Call$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/heytap/epona/interceptor/CallIPCComponentInterceptor;

    .line 25
    iput-object p1, p0, Lcom/heytap/epona/interceptor/CallIPCComponentInterceptor$1;->this$0:Lcom/heytap/epona/interceptor/CallIPCComponentInterceptor;

    iput-object p2, p0, Lcom/heytap/epona/interceptor/CallIPCComponentInterceptor$1;->val$request:Lcom/heytap/epona/Request;

    iput-object p3, p0, Lcom/heytap/epona/interceptor/CallIPCComponentInterceptor$1;->val$callback:Lcom/heytap/epona/Call$Callback;

    invoke-direct {p0}, Lcom/heytap/epona/ITransferCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/heytap/epona/Response;)V
    .locals 5
    .param p1, "response"    # Lcom/heytap/epona/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const-string v0, "CallIPCComponentInterceptor"

    const-string v1, "Component(%s).Action(%s) response : %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/heytap/epona/interceptor/CallIPCComponentInterceptor$1;->val$request:Lcom/heytap/epona/Request;

    .line 29
    invoke-virtual {v3}, Lcom/heytap/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/heytap/epona/interceptor/CallIPCComponentInterceptor$1;->val$request:Lcom/heytap/epona/Request;

    invoke-virtual {v3}, Lcom/heytap/epona/Request;->getActionName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 28
    invoke-static {v0, v1, v2}, Lcom/heytap/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/heytap/epona/interceptor/CallIPCComponentInterceptor$1;->val$callback:Lcom/heytap/epona/Call$Callback;

    invoke-interface {v0, p1}, Lcom/heytap/epona/Call$Callback;->onReceive(Lcom/heytap/epona/Response;)V

    .line 31
    return-void
.end method
