.class public Lcom/heytap/tingle/ipc/servicehandler/FetcherCacheHandler;
.super Ljava/lang/Object;
.source "FetcherCacheHandler.java"

# interfaces
.implements Lcom/heytap/tingle/ipc/servicehandler/SystemServiceHandler;


# instance fields
.field private mServiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle(Ljava/lang/String;)Z
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/heytap/tingle/ipc/servicehandler/FetcherCacheHandler;->mServiceName:Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public handle(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    iget-object v0, p0, Lcom/heytap/tingle/ipc/servicehandler/FetcherCacheHandler;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Lcom/color/inner/app/SystemServiceRegistryWrapper;->getFetcher(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    .local v0, "fetcher":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 29
    return-void

    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "className":Ljava/lang/String;
    const-string v2, "StaticApplicationContextServiceFetcher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 33
    invoke-static {v0, v3}, Lcom/color/inner/app/SystemServiceRegistryWrapper$StaticApplicationContextServiceFetcherWrapper;->setCacheInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    :cond_1
    const-string v2, "StaticServiceFetcher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    invoke-static {v0, v3}, Lcom/color/inner/app/SystemServiceRegistryWrapper$StaticServiceFetcherWrapper;->setCachedInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    :cond_2
    const-string v2, "CachedServiceFetcher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 39
    invoke-static {v0}, Lcom/color/inner/app/SystemServiceRegistryWrapper$CachedServiceFetcherWrapper;->getCacheIndex(Ljava/lang/Object;)I

    move-result v2

    .line 40
    .local v2, "index":I
    instance-of v4, p1, Landroid/content/ContextWrapper;

    if-eqz v4, :cond_3

    .line 41
    move-object v4, p1

    check-cast v4, Landroid/content/ContextWrapper;

    .line 42
    .local v4, "contextWrapper":Landroid/content/ContextWrapper;
    sget-object v5, Lmirror/android/app/ContextImpl;->mServiceCache:Lcom/heytap/reflect/RefObject;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/heytap/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    .line 43
    .local v5, "cache":[Ljava/lang/Object;
    aput-object v3, v5, v2

    .line 46
    .end local v2    # "index":I
    .end local v4    # "contextWrapper":Landroid/content/ContextWrapper;
    .end local v5    # "cache":[Ljava/lang/Object;
    :cond_3
    return-void
.end method
