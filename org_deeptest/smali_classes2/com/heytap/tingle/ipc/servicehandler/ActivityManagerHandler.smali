.class public Lcom/heytap/tingle/ipc/servicehandler/ActivityManagerHandler;
.super Ljava/lang/Object;
.source "ActivityManagerHandler.java"

# interfaces
.implements Lcom/heytap/tingle/ipc/servicehandler/SystemServiceHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cleanSystemServiceCache(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    sget-object v0, Lmirror/android/os/ServiceManager;->getService:Lcom/heytap/reflect/RefStaticMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/heytap/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 38
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/heytap/tingle/ipc/SlaveBinder;

    if-eqz v1, :cond_0

    .line 39
    sget-object v1, Lmirror/android/os/ServiceManager;->sCache:Lcom/heytap/reflect/RefStaticObject;

    invoke-virtual {v1}, Lcom/heytap/reflect/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_0
    return-void
.end method

.method private resetSingleton()V
    .locals 3

    .line 32
    sget-object v0, Lmirror/android/app/ActivityManager;->IActivityManagerSingleton:Lcom/heytap/reflect/RefStaticObject;

    invoke-virtual {v0}, Lcom/heytap/reflect/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v0

    .line 33
    .local v0, "singleton":Ljava/lang/Object;
    sget-object v1, Lmirror/android/util/Singleton;->mInstance:Lcom/heytap/reflect/RefObject;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/heytap/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    return-void
.end method


# virtual methods
.method public canHandle(Ljava/lang/String;)Z
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 17
    const-string v0, "activity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public handle(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Lcom/heytap/tingle/ipc/servicehandler/ActivityManagerHandler;->resetSingleton()V

    .line 23
    return-void
.end method

.method public reset(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Lcom/heytap/tingle/ipc/servicehandler/ActivityManagerHandler;->resetSingleton()V

    .line 28
    const-string v0, "activity"

    invoke-direct {p0, v0}, Lcom/heytap/tingle/ipc/servicehandler/ActivityManagerHandler;->cleanSystemServiceCache(Ljava/lang/String;)V

    .line 29
    return-void
.end method
