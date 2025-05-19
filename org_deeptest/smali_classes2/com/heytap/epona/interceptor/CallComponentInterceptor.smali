.class public Lcom/heytap/epona/interceptor/CallComponentInterceptor;
.super Ljava/lang/Object;
.source "CallComponentInterceptor.java"

# interfaces
.implements Lcom/heytap/epona/Interceptor;


# static fields
.field private static final TAG:Ljava/lang/String; = "CallComponentInterceptor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$intercept$0(Lcom/heytap/epona/Request;Lcom/heytap/epona/Call$Callback;Lcom/heytap/epona/Response;)V
    .locals 5
    .param p0, "request"    # Lcom/heytap/epona/Request;
    .param p1, "callback"    # Lcom/heytap/epona/Call$Callback;
    .param p2, "response"    # Lcom/heytap/epona/Response;

    .line 23
    const-string v0, "CallComponentInterceptor"

    const-string v1, "Component(%s).Action(%s) response : %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Lcom/heytap/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/heytap/epona/Request;->getActionName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 23
    invoke-static {v0, v1, v2}, Lcom/heytap/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-interface {p1, p2}, Lcom/heytap/epona/Call$Callback;->onReceive(Lcom/heytap/epona/Response;)V

    .line 26
    return-void
.end method


# virtual methods
.method public intercept(Lcom/heytap/epona/Interceptor$Chain;)V
    .locals 10
    .param p1, "chain"    # Lcom/heytap/epona/Interceptor$Chain;

    .line 16
    invoke-interface {p1}, Lcom/heytap/epona/Interceptor$Chain;->request()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 17
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-virtual {v0}, Lcom/heytap/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, "componentName":Ljava/lang/String;
    invoke-static {v1}, Lcom/heytap/epona/Epona;->findComponent(Ljava/lang/String;)Lcom/heytap/epona/DynamicProvider;

    move-result-object v2

    .line 19
    .local v2, "component":Lcom/heytap/epona/DynamicProvider;
    if-eqz v2, :cond_1

    .line 20
    invoke-interface {p1}, Lcom/heytap/epona/Interceptor$Chain;->callback()Lcom/heytap/epona/Call$Callback;

    move-result-object v3

    .line 21
    .local v3, "callback":Lcom/heytap/epona/Call$Callback;
    invoke-interface {p1}, Lcom/heytap/epona/Interceptor$Chain;->isAsync()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 22
    new-instance v4, Lcom/heytap/epona/interceptor/-$$Lambda$CallComponentInterceptor$PjMrS_nfwWXYd2drEx8NvUD-sx0;

    invoke-direct {v4, v0, v3}, Lcom/heytap/epona/interceptor/-$$Lambda$CallComponentInterceptor$PjMrS_nfwWXYd2drEx8NvUD-sx0;-><init>(Lcom/heytap/epona/Request;Lcom/heytap/epona/Call$Callback;)V

    invoke-interface {v2, v0, v4}, Lcom/heytap/epona/DynamicProvider;->onCall(Lcom/heytap/epona/Request;Lcom/heytap/epona/Call$Callback;)V

    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {v2, v0}, Lcom/heytap/epona/DynamicProvider;->onCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/Response;

    move-result-object v4

    .line 29
    .local v4, "response":Lcom/heytap/epona/Response;
    const-string v5, "CallComponentInterceptor"

    const-string v6, "Component(%s).Action(%s) response : %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 30
    invoke-virtual {v0}, Lcom/heytap/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Lcom/heytap/epona/Request;->getActionName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v4, v7, v8

    .line 29
    invoke-static {v5, v6, v7}, Lcom/heytap/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-interface {v3, v4}, Lcom/heytap/epona/Call$Callback;->onReceive(Lcom/heytap/epona/Response;)V

    .line 33
    .end local v4    # "response":Lcom/heytap/epona/Response;
    :goto_0
    return-void

    .line 35
    .end local v3    # "callback":Lcom/heytap/epona/Call$Callback;
    :cond_1
    invoke-interface {p1}, Lcom/heytap/epona/Interceptor$Chain;->proceed()V

    .line 36
    return-void
.end method
