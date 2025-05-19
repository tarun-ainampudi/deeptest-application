.class public abstract Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;
.super Ljava/lang/Object;
.source "BaseProtocolTokenHandle.java"

# interfaces
.implements Lcom/platform/usercenter/basic/core/mvvm/protocol/ProtocolCommand;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/platform/usercenter/basic/core/mvvm/protocol/ProtocolCommand<",
        "TResultType;>;"
    }
.end annotation


# instance fields
.field private final appExecutors:Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;

.field private result:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/platform/usercenter/basic/core/mvvm/Resource<",
            "TResultType;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 32
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle<TResultType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;->result:Landroidx/lifecycle/MutableLiveData;

    .line 33
    invoke-static {}, Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;->getInstance()Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;->appExecutors:Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;

    .line 34
    return-void
.end method

.method public static synthetic lambda$handle$14(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;Ljava/lang/String;)V
    .locals 2
    .param p1, "secondaryToken"    # Ljava/lang/String;

    .line 41
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle<TResultType;>;"
    invoke-virtual {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;->createCall(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 42
    .local v0, "apiResponse":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<TResultType;>;>;"
    new-instance v1, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandle$IJr83jVaCzMzSlQc9TqSBTreFMo;

    invoke-direct {v1, p0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandle$IJr83jVaCzMzSlQc9TqSBTreFMo;-><init>(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 67
    return-void
.end method

.method public static synthetic lambda$null$12(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;Ljava/lang/Object;)V
    .locals 0

    .line 49
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle<TResultType;>;"
    invoke-virtual {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;->saveCallResult(Ljava/lang/Object;)V

    .line 50
    invoke-static {p1}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->success(Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;->postValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    .line 51
    return-void
.end method

.method public static synthetic lambda$null$13(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;)V
    .locals 4
    .param p1, "response"    # Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;

    .line 43
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle<TResultType;>;"
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;->parseResponse(Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;)Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;

    move-result-object v0

    .line 46
    .local v0, "finalResponse":Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;, "Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<TResultType;>;"
    invoke-direct {p0, v0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;->processResponse(Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;)Ljava/lang/Object;

    move-result-object v1

    .line 47
    .local v1, "result":Ljava/lang/Object;, "TResultType;"
    invoke-virtual {p0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;->shouldSaveResult()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 48
    iget-object v2, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;->appExecutors:Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;

    invoke-virtual {v2}, Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;->diskIO()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandle$sAez7cFsyhfhjguMu3P4TODJ1u4;

    invoke-direct {v3, p0, v1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandle$sAez7cFsyhfhjguMu3P4TODJ1u4;-><init>(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {v1}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->success(Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;->setValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    .line 55
    .end local v0    # "finalResponse":Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;, "Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<TResultType;>;"
    .end local v1    # "result":Ljava/lang/Object;, "TResultType;"
    :goto_0
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getError()Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getError()Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;

    move-result-object v0

    iget v0, v0, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;->code:I

    .line 58
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getError()Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;

    move-result-object v1

    iget-object v1, v1, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;->message:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    .line 57
    invoke-static {v0, v1, v2}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->error(ILjava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;->setValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    .line 59
    return-void

    .line 61
    :cond_2
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getCode()I

    move-result v0

    .line 62
    .local v0, "errorCode":I
    invoke-static {}, Lcom/platform/usercenter/tools/word/WordManager;->getInstance()Lcom/platform/usercenter/tools/word/WordManager;

    move-result-object v1

    sget-object v2, Lcom/platform/usercenter/BaseApp;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {v1, v2, v0, v3}, Lcom/platform/usercenter/tools/word/WordManager;->getString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "mes":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->error(ILjava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;->setValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    .line 66
    .end local v0    # "errorCode":I
    .end local v1    # "mes":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method private postValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/platform/usercenter/basic/core/mvvm/Resource<",
            "TResultType;>;)V"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle<TResultType;>;"
    .local p1, "newValue":Lcom/platform/usercenter/basic/core/mvvm/Resource;, "Lcom/platform/usercenter/basic/core/mvvm/Resource<TResultType;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;->result:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/platform/usercenter/basic/core/mvvm/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;->result:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 82
    :cond_0
    return-void
.end method

.method private processResponse(Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<",
            "TResultType;>;)TResultType;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle<TResultType;>;"
    .local p1, "response":Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;, "Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<TResultType;>;"
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 72
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle<TResultType;>;"
    .local p1, "newValue":Lcom/platform/usercenter/basic/core/mvvm/Resource;, "Lcom/platform/usercenter/basic/core/mvvm/Resource<TResultType;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;->result:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/platform/usercenter/basic/core/mvvm/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;->result:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 75
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

    .line 132
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle<TResultType;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;->result:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method protected abstract createCall(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<",
            "TResultType;>;>;"
        }
    .end annotation
.end method

.method protected abstract getSecondaryToken()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public handle()V
    .locals 2

    .line 38
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle<TResultType;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->loading(Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;->setValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    .line 39
    invoke-virtual {p0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;->getSecondaryToken()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 40
    .local v0, "user":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<Ljava/lang/String;>;"
    new-instance v1, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandle$dbxHkMbgcHd6ls98_YlsKtcQXo4;

    invoke-direct {v1, p0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandle$dbxHkMbgcHd6ls98_YlsKtcQXo4;-><init>(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 68
    return-void
.end method

.method protected parseResponse(Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;)Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<",
            "TResultType;>;)",
            "Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<",
            "TResultType;>;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle<TResultType;>;"
    .local p1, "response":Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;, "Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<TResultType;>;"
    return-object p1
.end method

.method protected saveCallResult(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle<TResultType;>;"
    .local p1, "item":Ljava/lang/Object;, "TResultType;"
    return-void
.end method

.method protected shouldSaveResult()Z
    .locals 1

    .line 90
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle<TResultType;>;"
    const/4 v0, 0x0

    return v0
.end method
