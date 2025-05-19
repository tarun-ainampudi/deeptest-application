.class public Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;
.super Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;
.source "CommonServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy<",
        "Landroid/os/IBinder;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHED_SERVICE_FETCHER:Ljava/lang/String; = "CachedServiceFetcher"

.field private static final STATIC_APPLICATION_FETCHER:Ljava/lang/String; = "StaticApplicationContextServiceFetcher"

.field private static final STATIC_SERVICE_FETCHER:Ljava/lang/String; = "StaticServiceFetcher"

.field private static final TAG:Ljava/lang/String; = "CommonServiceProxy"

.field private static final TRANSACT_METHOD_NAME:Ljava/lang/String; = "transact"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;->mServiceName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private cleanSystemFetcherCache(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Lcom/color/inner/app/SystemServiceRegistryWrapper;->getFetcher(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    .local v0, "fetcher":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 60
    const-string v1, "CommonServiceProxy"

    const-string v2, "getFetcher failed."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/heytap/tingle/ipc/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    return-void

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "className":Ljava/lang/String;
    const-string v2, "StaticApplicationContextServiceFetcher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 65
    nop

    .line 66
    invoke-static {v0, v3}, Lcom/color/inner/app/SystemServiceRegistryWrapper$StaticApplicationContextServiceFetcherWrapper;->setCacheInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    return-void

    .line 69
    :cond_1
    const-string v2, "StaticServiceFetcher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    nop

    .line 71
    invoke-static {v0, v3}, Lcom/color/inner/app/SystemServiceRegistryWrapper$StaticServiceFetcherWrapper;->setCachedInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    return-void

    .line 74
    :cond_2
    const-string v2, "CachedServiceFetcher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 75
    invoke-static {v0}, Lcom/color/inner/app/SystemServiceRegistryWrapper$CachedServiceFetcherWrapper;->getCacheIndex(Ljava/lang/Object;)I

    move-result v2

    .line 76
    .local v2, "index":I
    instance-of v4, p1, Landroid/content/ContextWrapper;

    if-eqz v4, :cond_4

    .line 77
    move-object v4, p1

    check-cast v4, Landroid/content/ContextWrapper;

    .line 79
    .local v4, "contextWrapper":Landroid/content/ContextWrapper;
    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Landroid/app/Application;

    if-eqz v5, :cond_3

    .line 80
    sget-object v5, Lmirror/android/app/ContextImpl;->mServiceCache:Lcom/heytap/reflect/RefObject;

    .line 81
    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    .line 80
    invoke-virtual {v5, v6}, Lcom/heytap/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    goto :goto_0

    .line 83
    :cond_3
    sget-object v5, Lmirror/android/app/ContextImpl;->mServiceCache:Lcom/heytap/reflect/RefObject;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/heytap/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    .line 85
    .local v5, "cache":[Ljava/lang/Object;
    :goto_0
    aput-object v3, v5, v2

    .line 88
    .end local v2    # "index":I
    .end local v4    # "contextWrapper":Landroid/content/ContextWrapper;
    .end local v5    # "cache":[Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "proxy"    # Ljava/lang/Object;
    .param p3, "method"    # Ljava/lang/reflect/Method;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;->mLocalKey:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "transact"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;->mOriginalService:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;->resetServiceCache(Landroid/content/Context;Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;->mLocalKey:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;->mSlaveBinder:Lcom/heytap/tingle/ipc/SlaveBinder;

    invoke-virtual {p3, v0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;->mOriginalService:Ljava/lang/Object;

    invoke-virtual {p3, v0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    sget-object v0, Lmirror/android/os/ServiceManager;->getService:Lcom/heytap/reflect/RefStaticMethod;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;->mServiceName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/heytap/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;->mOriginalService:Ljava/lang/Object;

    .line 39
    new-instance v0, Lcom/heytap/tingle/ipc/SlaveBinder;

    iget-object v2, p0, Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;->mOriginalService:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-direct {v0, v2}, Lcom/heytap/tingle/ipc/SlaveBinder;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;->mSlaveBinder:Lcom/heytap/tingle/ipc/SlaveBinder;

    .line 41
    nop

    .line 42
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/os/IBinder;

    aput-object v2, v1, v4

    new-instance v2, Lcom/heytap/tingle/ipc/serviceproxy/-$$Lambda$CommonServiceProxy$wuMW4jHcS1QDNi_1GJrbqsoPdv8;

    invoke-direct {v2, p0, p1}, Lcom/heytap/tingle/ipc/serviceproxy/-$$Lambda$CommonServiceProxy$wuMW4jHcS1QDNi_1GJrbqsoPdv8;-><init>(Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;Landroid/content/Context;)V

    .line 41
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;->mProxy:Ljava/lang/Object;

    .line 55
    return-void
.end method

.method protected resetCacheInternal(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iService"    # Ljava/lang/Object;

    .line 32
    sget-object v0, Lmirror/android/os/ServiceManager;->sCache:Lcom/heytap/reflect/RefStaticObject;

    invoke-virtual {v0}, Lcom/heytap/reflect/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;->mServiceName:Ljava/lang/String;

    move-object v2, p2

    check-cast v2, Landroid/os/IBinder;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-direct {p0, p1}, Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;->cleanSystemFetcherCache(Landroid/content/Context;)V

    .line 34
    return-void
.end method
