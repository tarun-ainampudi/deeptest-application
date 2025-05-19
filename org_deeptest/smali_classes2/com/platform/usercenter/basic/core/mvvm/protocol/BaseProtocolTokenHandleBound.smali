.class public abstract Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;
.super Ljava/lang/Object;
.source "BaseProtocolTokenHandleBound.java"

# interfaces
.implements Lcom/platform/usercenter/basic/core/mvvm/protocol/ProtocolCommand;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        "RequestType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/platform/usercenter/basic/core/mvvm/protocol/ProtocolCommand<",
        "TResultType;>;"
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
.method protected constructor <init>()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 38
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound<TResultType;TRequestType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->result:Landroidx/lifecycle/MediatorLiveData;

    .line 39
    invoke-static {}, Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;->getInstance()Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->appExecutors:Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;

    .line 40
    return-void
.end method

.method private fetchData()V
    .locals 3

    .line 48
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound<TResultType;TRequestType;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->result:Landroidx/lifecycle/MediatorLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->start(Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->resultSource:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->result:Landroidx/lifecycle/MediatorLiveData;

    iget-object v1, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->resultSource:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->removeSource(Landroidx/lifecycle/LiveData;)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->loadFromDb()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 53
    .local v0, "dbSource":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TResultType;>;"
    iget-object v1, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->result:Landroidx/lifecycle/MediatorLiveData;

    new-instance v2, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleBound$0b_W_PrwNo0vtQVmhtlF_GwciNs;

    invoke-direct {v2, p0, v0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleBound$0b_W_PrwNo0vtQVmhtlF_GwciNs;-><init>(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 62
    return-void
.end method

.method private fetchFromNetwork(Landroidx/lifecycle/LiveData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TResultType;>;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound<TResultType;TRequestType;>;"
    .local p1, "dbSource":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TResultType;>;"
    invoke-virtual {p0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->getSecondaryToken()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 73
    .local v0, "user":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<Ljava/lang/String;>;"
    new-instance v1, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleBound$ih9JMwaUSLDL1YBpF8wUlvBOVGg;

    invoke-direct {v1, p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleBound$ih9JMwaUSLDL1YBpF8wUlvBOVGg;-><init>(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 116
    return-void
.end method

.method public static synthetic lambda$fetchData$19(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;Landroidx/lifecycle/LiveData;Ljava/lang/Object;)V
    .locals 2
    .param p2, "data"    # Ljava/lang/Object;

    .line 54
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound<TResultType;TRequestType;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->result:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->removeSource(Landroidx/lifecycle/LiveData;)V

    .line 55
    invoke-virtual {p0, p2}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->shouldFetch(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->fetchFromNetwork(Landroidx/lifecycle/LiveData;)V

    goto :goto_0

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->resultSource:Landroidx/lifecycle/LiveData;

    .line 59
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->result:Landroidx/lifecycle/MediatorLiveData;

    new-instance v1, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleBound$SZn7PZJtopMgsSjRUr97fheSMEI;

    invoke-direct {v1, p0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleBound$SZn7PZJtopMgsSjRUr97fheSMEI;-><init>(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 61
    :goto_0
    return-void
.end method

.method public static synthetic lambda$fetchFromNetwork$26(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;Landroidx/lifecycle/LiveData;Ljava/lang/String;)V
    .locals 3
    .param p2, "entity"    # Ljava/lang/String;

    .line 74
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound<TResultType;TRequestType;>;"
    invoke-virtual {p0, p2}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->createCall(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 76
    .local v0, "apiResponse":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<TRequestType;>;>;"
    iget-object v1, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->result:Landroidx/lifecycle/MediatorLiveData;

    new-instance v2, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleBound$5cwxxnU4Yl77aDp1ER6FVBNKr14;

    invoke-direct {v2, p0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleBound$5cwxxnU4Yl77aDp1ER6FVBNKr14;-><init>(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;)V

    invoke-virtual {v1, p1, v2}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 77
    iget-object v1, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->result:Landroidx/lifecycle/MediatorLiveData;

    new-instance v2, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleBound$9d3BTlK_vbhCXPQmvpmjtnVB8f8;

    invoke-direct {v2, p0, v0, p1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleBound$9d3BTlK_vbhCXPQmvpmjtnVB8f8;-><init>(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 115
    return-void
.end method

.method public static synthetic lambda$null$18(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;Ljava/lang/Object;)V
    .locals 1
    .param p1, "newData"    # Ljava/lang/Object;

    .line 59
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound<TResultType;TRequestType;>;"
    invoke-static {p1}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->success(Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->setValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    return-void
.end method

.method public static synthetic lambda$null$20(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;Ljava/lang/Object;)V
    .locals 1
    .param p1, "newData"    # Ljava/lang/Object;

    .line 76
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound<TResultType;TRequestType;>;"
    invoke-static {p1}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->loading(Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->setValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    return-void
.end method

.method public static synthetic lambda$null$21(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;Ljava/lang/Object;)V
    .locals 1
    .param p1, "newData"    # Ljava/lang/Object;

    .line 93
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound<TResultType;TRequestType;>;"
    invoke-static {p1}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->success(Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->setValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    return-void
.end method

.method public static synthetic lambda$null$22(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;)V
    .locals 3

    .line 91
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound<TResultType;TRequestType;>;"
    invoke-virtual {p0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->loadFromDb()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->resultSource:Landroidx/lifecycle/LiveData;

    .line 92
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->result:Landroidx/lifecycle/MediatorLiveData;

    iget-object v1, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->resultSource:Landroidx/lifecycle/LiveData;

    new-instance v2, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleBound$HNTYryA-szthpxsQr2JG0AsuMHU;

    invoke-direct {v2, p0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleBound$HNTYryA-szthpxsQr2JG0AsuMHU;-><init>(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 94
    return-void
.end method

.method public static synthetic lambda$null$23(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;)V
    .locals 1

    .line 83
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound<TResultType;TRequestType;>;"
    invoke-virtual {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->processResponse(Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->saveCallResult(Ljava/lang/Object;)V

    .line 84
    iget-object p1, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->appExecutors:Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;

    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;->mainThread()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleBound$koGXSIl-exjuYJi12u5ScgNZvJA;

    invoke-direct {v0, p0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleBound$koGXSIl-exjuYJi12u5ScgNZvJA;-><init>(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public static synthetic lambda$null$24(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;Ljava/lang/Object;)V
    .locals 5
    .param p2, "newData"    # Ljava/lang/Object;

    .line 101
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound<TResultType;TRequestType;>;"
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getError()Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 103
    nop

    .line 104
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getError()Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;

    move-result-object v0

    iget v0, v0, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;->code:I

    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getError()Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;

    move-result-object p1

    iget-object p1, p1, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;->message:Ljava/lang/String;

    .line 103
    invoke-static {v0, p1, v1}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->error(ILjava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->setValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    .line 105
    return-void

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getCode()I

    move-result v0

    .line 109
    .local v0, "errorCode":I
    invoke-static {}, Lcom/platform/usercenter/tools/word/WordManager;->getInstance()Lcom/platform/usercenter/tools/word/WordManager;

    move-result-object v2

    sget-object v3, Lcom/platform/usercenter/BaseApp;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-virtual {v2, v3, v0, v4}, Lcom/platform/usercenter/tools/word/WordManager;->getString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "mes":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getCode()I

    move-result p1

    invoke-static {p1, v2, v1}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->error(ILjava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->setValue(Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    .line 112
    return-void
.end method

.method public static synthetic lambda$null$25(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;)V
    .locals 1
    .param p3, "response"    # Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;

    .line 78
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound<TResultType;TRequestType;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->result:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->removeSource(Landroidx/lifecycle/LiveData;)V

    .line 79
    iget-object p1, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->result:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MediatorLiveData;->removeSource(Landroidx/lifecycle/LiveData;)V

    .line 81
    invoke-virtual {p3}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->appExecutors:Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;

    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/AppExecutors;->diskIO()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleBound$yoPKYVZztZkXx30icR1QmXV8uSo;

    invoke-direct {p2, p0, p3}, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleBound$yoPKYVZztZkXx30icR1QmXV8uSo;-><init>(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->onFetchFailed()V

    .line 99
    iput-object p2, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->resultSource:Landroidx/lifecycle/LiveData;

    .line 100
    iget-object p1, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->result:Landroidx/lifecycle/MediatorLiveData;

    iget-object p2, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->resultSource:Landroidx/lifecycle/LiveData;

    new-instance v0, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleBound$6Y7USsyzVBgKcoWNo1yrH-R0kc8;

    invoke-direct {v0, p0, p3}, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleBound$6Y7USsyzVBgKcoWNo1yrH-R0kc8;-><init>(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 114
    :goto_0
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

    .line 66
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound<TResultType;TRequestType;>;"
    .local p1, "newValue":Lcom/platform/usercenter/basic/core/mvvm/Resource;, "Lcom/platform/usercenter/basic/core/mvvm/Resource<TResultType;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->result:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/platform/usercenter/basic/core/mvvm/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->result:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 69
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

    .line 123
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound<TResultType;TRequestType;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->result:Landroidx/lifecycle/MediatorLiveData;

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
            "TRequestType;>;>;"
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
    .locals 0

    .line 44
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound<TResultType;TRequestType;>;"
    invoke-direct {p0}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->fetchData()V

    .line 45
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

    .line 119
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound<TResultType;TRequestType;>;"
    return-void
.end method

.method protected processResponse(Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<",
            "TRequestType;>;)TRequestType;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;, "Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound<TResultType;TRequestType;>;"
    .local p1, "response":Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;, "Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<TRequestType;>;"
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getData()Ljava/lang/Object;

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
