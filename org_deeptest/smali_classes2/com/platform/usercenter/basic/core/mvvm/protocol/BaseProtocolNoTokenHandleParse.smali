.class public abstract Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;
.super Ljava/lang/Object;
.source "BaseProtocolNoTokenHandleParse.java"

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

    .line 33
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse<TResultType;TParseResultType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;->result:Landroidx/lifecycle/MutableLiveData;

    .line 34
    invoke-static {}, Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;->getInstance()Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;->appExecutors:Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;

    .line 35
    return-void
.end method

.method public static synthetic lambda$handle$11(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;)V
    .locals 5
    .param p1, "response"    # Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;

    .line 42
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse<TResultType;TParseResultType;>;"
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;->parseResponse(Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;)Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;

    move-result-object v0

    .line 45
    .local v0, "finalResponse":Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;, "Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<TResultType;>;"
    invoke-direct {p0, v0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;->processResponse(Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;)Ljava/lang/Object;

    move-result-object v1

    .line 46
    .local v1, "result":Ljava/lang/Object;, "TResultType;"
    invoke-virtual {p0, v1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;->parseCoreResponse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 47
    .local v2, "finalParseResult":Ljava/lang/Object;, "TParseResultType;"
    invoke-virtual {p0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;->shouldSaveResult()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 48
    iget-object v3, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;->appExecutors:Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;

    invoke-virtual {v3}, Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;->diskIO()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolNoTokenHandleParse$U-n5PDOg-dVtuwIDS35U0erP8Hg;

    invoke-direct {v4, p0, v2, v1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolNoTokenHandleParse$U-n5PDOg-dVtuwIDS35U0erP8Hg;-><init>(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {v1}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->success(Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;->setValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    .line 57
    .end local v0    # "finalResponse":Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;, "Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<TResultType;>;"
    .end local v1    # "result":Ljava/lang/Object;, "TResultType;"
    .end local v2    # "finalParseResult":Ljava/lang/Object;, "TParseResultType;"
    :goto_0
    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getError()Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getError()Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;

    move-result-object v0

    iget v0, v0, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;->code:I

    .line 60
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getError()Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;

    move-result-object v1

    iget-object v1, v1, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;->message:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    .line 59
    invoke-static {v0, v1, v2}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->error(ILjava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;->setValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    .line 61
    return-void

    .line 63
    :cond_2
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getCode()I

    move-result v0

    .line 64
    .local v0, "errorCode":I
    invoke-static {}, Lcom/platform/usercenter/tools/word/WordManager;->getInstance()Lcom/platform/usercenter/tools/word/WordManager;

    move-result-object v1

    sget-object v2, Lcom/platform/usercenter/BaseApp;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/platform/usercenter/tools/word/WordManager;->getString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "mes":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->error(ILjava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;->setValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    .line 67
    .end local v0    # "errorCode":I
    .end local v1    # "mes":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method public static synthetic lambda$null$10(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 49
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse<TResultType;TParseResultType;>;"
    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;->saveCallResult(Ljava/lang/Object;)V

    .line 52
    :cond_0
    invoke-static {p2}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->success(Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;->postValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    .line 53
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
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse<TResultType;TParseResultType;>;"
    .local p1, "newValue":Lcom/platform/usercenter/basic/core/mvvm/Resource;, "Lcom/platform/usercenter/basic/core/mvvm/Resource<TResultType;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;->result:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/platform/usercenter/basic/core/mvvm/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;->result:Landroidx/lifecycle/MutableLiveData;

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

    .line 122
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse<TResultType;TParseResultType;>;"
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
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse<TResultType;TParseResultType;>;"
    .local p1, "newValue":Lcom/platform/usercenter/basic/core/mvvm/Resource;, "Lcom/platform/usercenter/basic/core/mvvm/Resource<TResultType;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;->result:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/platform/usercenter/basic/core/mvvm/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;->result:Landroidx/lifecycle/MutableLiveData;

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

    .line 131
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse<TResultType;TParseResultType;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;->result:Landroidx/lifecycle/MutableLiveData;

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
            "Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<",
            "TResultType;>;>;"
        }
    .end annotation
.end method

.method public handle()V
    .locals 2

    .line 39
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse<TResultType;TParseResultType;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->loading(Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;->setValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    .line 40
    invoke-virtual {p0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;->createCall()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 41
    .local v0, "apiResponse":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<TResultType;>;>;"
    new-instance v1, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolNoTokenHandleParse$Sz5iGMiWVn3O8xMKxI5xxlWh6vA;

    invoke-direct {v1, p0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolNoTokenHandleParse$Sz5iGMiWVn3O8xMKxI5xxlWh6vA;-><init>(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 68
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

    .line 118
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse<TResultType;TParseResultType;>;"
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
            "(TParseResultType;)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse<TResultType;TParseResultType;>;"
    .local p1, "item":Ljava/lang/Object;, "TParseResultType;"
    return-void
.end method

.method protected shouldSaveResult()Z
    .locals 1

    .line 90
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolNoTokenHandleParse<TResultType;TParseResultType;>;"
    const/4 v0, 0x0

    return v0
.end method
