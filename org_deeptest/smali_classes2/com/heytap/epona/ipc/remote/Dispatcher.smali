.class public Lcom/heytap/epona/ipc/remote/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Dispatcher"

.field private static volatile sInstance:Lcom/heytap/epona/ipc/remote/Dispatcher;


# instance fields
.field private mSnapshot:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTransferBinders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/heytap/epona/ipc/remote/Dispatcher;->sInstance:Lcom/heytap/epona/ipc/remote/Dispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/heytap/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/heytap/epona/ipc/remote/Dispatcher;->mSnapshot:Ljava/util/Map;

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/heytap/epona/ipc/remote/Dispatcher;
    .locals 2

    .line 26
    sget-object v0, Lcom/heytap/epona/ipc/remote/Dispatcher;->sInstance:Lcom/heytap/epona/ipc/remote/Dispatcher;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lcom/heytap/epona/ipc/remote/Dispatcher;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/heytap/epona/ipc/remote/Dispatcher;->sInstance:Lcom/heytap/epona/ipc/remote/Dispatcher;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/heytap/epona/ipc/remote/Dispatcher;

    invoke-direct {v1}, Lcom/heytap/epona/ipc/remote/Dispatcher;-><init>()V

    sput-object v1, Lcom/heytap/epona/ipc/remote/Dispatcher;->sInstance:Lcom/heytap/epona/ipc/remote/Dispatcher;

    .line 31
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 33
    :cond_1
    :goto_0
    sget-object v0, Lcom/heytap/epona/ipc/remote/Dispatcher;->sInstance:Lcom/heytap/epona/ipc/remote/Dispatcher;

    return-object v0
.end method

.method public static synthetic lambda$registerRemoteTransfer$0(Lcom/heytap/epona/ipc/remote/Dispatcher;Ljava/lang/String;)V
    .locals 1
    .param p1, "component"    # Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/heytap/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-void
.end method

.method private updateSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/heytap/epona/ipc/remote/Dispatcher;->mSnapshot:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 55
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 57
    iget-object v1, p0, Lcom/heytap/epona/ipc/remote/Dispatcher;->mSnapshot:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method


# virtual methods
.method public findRemoteTransfer(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p1, "component"    # Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/heytap/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public registerRemoteTransfer(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 6
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "transferBinder"    # Landroid/os/IBinder;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    move v1, v0

    .line 39
    .local v1, "registerSuccess":Z
    :try_start_0
    new-instance v2, Lcom/heytap/epona/ipc/remote/-$$Lambda$Dispatcher$xwKbTz25w8_t8CTfE3iAJ9CbLHU;

    invoke-direct {v2, p0, p1}, Lcom/heytap/epona/ipc/remote/-$$Lambda$Dispatcher$xwKbTz25w8_t8CTfE3iAJ9CbLHU;-><init>(Lcom/heytap/epona/ipc/remote/Dispatcher;Ljava/lang/String;)V

    invoke-interface {p2, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iget-object v2, p0, Lcom/heytap/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    :goto_0
    iget-object v2, p0, Lcom/heytap/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-direct {p0, p1, p3}, Lcom/heytap/epona/ipc/remote/Dispatcher;->updateSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x1

    goto :goto_1

    .line 43
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 40
    :catch_0
    move-exception v2

    .line 41
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Dispatcher"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/heytap/epona/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .end local v2    # "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/heytap/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    :goto_1
    const-string v2, "Dispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerRemoteTransfer: registerSuccess:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/heytap/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    return v1

    .line 43
    :goto_2
    iget-object v2, p0, Lcom/heytap/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 44
    iget-object v2, p0, Lcom/heytap/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-direct {p0, p1, p3}, Lcom/heytap/epona/ipc/remote/Dispatcher;->updateSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x1

    .line 48
    :cond_1
    throw v0
.end method

.method public snapshot()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/heytap/epona/ipc/remote/Dispatcher;->mSnapshot:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
