.class public Lcom/heytap/epona/Epona;
.super Ljava/lang/Object;
.source "Epona.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Epona"

.field private static final mLock:Ljava/lang/Object;

.field private static sInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sInstance:Lcom/heytap/epona/Epona;


# instance fields
.field private mActivityStackManager:Lcom/heytap/epona/internal/ActivityStackManager;

.field private mApp:Landroid/app/Application;

.field private mContext:Landroid/content/Context;

.field private final mInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/heytap/epona/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private mRepo:Lcom/heytap/epona/Repo;

.field private mRoute:Lcom/heytap/epona/Route;

.field private mSnapshot:Lcom/heytap/epona/internal/Snapshot;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/heytap/epona/Epona;->mLock:Ljava/lang/Object;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/heytap/epona/Epona;->sInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heytap/epona/Epona;->mInterceptors:Ljava/util/List;

    .line 36
    new-instance v0, Lcom/heytap/epona/internal/ProviderRepo;

    invoke-direct {v0}, Lcom/heytap/epona/internal/ProviderRepo;-><init>()V

    iput-object v0, p0, Lcom/heytap/epona/Epona;->mRepo:Lcom/heytap/epona/Repo;

    .line 37
    new-instance v0, Lcom/heytap/epona/Route;

    invoke-direct {v0}, Lcom/heytap/epona/Route;-><init>()V

    iput-object v0, p0, Lcom/heytap/epona/Epona;->mRoute:Lcom/heytap/epona/Route;

    .line 38
    new-instance v0, Lcom/heytap/epona/internal/LoggerSnapshot;

    invoke-direct {v0}, Lcom/heytap/epona/internal/LoggerSnapshot;-><init>()V

    iput-object v0, p0, Lcom/heytap/epona/Epona;->mSnapshot:Lcom/heytap/epona/internal/Snapshot;

    .line 39
    new-instance v0, Lcom/heytap/epona/internal/ActivityStackManager;

    invoke-direct {v0}, Lcom/heytap/epona/internal/ActivityStackManager;-><init>()V

    iput-object v0, p0, Lcom/heytap/epona/Epona;->mActivityStackManager:Lcom/heytap/epona/internal/ActivityStackManager;

    .line 40
    return-void
.end method

.method public static addInterceptor(Lcom/heytap/epona/Interceptor;)Z
    .locals 5
    .param p0, "interceptor"    # Lcom/heytap/epona/Interceptor;

    .line 53
    if-eqz p0, :cond_1

    .line 57
    invoke-static {}, Lcom/heytap/epona/Epona;->getInstance()Lcom/heytap/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/epona/Epona;->mInterceptors:Ljava/util/List;

    .line 58
    .local v0, "interceptors":Ljava/util/List;, "Ljava/util/List<Lcom/heytap/epona/Interceptor;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const-string v1, "Epona"

    const-string v2, "interceptor has been add twice"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/heytap/epona/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return v3

    .line 62
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 54
    .end local v0    # "interceptors":Ljava/util/List;, "Ljava/util/List<Lcom/heytap/epona/Interceptor;>;"
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "interceptor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private attach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 119
    iput-object p1, p0, Lcom/heytap/epona/Epona;->mContext:Landroid/content/Context;

    .line 120
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 121
    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/heytap/epona/Epona;->mApp:Landroid/app/Application;

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/heytap/epona/Epona;->mApp:Landroid/app/Application;

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/heytap/epona/Epona;->mActivityStackManager:Lcom/heytap/epona/internal/ActivityStackManager;

    iget-object v1, p0, Lcom/heytap/epona/Epona;->mApp:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/heytap/epona/internal/ActivityStackManager;->attach(Landroid/app/Application;)V

    .line 126
    return-void
.end method

.method private static autoRegister()V
    .locals 0

    .line 71
    return-void
.end method

.method public static findComponent(Ljava/lang/String;)Lcom/heytap/epona/DynamicProvider;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/heytap/epona/Epona;->getInstance()Lcom/heytap/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/epona/Epona;->mRepo:Lcom/heytap/epona/Repo;

    invoke-interface {v0, p0}, Lcom/heytap/epona/Repo;->findProvider(Ljava/lang/String;)Lcom/heytap/epona/DynamicProvider;

    move-result-object v0

    return-object v0
.end method

