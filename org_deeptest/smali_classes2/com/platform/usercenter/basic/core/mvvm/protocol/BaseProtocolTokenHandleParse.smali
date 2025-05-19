.class public abstract Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;
.super Ljava/lang/Object;
.source "BaseProtocolTokenHandleParse.java"

# interfaces
.implements Lcom/platform/usercenter/basic/core/mvvm/protocol/ProtocolCommand;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        "ParseResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/platform/usercenter/basic/core/mvvm/protocol/ProtocolCommand<",
        "TParseResultType;>;"
    }
.end annotation


# instance fields
.field private final appExecutors:Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;

.field private result:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/platform/usercenter/basic/core/mvvm/Resource<",
            "TParseResultType;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 32
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse<TResultType;TParseResultType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;->result:Landroidx/lifecycle/MutableLiveData;

    .line 33
    invoke-static {}, Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;->getInstance()Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;->appExecutors:Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;

    .line 34
    return-void
.end method

.method public static synthetic lambda$handle$17(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;Ljava/lang/String;)V
    .locals 2
    .param p1, "secondaryToken"    # Ljava/lang/String;

    .line 41
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse<TResultType;TParseResultType;>;"
    invoke-virtual {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;->createCall(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 42
    .local v0, "apiResponse":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<TResultType;>;>;"
    new-instance v1, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleParse$kffyZt4H-ziknlhuu54aJ06Jst4;

    invoke-direct {v1, p0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleParse$kffyZt4H-ziknlhuu54aJ06Jst4;-><init>(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 71
    return-void
.end method

.method public static synthetic lambda$null$15(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 50
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse<TResultType;TParseResultType;>;"
    invoke-virtual {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;->saveCallResult(Ljava/lang/Object;)V

    .line 51
    invoke-static {p2}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->success(Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;->postValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    .line 52
    return-void
.end method

.method public static synthetic lambda$null$16(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;)V
    .locals 6
    .param p1, "response"    # Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;

    .line 43
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse<TResultType;TParseResultType;>;"
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;->parseResponse(Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;)Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;

    move-result-object v0

    .line 46
    .local v0, "finalResponse":Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;, "Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<TResultType;>;"
    invoke-direct {p0, v0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;->processResponse(Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;)Ljava/lang/Object;

    move-result-object v1

    .line 47
    .local v1, "result":Ljava/lang/Object;, "TResultType;"
    invoke-virtual {p0, v1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;->parseCoreResponse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 48
    .local v2, "finalParseResult":Ljava/lang/Object;, "TParseResultType;"
    invoke-virtual {p0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;->shouldSaveResult()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 49
    iget-object v3, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;->appExecutors:Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;

    invoke-virtual {v3}, Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;->diskIO()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleParse$0P6HkJoZSc-3bq--Ec8LeNxNTv0;

    invoke-direct {v4, p0, v1, v2}, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleParse$0P6HkJoZSc-3bq--Ec8LeNxNTv0;-><init>(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {v2}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->success(Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;->setValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    .line 56
    .end local v0    # "finalResponse":Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;, "Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<TResultType;>;"
    .end local v1    # "result":Ljava/lang/Object;, "TResultType;"
    .end local v2    # "finalParseResult":Ljava/lang/Object;, "TParseResultType;"
    :goto_0
    goto :goto_1

    .line 57
    :cond_1
    invoke-direct {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;->processResponse(Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    .local v0, "result":Ljava/lang/Object;, "TResultType;"
    invoke-virtual {p0, v0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;->parseCoreResponse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 59
    .local v1, "finalParseResult":Ljava/lang/Object;, "TParseResultType;"
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getError()Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 60
    nop

    .line 61
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getError()Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;

    move-result-object v2

    iget v2, v2, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;->code:I

    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getError()Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;

    move-result-object v3

    iget-object v3, v3, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;->message:Ljava/lang/String;

    .line 60
    invoke-static {v2, v3, v1}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->error(ILjava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;->setValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    .line 63
    return-void

    .line 65
    :cond_2
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getCode()I

    move-result v2

    .line 66
    .local v2, "errorCode":I
    invoke-static {}, Lcom/platform/usercenter/tools/word/WordManager;->getInstance()Lcom/platform/usercenter/tools/word/WordManager;

    move-result-object v3

    sget-object v4, Lcom/platform/usercenter/BaseApp;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-virtual {v3, v4, v2, v5}, Lcom/platform/usercenter/tools/word/WordManager;->getString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "mes":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getCode()I

    move-result v4

    invoke-static {v4, v3, v1}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->error(ILjava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;->setValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    .line 70
    .end local v0    # "result":Ljava/lang/Object;, "TResultType;"
    .end local v1    # "finalParseResult":Ljava/lang/Object;, "TParseResultType;"
    .end local v2    # "errorCode":I
    .end local v3    # "mes":Ljava/lang/String;
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
            "TParseResultType;>;)V"
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse<TResultType;TParseResultType;>;"
    .local p1, "newValue":Lcom/platform/usercenter/basic/core/mvvm/Resource;, "Lcom/platform/usercenter/basic/core/mvvm/Resource<TParseResultType;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;->result:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/platform/usercenter/basic/core/mvvm/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;->result:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 86
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

    .line 126
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse<TResultType;TParseResultType;>;"
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
            "TParseResultType;>;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse<TResultType;TParseResultType;>;"
    .local p1, "newValue":Lcom/platform/usercenter/basic/core/mvvm/Resource;, "Lcom/platform/usercenter/basic/core/mvvm/Resource<TParseResultType;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;->result:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/platform/usercenter/basic/core/mvvm/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;->result:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 79
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
            "TParseResultType;>;>;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse<TResultType;TParseResultType;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;->result:Landroidx/lifecycle/MutableLiveData;

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
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse<TResultType;TParseResultType;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->loading(Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;->setValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    .line 39
    invoke-virtual {p0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;->getSecondaryToken()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 40
    .local v0, "user":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<Ljava/lang/String;>;"
    new-instance v1, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleParse$ut3hOHiGpfLASgJ5w01baZ7Xks8;

    invoke-direct {v1, p0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleParse$ut3hOHiGpfLASgJ5w01baZ7Xks8;-><init>(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 72
    return-void
.end method

.method protected abstract parseCoreResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)TParseResultType;"
        }
    .end annotation
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

    .line 122
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse<TResultType;TParseResultType;>;"
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

    .line 105
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse<TResultType;TParseResultType;>;"
    .local p1, "item":Ljava/lang/Object;, "TResultType;"
    return-void
.end method

.method protected shouldSaveResult()Z
    .locals 1

    .line 94
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleParse<TResultType;TParseResultType;>;"
    const/4 v0, 0x0

    return v0
.end method
