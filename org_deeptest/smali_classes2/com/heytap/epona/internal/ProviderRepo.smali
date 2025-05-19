.class public Lcom/heytap/epona/internal/ProviderRepo;
.super Ljava/lang/Object;
.source "ProviderRepo.java"

# interfaces
.implements Lcom/heytap/epona/Repo;


# static fields
.field private static final TAG:Ljava/lang/String; = "ProviderRepo"


# instance fields
.field private final mDynamicProviders:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/heytap/epona/DynamicProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviders:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/heytap/epona/provider/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/heytap/epona/internal/ProviderRepo;->mDynamicProviders:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/heytap/epona/internal/ProviderRepo;->mProviders:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private isValid(Lcom/heytap/epona/DynamicProvider;)Z
    .locals 1
    .param p1, "provider"    # Lcom/heytap/epona/DynamicProvider;

    .line 19
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/heytap/epona/DynamicProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValid(Lcom/heytap/epona/provider/ProviderInfo;)Z
    .locals 1
    .param p1, "provider"    # Lcom/heytap/epona/provider/ProviderInfo;

    .line 23
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/heytap/epona/provider/ProviderInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public findProvider(Ljava/lang/String;)Lcom/heytap/epona/DynamicProvider;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/heytap/epona/internal/ProviderRepo;->mDynamicProviders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heytap/epona/DynamicProvider;

    return-object v0
.end method

.method public findProviderProviderInfo(Ljava/lang/String;)Lcom/heytap/epona/provider/ProviderInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/heytap/epona/internal/ProviderRepo;->mProviders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heytap/epona/provider/ProviderInfo;

    return-object v0
.end method

.method public registerProvider(Lcom/heytap/epona/DynamicProvider;)V
    .locals 5
    .param p1, "provider"    # Lcom/heytap/epona/DynamicProvider;

    .line 28
    invoke-direct {p0, p1}, Lcom/heytap/epona/internal/ProviderRepo;->isValid(Lcom/heytap/epona/DynamicProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "ProviderRepo"

    const-string v1, "register dynamic provider %s needIPC = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/heytap/epona/DynamicProvider;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {p1}, Lcom/heytap/epona/DynamicProvider;->needIPC()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/heytap/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/heytap/epona/internal/ProviderRepo;->mDynamicProviders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/heytap/epona/DynamicProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-interface {p1}, Lcom/heytap/epona/DynamicProvider;->needIPC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/heytap/epona/ipc/local/RemoteTransfer;->getInstance()Lcom/heytap/epona/ipc/local/RemoteTransfer;

    move-result-object v0

    invoke-interface {p1}, Lcom/heytap/epona/DynamicProvider;->getName()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/heytap/epona/ipc/local/RemoteTransfer;->registerToRemote(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method

.method public registerProviderInfo(Lcom/heytap/epona/provider/ProviderInfo;)V
    .locals 5
    .param p1, "provider"    # Lcom/heytap/epona/provider/ProviderInfo;

    .line 53
    invoke-direct {p0, p1}, Lcom/heytap/epona/internal/ProviderRepo;->isValid(Lcom/heytap/epona/provider/ProviderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "ProviderRepo"

    const-string v1, "register static provider %s needIPC = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/heytap/epona/provider/ProviderInfo;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/heytap/epona/provider/ProviderInfo;->needIPC()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/heytap/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/heytap/epona/internal/ProviderRepo;->mProviders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/heytap/epona/provider/ProviderInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {p1}, Lcom/heytap/epona/provider/ProviderInfo;->needIPC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/heytap/epona/ipc/local/RemoteTransfer;->getInstance()Lcom/heytap/epona/ipc/local/RemoteTransfer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/heytap/epona/provider/ProviderInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/heytap/epona/provider/ProviderInfo;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heytap/epona/ipc/local/RemoteTransfer;->registerToRemote(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method public requestSnapshot(Lcom/heytap/epona/Repo$SnapshotCallBack;)V
    .locals 2
    .param p1, "callBack"    # Lcom/heytap/epona/Repo$SnapshotCallBack;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DynamicProvider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/epona/internal/ProviderRepo;->mDynamicProviders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nStaticProvider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/epona/internal/ProviderRepo;->mProviders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "snapshotBuilder":Ljava/lang/String;
    invoke-interface {p1, v0}, Lcom/heytap/epona/Repo$SnapshotCallBack;->onRequestSnapshot(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public unRegisterProvider(Lcom/heytap/epona/DynamicProvider;)V
    .locals 5
    .param p1, "provider"    # Lcom/heytap/epona/DynamicProvider;

    .line 40
    invoke-direct {p0, p1}, Lcom/heytap/epona/internal/ProviderRepo;->isValid(Lcom/heytap/epona/DynamicProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "ProviderRepo"

    const-string v1, "unregister dynamic provider %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/heytap/epona/DynamicProvider;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/heytap/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/heytap/epona/internal/ProviderRepo;->mDynamicProviders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/heytap/epona/DynamicProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
    return-void
.end method

.method public unRegisterProviderInfo(Lcom/heytap/epona/provider/ProviderInfo;)V
    .locals 5
    .param p1, "provider"    # Lcom/heytap/epona/provider/ProviderInfo;

    .line 64
    invoke-direct {p0, p1}, Lcom/heytap/epona/internal/ProviderRepo;->isValid(Lcom/heytap/epona/provider/ProviderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "ProviderRepo"

    const-string v1, "unregister static provider %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/heytap/epona/provider/ProviderInfo;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/heytap/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/heytap/epona/internal/ProviderRepo;->mProviders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/heytap/epona/provider/ProviderInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    return-void
.end method