.method public static findProviderComponent(Ljava/lang/String;)Lcom/heytap/epona/provider/ProviderInfo;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/heytap/epona/Epona;->getInstance()Lcom/heytap/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/epona/Epona;->mRepo:Lcom/heytap/epona/Repo;

    invoke-interface {v0, p0}, Lcom/heytap/epona/Repo;->findProviderProviderInfo(Ljava/lang/String;)Lcom/heytap/epona/provider/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 106
    invoke-static {}, Lcom/heytap/epona/Epona;->getInstance()Lcom/heytap/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/epona/Epona;->mApp:Landroid/app/Application;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 110
    invoke-static {}, Lcom/heytap/epona/Epona;->getInstance()Lcom/heytap/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/epona/Epona;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 102
    invoke-static {}, Lcom/heytap/epona/Epona;->getInstance()Lcom/heytap/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/epona/Epona;->mActivityStackManager:Lcom/heytap/epona/internal/ActivityStackManager;

    invoke-virtual {v0}, Lcom/heytap/epona/internal/ActivityStackManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance()Lcom/heytap/epona/Epona;
    .locals 2

    .line 129
    sget-object v0, Lcom/heytap/epona/Epona;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Lcom/heytap/epona/Epona;->sInstance:Lcom/heytap/epona/Epona;

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Lcom/heytap/epona/Epona;

    invoke-direct {v1}, Lcom/heytap/epona/Epona;-><init>()V

    sput-object v1, Lcom/heytap/epona/Epona;->sInstance:Lcom/heytap/epona/Epona;

    .line 133
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    sget-object v0, Lcom/heytap/epona/Epona;->sInstance:Lcom/heytap/epona/Epona;

    return-object v0

    .line 133
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/heytap/epona/Interceptor;",
            ">;"
        }
    .end annotation

    .line 66
    invoke-static {}, Lcom/heytap/epona/Epona;->getInstance()Lcom/heytap/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/epona/Epona;->mInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 43
    sget-object v0, Lcom/heytap/epona/Epona;->sInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    return-void

    .line 46
    :cond_0
    invoke-static {}, Lcom/heytap/epona/Epona;->getInstance()Lcom/heytap/epona/Epona;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/heytap/epona/Epona;->attach(Landroid/content/Context;)V

    .line 47
    invoke-static {p0}, Lcom/heytap/epona/utils/Logger;->init(Landroid/content/Context;)V

    .line 48
    invoke-static {}, Lcom/heytap/shield/PermissionCheck;->getInstance()Lcom/heytap/shield/PermissionCheck;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/shield/PermissionCheck;->init(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Lcom/heytap/epona/Epona;->autoRegister()V

    .line 50
    return-void
.end method

.method public static newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;
    .locals 1
    .param p0, "request"    # Lcom/heytap/epona/Request;

    .line 74
    invoke-static {}, Lcom/heytap/epona/Epona;->getInstance()Lcom/heytap/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/epona/Epona;->mRoute:Lcom/heytap/epona/Route;

    invoke-virtual {v0, p0}, Lcom/heytap/epona/Route;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public static register(Lcom/heytap/epona/DynamicProvider;)V
    .locals 1
    .param p0, "provider"    # Lcom/heytap/epona/DynamicProvider;

    .line 78
    invoke-static {}, Lcom/heytap/epona/Epona;->getInstance()Lcom/heytap/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/epona/Epona;->mRepo:Lcom/heytap/epona/Repo;

    invoke-interface {v0, p0}, Lcom/heytap/epona/Repo;->registerProvider(Lcom/heytap/epona/DynamicProvider;)V

    .line 79
    return-void
.end method

.method public static registerProvider(Lcom/heytap/epona/provider/ProviderInfo;)V
    .locals 1
    .param p0, "provider"    # Lcom/heytap/epona/provider/ProviderInfo;

    .line 90
    invoke-static {}, Lcom/heytap/epona/Epona;->getInstance()Lcom/heytap/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/epona/Epona;->mRepo:Lcom/heytap/epona/Repo;

    invoke-interface {v0, p0}, Lcom/heytap/epona/Repo;->registerProviderInfo(Lcom/heytap/epona/provider/ProviderInfo;)V

    .line 91
    return-void
.end method

.method public static snapshot()V
    .locals 2

    .line 114
    invoke-static {}, Lcom/heytap/epona/Epona;->getInstance()Lcom/heytap/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/epona/Epona;->mSnapshot:Lcom/heytap/epona/internal/Snapshot;

    invoke-static {}, Lcom/heytap/epona/Epona;->getInstance()Lcom/heytap/epona/Epona;

    move-result-object v1

    iget-object v1, v1, Lcom/heytap/epona/Epona;->mRepo:Lcom/heytap/epona/Repo;

    invoke-interface {v0, v1}, Lcom/heytap/epona/internal/Snapshot;->localSnapshot(Lcom/heytap/epona/Repo;)V

    .line 115
    invoke-static {}, Lcom/heytap/epona/Epona;->getInstance()Lcom/heytap/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/epona/Epona;->mSnapshot:Lcom/heytap/epona/internal/Snapshot;

    invoke-interface {v0}, Lcom/heytap/epona/internal/Snapshot;->remoteSnapshot()V

    .line 116
    return-void
.end method

.method public static unRegister(Lcom/heytap/epona/DynamicProvider;)V
    .locals 1
    .param p0, "provider"    # Lcom/heytap/epona/DynamicProvider;

    .line 82
    invoke-static {}, Lcom/heytap/epona/Epona;->getInstance()Lcom/heytap/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/epona/Epona;->mRepo:Lcom/heytap/epona/Repo;

    invoke-interface {v0, p0}, Lcom/heytap/epona/Repo;->unRegisterProvider(Lcom/heytap/epona/DynamicProvider;)V

    .line 83
    return-void
.end method

.method public static unRegisterProvider(Lcom/heytap/epona/provider/ProviderInfo;)V
    .locals 1
    .param p0, "provider"    # Lcom/heytap/epona/provider/ProviderInfo;

    .line 94
    invoke-static {}, Lcom/heytap/epona/Epona;->getInstance()Lcom/heytap/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/epona/Epona;->mRepo:Lcom/heytap/epona/Repo;

    invoke-interface {v0, p0}, Lcom/heytap/epona/Repo;->unRegisterProviderInfo(Lcom/heytap/epona/provider/ProviderInfo;)V

    .line 95
    return-void
.end method
