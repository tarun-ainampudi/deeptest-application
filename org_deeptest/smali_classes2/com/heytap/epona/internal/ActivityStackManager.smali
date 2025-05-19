.class public Lcom/heytap/epona/internal/ActivityStackManager;
.super Ljava/lang/Object;
.source "ActivityStackManager.java"


# instance fields
.field private final mActivityLifecycleCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final mActivityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/heytap/epona/internal/ActivityStackManager;->mActivityStack:Ljava/util/Stack;

    .line 32
    new-instance v0, Lcom/heytap/epona/internal/ActivityStackManager$1;

    invoke-direct {v0, p0}, Lcom/heytap/epona/internal/ActivityStackManager$1;-><init>(Lcom/heytap/epona/internal/ActivityStackManager;)V

    iput-object v0, p0, Lcom/heytap/epona/internal/ActivityStackManager;->mActivityLifecycleCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/heytap/epona/internal/ActivityStackManager;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/heytap/epona/internal/ActivityStackManager;
    .param p1, "x1"    # Landroid/app/Activity;

    .line 10
    invoke-direct {p0, p1}, Lcom/heytap/epona/internal/ActivityStackManager;->pushTask(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/heytap/epona/internal/ActivityStackManager;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/heytap/epona/internal/ActivityStackManager;
    .param p1, "x1"    # Landroid/app/Activity;

    .line 10
    invoke-direct {p0, p1}, Lcom/heytap/epona/internal/ActivityStackManager;->removeTask(Landroid/app/Activity;)V

    return-void
.end method

.method private declared-synchronized pushTask(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    monitor-enter p0

    .line 68
    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 69
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/heytap/epona/internal/ActivityStackManager;->mActivityStack:Ljava/util/Stack;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 67
    .end local p1    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/heytap/epona/internal/ActivityStackManager;
    throw p1
.end method

.method private declared-synchronized removeTask(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    monitor-enter p0

    .line 73
    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 74
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/heytap/epona/internal/ActivityStackManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 77
    :try_start_1
    iget-object v1, p0, Lcom/heytap/epona/internal/ActivityStackManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 78
    .local v1, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    move-object v3, v2

    .local v3, "activityCache":Landroid/app/Activity;
    if-nez v2, :cond_1

    .end local v3    # "activityCache":Landroid/app/Activity;
    goto :goto_1

    .line 79
    .restart local v3    # "activityCache":Landroid/app/Activity;
    :cond_1
    nop

    .line 80
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/heytap/epona/internal/ActivityStackManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    goto :goto_3

    .line 86
    .end local v1    # "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    .end local v3    # "activityCache":Landroid/app/Activity;
    :cond_2
    goto :goto_2

    .line 79
    .restart local v1    # "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :cond_3
    :goto_1
    goto :goto_2

    .line 84
    .end local v1    # "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :catch_0
    move-exception v1

    .line 74
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 88
    .end local v0    # "i":I
    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    .line 72
    .end local p1    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/heytap/epona/internal/ActivityStackManager;
    throw p1
.end method


# virtual methods
.method public attach(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .line 16
    if-eqz p1, :cond_0

    .line 17
    iget-object v0, p0, Lcom/heytap/epona/internal/ActivityStackManager;->mActivityLifecycleCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 19
    :cond_0
    return-void
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 2

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/heytap/epona/internal/ActivityStackManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/heytap/epona/internal/ActivityStackManager;->mActivityStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/heytap/epona/internal/ActivityStackManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 28
    :cond_0
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 29
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
