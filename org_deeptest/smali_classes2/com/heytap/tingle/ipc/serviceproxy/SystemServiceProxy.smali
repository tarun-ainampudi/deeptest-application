.class public abstract Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;
.super Ljava/lang/Object;
.source "SystemServiceProxy.java"

# interfaces
.implements Lcom/heytap/tingle/ipc/serviceproxy/ISystemServiceProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/heytap/tingle/ipc/serviceproxy/ISystemServiceProxy;"
    }
.end annotation


# static fields
.field protected static TAG:Ljava/lang/String;


# instance fields
.field protected mLocalKey:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected mOriginalService:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mProxy:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mServiceName:Ljava/lang/String;

.field protected mShouldUseLock:Z

.field protected mSlaveBinder:Lcom/heytap/tingle/ipc/SlaveBinder;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 29
    .local p0, "this":Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;, "Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->mLocalKey:Ljava/lang/ThreadLocal;

    .line 23
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->TAG:Ljava/lang/String;

    .line 31
    iput-boolean v1, p0, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->mShouldUseLock:Z

    .line 32
    return-void
.end method

.method private setServiceToProxyInternal(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    .local p0, "this":Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;, "Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy<TT;>;"
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->mSlaveBinder:Lcom/heytap/tingle/ipc/SlaveBinder;

    if-nez v0, :cond_1

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->init(Landroid/content/Context;)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0, p1}, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->init(Landroid/content/Context;)V

    .line 87
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->mLocalKey:Ljava/lang/ThreadLocal;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->mProxy:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->resetServiceCache(Landroid/content/Context;Ljava/lang/Object;)V

    .line 89
    monitor-exit p0

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public canHandle(Ljava/lang/String;)Z
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 64
    .local p0, "this":Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;, "Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy<TT;>;"
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->mServiceName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public cleanSystemService(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    .local p0, "this":Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;, "Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy<TT;>;"
    invoke-direct {p0, p1}, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->setServiceToProxyInternal(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method protected getOriginalSystemService(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    .local p0, "this":Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;, "Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy<TT;>;"
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    .local p0, "this":Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;, "Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy<TT;>;"
    invoke-direct {p0, p1}, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->setServiceToProxyInternal(Landroid/content/Context;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->getOriginalSystemService(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract init(Landroid/content/Context;)V
.end method

.method public resetBinderOrigin(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 95
    .local p0, "this":Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;, "Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy<TT;>;"
    sget-object v0, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default Service ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] do not need reset IBinder to origin."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/heytap/tingle/ipc/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method protected abstract resetCacheInternal(Landroid/content/Context;Ljava/lang/Object;)V
.end method

.method protected resetServiceCache(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iService"    # Ljava/lang/Object;

    .line 35
    .local p0, "this":Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;, "Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy<TT;>;"
    iget-boolean v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->mShouldUseLock:Z

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->resetCacheInternal(Landroid/content/Context;Ljava/lang/Object;)V

    .line 37
    return-void

    .line 39
    :cond_0
    instance-of v0, p2, Ljava/lang/reflect/Proxy;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 42
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->resetCacheInternal(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    goto :goto_1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LOCK Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v1, p0, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 49
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->resetCacheInternal(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 56
    :cond_2
    :goto_1
    return-void

    .line 51
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 52
    iget-object v1, p0, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 54
    :cond_3
    throw v0
.end method
