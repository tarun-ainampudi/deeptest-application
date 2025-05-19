.class public Lcom/platform/usercenter/basic/core/mvvm/ProtocolHelper;
.super Ljava/lang/Object;
.source "ProtocolHelper.java"


# instance fields
.field private final mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/platform/usercenter/basic/core/mvvm/ResourceLiveData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/ProtocolHelper;->mCache:Ljava/util/Map;

    .line 23
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/ProtocolHelper;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/platform/usercenter/basic/core/mvvm/ResourceLiveData;

    .line 46
    .local v0, "resourceLiveData":Lcom/platform/usercenter/basic/core/mvvm/ResourceLiveData;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/platform/usercenter/basic/core/mvvm/ResourceLiveData;->cancel()V

    .line 49
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/ProtocolHelper;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public runIfNotRunning(Ljava/lang/String;Landroidx/lifecycle/LiveData;)Lcom/platform/usercenter/basic/core/mvvm/ResourceLiveData;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReturnType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/platform/usercenter/basic/core/mvvm/Resource<",
            "TReturnType;>;>;)",
            "Lcom/platform/usercenter/basic/core/mvvm/ResourceLiveData<",
            "TReturnType;>;"
        }
    .end annotation

    .line 35
    .local p2, "liveData":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<Lcom/platform/usercenter/basic/core/mvvm/Resource<TReturnType;>;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/ProtocolHelper;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/platform/usercenter/basic/core/mvvm/ResourceLiveData;

    .line 36
    .local v0, "cache":Lcom/platform/usercenter/basic/core/mvvm/ResourceLiveData;, "Lcom/platform/usercenter/basic/core/mvvm/ResourceLiveData<TReturnType;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/platform/usercenter/basic/core/mvvm/ResourceLiveData;->getValue()Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/platform/usercenter/basic/core/mvvm/ResourceLiveData;->getValue()Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object v1

    iget-object v1, v1, Lcom/platform/usercenter/basic/core/mvvm/Resource;->status:Lcom/platform/usercenter/basic/core/mvvm/Status;

    invoke-static {v1}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->isLoading(Lcom/platform/usercenter/basic/core/mvvm/Status;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    return-object v0

    .line 39
    :cond_0
    new-instance v1, Lcom/platform/usercenter/basic/core/mvvm/ResourceLiveData;

    invoke-direct {v1, p0, p1, p2}, Lcom/platform/usercenter/basic/core/mvvm/ResourceLiveData;-><init>(Lcom/platform/usercenter/basic/core/mvvm/ProtocolHelper;Ljava/lang/String;Landroidx/lifecycle/LiveData;)V

    .line 40
    .local v1, "result":Lcom/platform/usercenter/basic/core/mvvm/ResourceLiveData;
    iget-object v2, p0, Lcom/platform/usercenter/basic/core/mvvm/ProtocolHelper;->mCache:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-object v1
.end method
