.class public Lcom/heytap/tingle/ipc/serviceproxy/view/WindowManagerProxy;
.super Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;
.source "WindowManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy<",
        "Landroid/view/IWindowSession;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;-><init>()V

    .line 17
    const-string v0, "window"

    iput-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/view/WindowManagerProxy;->mServiceName:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/view/WindowManagerProxy;->mShouldUseLock:Z

    .line 19
    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/heytap/tingle/ipc/serviceproxy/view/WindowManagerProxy;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/view/WindowManagerProxy;->mSlaveBinder:Lcom/heytap/tingle/ipc/SlaveBinder;

    invoke-static {v0}, Landroid/view/IWindowSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/view/WindowManagerProxy;->mOriginalService:Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/heytap/tingle/ipc/SlaveBinder;

    iget-object v1, p0, Lcom/heytap/tingle/ipc/serviceproxy/view/WindowManagerProxy;->mOriginalService:Ljava/lang/Object;

    check-cast v1, Landroid/view/IWindowSession;

    invoke-interface {v1}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heytap/tingle/ipc/SlaveBinder;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/view/WindowManagerProxy;->mSlaveBinder:Lcom/heytap/tingle/ipc/SlaveBinder;

    .line 30
    nop

    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/view/IWindowSession;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/heytap/tingle/ipc/serviceproxy/view/-$$Lambda$WindowManagerProxy$F05tNpgx7XAOB3R86wHX1mxzyck;

    invoke-direct {v2, p0}, Lcom/heytap/tingle/ipc/serviceproxy/view/-$$Lambda$WindowManagerProxy$F05tNpgx7XAOB3R86wHX1mxzyck;-><init>(Lcom/heytap/tingle/ipc/serviceproxy/view/WindowManagerProxy;)V

    .line 30
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IWindowSession;

    iput-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/view/WindowManagerProxy;->mProxy:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public resetBinderOrigin(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    sget-object v0, Lcom/heytap/tingle/ipc/serviceproxy/view/WindowManagerProxy;->TAG:Ljava/lang/String;

    const-string v1, "Reset Binder To Origin."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/heytap/tingle/ipc/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/view/WindowManagerProxy;->mOriginalService:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/heytap/tingle/ipc/serviceproxy/view/WindowManagerProxy;->resetCacheInternal(Landroid/content/Context;Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method protected resetCacheInternal(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iService"    # Ljava/lang/Object;

    .line 23
    sget-object v0, Lmirror/android/view/WindowManagerGlobal;->sWindowSession:Lcom/heytap/reflect/RefStaticObject;

    move-object v1, p2

    check-cast v1, Landroid/view/IWindowSession;

    invoke-virtual {v0, v1}, Lcom/heytap/reflect/RefStaticObject;->set(Ljava/lang/Object;)V

    .line 24
    return-void
.end method
