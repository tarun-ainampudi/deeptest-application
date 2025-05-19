.class Lcom/heytap/epona/internal/RealInterceptorChain;
.super Ljava/lang/Object;
.source "RealInterceptorChain.java"

# interfaces
.implements Lcom/heytap/epona/Interceptor$Chain;


# instance fields
.field private final mCallback:Lcom/heytap/epona/Call$Callback;

.field private final mIndex:I

.field private final mInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/heytap/epona/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsAsync:Z

.field private final mRequest:Lcom/heytap/epona/Request;


# direct methods
.method constructor <init>(Ljava/util/List;ILcom/heytap/epona/Request;Lcom/heytap/epona/Call$Callback;Z)V
    .locals 1
    .param p2, "index"    # I
    .param p3, "request"    # Lcom/heytap/epona/Request;
    .param p4, "callback"    # Lcom/heytap/epona/Call$Callback;
    .param p5, "isAsync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/heytap/epona/Interceptor;",
            ">;I",
            "Lcom/heytap/epona/Request;",
            "Lcom/heytap/epona/Call$Callback;",
            "Z)V"
        }
    .end annotation

    .line 19
    .local p1, "interceptors":Ljava/util/List;, "Ljava/util/List<Lcom/heytap/epona/Interceptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heytap/epona/internal/RealInterceptorChain;->mInterceptors:Ljava/util/List;

    .line 21
    iget-object v0, p0, Lcom/heytap/epona/internal/RealInterceptorChain;->mInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    iput p2, p0, Lcom/heytap/epona/internal/RealInterceptorChain;->mIndex:I

    .line 23
    iput-object p3, p0, Lcom/heytap/epona/internal/RealInterceptorChain;->mRequest:Lcom/heytap/epona/Request;

    .line 24
    iput-object p4, p0, Lcom/heytap/epona/internal/RealInterceptorChain;->mCallback:Lcom/heytap/epona/Call$Callback;

    .line 25
    iput-boolean p5, p0, Lcom/heytap/epona/internal/RealInterceptorChain;->mIsAsync:Z

    .line 26
    return-void
.end method

.method private fork(I)Lcom/heytap/epona/internal/RealInterceptorChain;
    .locals 7
    .param p1, "index"    # I

    .line 55
    new-instance v6, Lcom/heytap/epona/internal/RealInterceptorChain;

    iget-object v1, p0, Lcom/heytap/epona/internal/RealInterceptorChain;->mInterceptors:Ljava/util/List;

    iget-object v3, p0, Lcom/heytap/epona/internal/RealInterceptorChain;->mRequest:Lcom/heytap/epona/Request;

    iget-object v4, p0, Lcom/heytap/epona/internal/RealInterceptorChain;->mCallback:Lcom/heytap/epona/Call$Callback;

    iget-boolean v5, p0, Lcom/heytap/epona/internal/RealInterceptorChain;->mIsAsync:Z

    move-object v0, v6

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/heytap/epona/internal/RealInterceptorChain;-><init>(Ljava/util/List;ILcom/heytap/epona/Request;Lcom/heytap/epona/Call$Callback;Z)V

    return-object v6
.end method


# virtual methods
.method public callback()Lcom/heytap/epona/Call$Callback;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/heytap/epona/internal/RealInterceptorChain;->mCallback:Lcom/heytap/epona/Call$Callback;

    return-object v0
.end method

.method public isAsync()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/heytap/epona/internal/RealInterceptorChain;->mIsAsync:Z

    return v0
.end method

.method public proceed()V
    .locals 3

    .line 45
    iget v0, p0, Lcom/heytap/epona/internal/RealInterceptorChain;->mIndex:I

    iget-object v1, p0, Lcom/heytap/epona/internal/RealInterceptorChain;->mInterceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 46
    iget v0, p0, Lcom/heytap/epona/internal/RealInterceptorChain;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/heytap/epona/internal/RealInterceptorChain;->fork(I)Lcom/heytap/epona/internal/RealInterceptorChain;

    move-result-object v0

    .line 47
    .local v0, "next":Lcom/heytap/epona/Interceptor$Chain;
    iget-object v1, p0, Lcom/heytap/epona/internal/RealInterceptorChain;->mInterceptors:Ljava/util/List;

    iget v2, p0, Lcom/heytap/epona/internal/RealInterceptorChain;->mIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/epona/Interceptor;

    .line 48
    .local v1, "interceptor":Lcom/heytap/epona/Interceptor;
    invoke-interface {v1, v0}, Lcom/heytap/epona/Interceptor;->intercept(Lcom/heytap/epona/Interceptor$Chain;)V

    .line 49
    .end local v0    # "next":Lcom/heytap/epona/Interceptor$Chain;
    .end local v1    # "interceptor":Lcom/heytap/epona/Interceptor;
    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/heytap/epona/internal/RealInterceptorChain;->mCallback:Lcom/heytap/epona/Call$Callback;

    invoke-static {}, Lcom/heytap/epona/Response;->defaultErrorResponse()Lcom/heytap/epona/Response;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/heytap/epona/Call$Callback;->onReceive(Lcom/heytap/epona/Response;)V

    .line 52
    :goto_0
    return-void
.end method

.method public request()Lcom/heytap/epona/Request;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/heytap/epona/internal/RealInterceptorChain;->mRequest:Lcom/heytap/epona/Request;

    return-object v0
.end method
