.class public Lcom/heytap/epona/internal/RealCall;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lcom/heytap/epona/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/epona/internal/RealCall$AsyncCall;,
        Lcom/heytap/epona/internal/RealCall$SyncCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RealCall"


# instance fields
.field private final mRequest:Lcom/heytap/epona/Request;

.field private final mRoute:Lcom/heytap/epona/Route;

.field private sExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Lcom/heytap/epona/Route;Lcom/heytap/epona/Request;)V
    .locals 2
    .param p1, "route"    # Lcom/heytap/epona/Route;
    .param p2, "request"    # Lcom/heytap/epona/Request;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/heytap/epona/internal/RealCall;->sExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    iput-object p1, p0, Lcom/heytap/epona/internal/RealCall;->mRoute:Lcom/heytap/epona/Route;

    .line 27
    iput-object p2, p0, Lcom/heytap/epona/internal/RealCall;->mRequest:Lcom/heytap/epona/Request;

    .line 28
    return-void
.end method

.method static synthetic access$100(Lcom/heytap/epona/internal/RealCall;Lcom/heytap/epona/Call$Callback;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/heytap/epona/internal/RealCall;
    .param p1, "x1"    # Lcom/heytap/epona/Call$Callback;
    .param p2, "x2"    # Z

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/heytap/epona/internal/RealCall;->proceedChain(Lcom/heytap/epona/Call$Callback;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/heytap/epona/internal/RealCall;)Lcom/heytap/epona/Route;
    .locals 1
    .param p0, "x0"    # Lcom/heytap/epona/internal/RealCall;

    .line 19
    iget-object v0, p0, Lcom/heytap/epona/internal/RealCall;->mRoute:Lcom/heytap/epona/Route;

    return-object v0
.end method

.method public static newCall(Lcom/heytap/epona/Route;Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;
    .locals 1
    .param p0, "route"    # Lcom/heytap/epona/Route;
    .param p1, "request"    # Lcom/heytap/epona/Request;

    .line 31
    new-instance v0, Lcom/heytap/epona/internal/RealCall;

    invoke-direct {v0, p0, p1}, Lcom/heytap/epona/internal/RealCall;-><init>(Lcom/heytap/epona/Route;Lcom/heytap/epona/Request;)V

    return-object v0
.end method

.method private proceedChain(Lcom/heytap/epona/Call$Callback;Z)V
    .locals 8
    .param p1, "callback"    # Lcom/heytap/epona/Call$Callback;
    .param p2, "isAsync"    # Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/heytap/epona/Epona;->getInterceptors()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 68
    .local v0, "interceptors":Ljava/util/List;, "Ljava/util/List<Lcom/heytap/epona/Interceptor;>;"
    new-instance v1, Lcom/heytap/epona/interceptor/CallComponentInterceptor;

    invoke-direct {v1}, Lcom/heytap/epona/interceptor/CallComponentInterceptor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Lcom/heytap/epona/interceptor/CallProviderInterceptor;

    invoke-direct {v1}, Lcom/heytap/epona/interceptor/CallProviderInterceptor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v1, Lcom/heytap/epona/interceptor/LaunchComponentInterceptor;

    invoke-direct {v1}, Lcom/heytap/epona/interceptor/LaunchComponentInterceptor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v1, Lcom/heytap/epona/interceptor/CallIPCComponentInterceptor;

    invoke-direct {v1}, Lcom/heytap/epona/interceptor/CallIPCComponentInterceptor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v1, Lcom/heytap/epona/internal/RealInterceptorChain;

    iget-object v5, p0, Lcom/heytap/epona/internal/RealCall;->mRequest:Lcom/heytap/epona/Request;

    const/4 v4, 0x0

    move-object v2, v1

    move-object v3, v0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/heytap/epona/internal/RealInterceptorChain;-><init>(Ljava/util/List;ILcom/heytap/epona/Request;Lcom/heytap/epona/Call$Callback;Z)V

    .line 73
    .local v1, "chain":Lcom/heytap/epona/internal/RealInterceptorChain;
    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealInterceptorChain;->proceed()V

    .line 74
    return-void
.end method


# virtual methods
.method public asyncExecute(Lcom/heytap/epona/Call$Callback;)V
    .locals 4
    .param p1, "callback"    # Lcom/heytap/epona/Call$Callback;

    .line 57
    new-instance v0, Lcom/heytap/epona/internal/RealCall$AsyncCall;

    invoke-direct {v0, p0, p1}, Lcom/heytap/epona/internal/RealCall$AsyncCall;-><init>(Lcom/heytap/epona/internal/RealCall;Lcom/heytap/epona/Call$Callback;)V

    .line 58
    .local v0, "asyncCall":Lcom/heytap/epona/internal/RealCall$AsyncCall;
    iget-object v1, p0, Lcom/heytap/epona/internal/RealCall;->sExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const-string v1, "RealCall"

    const-string v2, "asyncExecute has been executed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/heytap/epona/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-static {}, Lcom/heytap/epona/Response;->defaultErrorResponse()Lcom/heytap/epona/Response;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/heytap/epona/Call$Callback;->onReceive(Lcom/heytap/epona/Response;)V

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/heytap/epona/internal/RealCall;->mRoute:Lcom/heytap/epona/Route;

    invoke-virtual {v1, v0}, Lcom/heytap/epona/Route;->asyncExecute(Lcom/heytap/epona/internal/RealCall$AsyncCall;)V

    .line 63
    return-void
.end method

.method public execute()Lcom/heytap/epona/Response;
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/heytap/epona/internal/RealCall;->sExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "RealCall"

    const-string v2, "execute has been executed"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/heytap/epona/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-static {}, Lcom/heytap/epona/Response;->defaultErrorResponse()Lcom/heytap/epona/Response;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/heytap/epona/internal/RealCall;->mRoute:Lcom/heytap/epona/Route;

    invoke-virtual {v0, p0}, Lcom/heytap/epona/Route;->executed(Lcom/heytap/epona/internal/RealCall;)V

    .line 47
    new-instance v0, Lcom/heytap/epona/internal/RealCall$SyncCallback;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/heytap/epona/internal/RealCall$SyncCallback;-><init>(Lcom/heytap/epona/internal/RealCall$1;)V

    .line 48
    .local v0, "callback":Lcom/heytap/epona/internal/RealCall$SyncCallback;
    invoke-direct {p0, v0, v1}, Lcom/heytap/epona/internal/RealCall;->proceedChain(Lcom/heytap/epona/Call$Callback;Z)V

    .line 49
    invoke-virtual {v0}, Lcom/heytap/epona/internal/RealCall$SyncCallback;->getResponse()Lcom/heytap/epona/Response;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object v2, p0, Lcom/heytap/epona/internal/RealCall;->mRoute:Lcom/heytap/epona/Route;

    invoke-virtual {v2, p0}, Lcom/heytap/epona/Route;->finished(Lcom/heytap/epona/internal/RealCall;)V

    .line 49
    return-object v1

    .line 51
    .end local v0    # "callback":Lcom/heytap/epona/internal/RealCall$SyncCallback;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/heytap/epona/internal/RealCall;->mRoute:Lcom/heytap/epona/Route;

    invoke-virtual {v1, p0}, Lcom/heytap/epona/Route;->finished(Lcom/heytap/epona/internal/RealCall;)V

    .line 52
    throw v0
.end method

.method public request()Lcom/heytap/epona/Request;
    .locals 1

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method
