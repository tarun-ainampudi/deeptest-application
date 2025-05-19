.class public abstract Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;
.super Ljava/lang/Object;
.source "NetworkBoundResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        "RequestType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final appExecutors:Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;

.field private final result:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lcom/platform/usercenter/basic/core/mvvm/Resource<",
            "TResultType;>;>;"
        }
    .end annotation
.end field

.field private resultSource:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TResultType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 28
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;, "Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource<TResultType;TRequestType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    .line 29
    invoke-static {}, Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;->getInstance()Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->appExecutors:Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;

    .line 30
    invoke-virtual {p0}, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->fetchData()V

    .line 31
    return-void
.end method

.method private fetchFromNetwork(Landroidx/lifecycle/LiveData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TResultType;>;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;, "Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource<TResultType;TRequestType;>;"
    .local p1, "dbSource":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TResultType;>;"
    invoke-virtual {p0}, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->createCall()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 60
    .local v0, "apiResponse":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<Lcom/platform/usercenter/basic/core/mvvm/ApiResponse<TRequestType;>;>;"
    iget-object v1, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    new-instance v2, Lcom/platform/usercenter/basic/core/mvvm/-$$Lambda$NetworkBoundResource$QuUaLAhbTiKvKTqdpFVAjZSCnQ0;

    invoke-direct {v2, p0}, Lcom/platform/usercenter/basic/core/mvvm/-$$Lambda$NetworkBoundResource$QuUaLAhbTiKvKTqdpFVAjZSCnQ0;-><init>(Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;)V

    invoke-virtual {v1, p1, v2}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 61
    iget-object v1, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    new-instance v2, Lcom/platform/usercenter/basic/core/mvvm/-$$Lambda$NetworkBoundResource$-jY_ctJEYXDSJdoH9tL3GxYrnTA;

    invoke-direct {v2, p0, v0, p1}, Lcom/platform/usercenter/basic/core/mvvm/-$$Lambda$NetworkBoundResource$-jY_ctJEYXDSJdoH9tL3GxYrnTA;-><init>(Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 88
    return-void
.end method

.method public static synthetic lambda$fetchData$1(Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;Landroidx/lifecycle/LiveData;Ljava/lang/Object;)V
    .locals 2
    .param p2, "data"    # Ljava/lang/Object;

    .line 40
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;, "Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource<TResultType;TRequestType;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->removeSource(Landroidx/lifecycle/LiveData;)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->shouldFetch(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-direct {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->fetchFromNetwork(Landroidx/lifecycle/LiveData;)V

    goto :goto_0

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->resultSource:Landroidx/lifecycle/LiveData;

    .line 45
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    new-instance v1, Lcom/platform/usercenter/basic/core/mvvm/-$$Lambda$NetworkBoundResource$oGymLud80yiWxusmRsCLsKufzP0;

    invoke-direct {v1, p0}, Lcom/platform/usercenter/basic/core/mvvm/-$$Lambda$NetworkBoundResource$oGymLud80yiWxusmRsCLsKufzP0;-><init>(Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 47
    :goto_0
    return-void
.end method

.method public static synthetic lambda$fetchFromNetwork$2(Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;Ljava/lang/Object;)V
    .locals 1
    .param p1, "newData"    # Ljava/lang/Object;

    .line 60
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;, "Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource<TResultType;TRequestType;>;"
    invoke-static {p1}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->loading(Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->setValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    return-void
.end method

.method public static synthetic lambda$fetchFromNetwork$7(Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;)V
    .locals 1
    .param p3, "response"    # Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;

    .line 62
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;, "Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource<TResultType;TRequestType;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->removeSource(Landroidx/lifecycle/LiveData;)V

    .line 63
    iget-object p1, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MediatorLiveData;->removeSource(Landroidx/lifecycle/LiveData;)V

    .line 65
    invoke-virtual {p3}, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->appExecutors:Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;

    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;->diskIO()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/platform/usercenter/basic/core/mvvm/-$$Lambda$NetworkBoundResource$nS6wV415xCDl1LSfinCQdORN0Uk;

    invoke-direct {p2, p0, p3}, Lcom/platform/usercenter/basic/core/mvvm/-$$Lambda$NetworkBoundResource$nS6wV415xCDl1LSfinCQdORN0Uk;-><init>(Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->onFetchFailed()V

    .line 82
    iput-object p2, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->resultSource:Landroidx/lifecycle/LiveData;

    .line 83
    iget-object p1, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    iget-object p2, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->resultSource:Landroidx/lifecycle/LiveData;

    new-instance v0, Lcom/platform/usercenter/basic/core/mvvm/-$$Lambda$NetworkBoundResource$FSLg7H3jQxuw2UKxWeF5yrTPUkE;

    invoke-direct {v0, p0, p3}, Lcom/platform/usercenter/basic/core/mvvm/-$$Lambda$NetworkBoundResource$FSLg7H3jQxuw2UKxWeF5yrTPUkE;-><init>(Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 87
    :goto_0
    return-void
.end method

.method public static synthetic lambda$null$0(Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;Ljava/lang/Object;)V
    .locals 1
    .param p1, "newData"    # Ljava/lang/Object;

    .line 45
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;, "Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource<TResultType;TRequestType;>;"
    invoke-static {p1}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->success(Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->setValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    return-void
.end method

.method public static synthetic lambda$null$3(Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;Ljava/lang/Object;)V
    .locals 1
    .param p1, "newData"    # Ljava/lang/Object;

    .line 76
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;, "Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource<TResultType;TRequestType;>;"
    invoke-static {p1}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->success(Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->setValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    return-void
.end method

.method public static synthetic lambda$null$4(Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;)V
    .locals 3

    .line 74
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;, "Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource<TResultType;TRequestType;>;"
    invoke-virtual {p0}, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->loadFromDb()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->resultSource:Landroidx/lifecycle/LiveData;

    .line 75
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    iget-object v1, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->resultSource:Landroidx/lifecycle/LiveData;

    new-instance v2, Lcom/platform/usercenter/basic/core/mvvm/-$$Lambda$NetworkBoundResource$v6ZHd7PlQ1A6rVH_s7IXY9kKR-4;

    invoke-direct {v2, p0}, Lcom/platform/usercenter/basic/core/mvvm/-$$Lambda$NetworkBoundResource$v6ZHd7PlQ1A6rVH_s7IXY9kKR-4;-><init>(Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 77
    return-void
.end method

.method public static synthetic lambda$null$5(Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;)V
    .locals 1

    .line 67
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;, "Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource<TResultType;TRequestType;>;"
    invoke-virtual {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->processResponse(Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->saveCallResult(Ljava/lang/Object;)V

    .line 68
    iget-object p1, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->appExecutors:Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;

    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;->mainThread()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/platform/usercenter/basic/core/mvvm/-$$Lambda$NetworkBoundResource$yfNa1msSj_Txi5FqkjN1gnyVWpc;

    invoke-direct {v0, p0}, Lcom/platform/usercenter/basic/core/mvvm/-$$Lambda$NetworkBoundResource$yfNa1msSj_Txi5FqkjN1gnyVWpc;-><init>(Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method public static synthetic lambda$null$6(Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;Ljava/lang/Object;)V
    .locals 1
    .param p2, "newData"    # Ljava/lang/Object;

    .line 84
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;, "Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource<TResultType;TRequestType;>;"
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->getCode()I

    move-result v0

    .line 85
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-static {v0, p1, p2}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->error(ILjava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->setValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    return-void
.end method

.method private setValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/platform/usercenter/basic/core/mvvm/Resource<",
            "TResultType;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;, "Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource<TResultType;TRequestType;>;"
    .local p1, "newValue":Lcom/platform/usercenter/basic/core/mvvm/Resource;, "Lcom/platform/usercenter/basic/core/mvvm/Resource<TResultType;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/platform/usercenter/basic/core/mvvm/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public asLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/platform/usercenter/basic/core/mvvm/Resource<",
            "TResultType;>;>;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;, "Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource<TResultType;TRequestType;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    return-object v0
.end method

.method protected abstract createCall()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/platform/usercenter/basic/core/mvvm/ApiResponse<",
            "TRequestType;>;>;"
        }
    .end annotation
.end method

.method public fetchData()V
    .locals 3

    .line 34
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;, "Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource<TResultType;TRequestType;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->start(Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->resultSource:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    iget-object v1, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->resultSource:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->removeSource(Landroidx/lifecycle/LiveData;)V

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->loadFromDb()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 39
    .local v0, "dbSource":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TResultType;>;"
    iget-object v1, p0, Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    new-instance v2, Lcom/platform/usercenter/basic/core/mvvm/-$$Lambda$NetworkBoundResource$qY7lpihN_lWnPSKjKIHmHc3ZJCo;

    invoke-direct {v2, p0, v0}, Lcom/platform/usercenter/basic/core/mvvm/-$$Lambda$NetworkBoundResource$qY7lpihN_lWnPSKjKIHmHc3ZJCo;-><init>(Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 48
    return-void
.end method

.method protected abstract loadFromDb()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "TResultType;>;"
        }
    .end annotation
.end method

.method protected onFetchFailed()V
    .locals 0

    .line 91
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;, "Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource<TResultType;TRequestType;>;"
    return-void
.end method

.method protected processResponse(Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/platform/usercenter/basic/core/mvvm/ApiResponse<",
            "TRequestType;>;)TRequestType;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource;, "Lcom/platform/usercenter/basic/core/mvvm/NetworkBoundResource<TResultType;TRequestType;>;"
    .local p1, "response":Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;, "Lcom/platform/usercenter/basic/core/mvvm/ApiResponse<TRequestType;>;"
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->getBody()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract saveCallResult(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestType;)V"
        }
    .end annotation
.end method

.method protected abstract shouldFetch(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)Z"
        }
    .end annotation
.end method
