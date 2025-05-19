.class public Lcom/heytap/epona/interceptor/CallProviderInterceptor;
.super Ljava/lang/Object;
.source "CallProviderInterceptor.java"

# interfaces
.implements Lcom/heytap/epona/Interceptor;


# static fields
.field private static final TAG:Ljava/lang/String; = "CallProviderInterceptor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$intercept$0(Lcom/heytap/epona/Request;Lcom/heytap/epona/Call$Callback;Lcom/heytap/epona/Response;)V
    .locals 5
    .param p0, "request"    # Lcom/heytap/epona/Request;
    .param p1, "callback"    # Lcom/heytap/epona/Call$Callback;
    .param p2, "response"    # Lcom/heytap/epona/Response;

    .line 26
    const-string v0, "CallProviderInterceptor"

    const-string v1, "Component(%s).Action(%s) response : %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 27
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

    .line 26
    invoke-static {v0, v1, v2}, Lcom/heytap/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-interface {p1, p2}, Lcom/heytap/epona/Call$Callback;->onReceive(Lcom/heytap/epona/Response;)V

    .line 29
    return-void
.end method


# virtual methods
.method public intercept(Lcom/heytap/epona/Interceptor$Chain;)V
    .locals 13
    .param p1, "chain"    # Lcom/heytap/epona/Interceptor$Chain;

    .line 17
    invoke-interface {p1}, Lcom/heytap/epona/Interceptor$Chain;->request()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 18
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-virtual {v0}, Lcom/heytap/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "providerName":Ljava/lang/String;
    invoke-static {v1}, Lcom/heytap/epona/Epona;->findProviderComponent(Ljava/lang/String;)Lcom/heytap/epona/provider/ProviderInfo;

    move-result-object v2

    .line 20
    .local v2, "providerInfo":Lcom/heytap/epona/provider/ProviderInfo;
    if-eqz v2, :cond_1

    .line 21
    invoke-interface {p1}, Lcom/heytap/epona/Interceptor$Chain;->callback()Lcom/heytap/epona/Call$Callback;

    move-result-object v3

    .line 23
    .local v3, "callback":Lcom/heytap/epona/Call$Callback;
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/heytap/epona/Request;->getActionName()Ljava/lang/String;

    move-result-object v7

    .line 24
    .local v7, "actionName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/heytap/epona/Interceptor$Chain;->isAsync()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    .line 25
    invoke-virtual {v2, v7}, Lcom/heytap/epona/provider/ProviderInfo;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v0, v10, v6

    new-instance v11, Lcom/heytap/epona/interceptor/-$$Lambda$CallProviderInterceptor$NDAs0nCA5P74qkeojWs5L6LgVwY;

    invoke-direct {v11, v0, v3}, Lcom/heytap/epona/interceptor/-$$Lambda$CallProviderInterceptor$NDAs0nCA5P74qkeojWs5L6LgVwY;-><init>(Lcom/heytap/epona/Request;Lcom/heytap/epona/Call$Callback;)V

    aput-object v11, v10, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v2, v7}, Lcom/heytap/epona/provider/ProviderInfo;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v0, v10, v6

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/heytap/epona/Response;

    .line 32
    .local v8, "response":Lcom/heytap/epona/Response;
    const-string v9, "CallProviderInterceptor"

    const-string v10, "Component(%s).Action(%s) response : %s"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    .line 33
    invoke-virtual {v0}, Lcom/heytap/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-virtual {v0}, Lcom/heytap/epona/Request;->getActionName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v5

    aput-object v8, v11, v4

    .line 32
    invoke-static {v9, v10, v11}, Lcom/heytap/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-interface {v3, v8}, Lcom/heytap/epona/Call$Callback;->onReceive(Lcom/heytap/epona/Response;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v7    # "actionName":Ljava/lang/String;
    .end local v8    # "response":Lcom/heytap/epona/Response;
    :goto_0
    goto :goto_1

    .line 36
    :catch_0
    move-exception v7

    .line 37
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, "CallProviderInterceptor"

    const-string v9, "fail to run static provider with componentName = %s and exception is %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    .line 38
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 37
    invoke-static {v8, v9, v4}, Lcom/heytap/epona/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-static {}, Lcom/heytap/epona/Response;->defaultErrorResponse()Lcom/heytap/epona/Response;

    move-result-object v4

    .line 40
    .local v4, "response":Lcom/heytap/epona/Response;
    invoke-interface {v3, v4}, Lcom/heytap/epona/Call$Callback;->onReceive(Lcom/heytap/epona/Response;)V

    .line 42
    .end local v4    # "response":Lcom/heytap/epona/Response;
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 44
    .end local v3    # "callback":Lcom/heytap/epona/Call$Callback;
    :cond_1
    invoke-interface {p1}, Lcom/heytap/epona/Interceptor$Chain;->proceed()V

    .line 45
    return-void
.end method
