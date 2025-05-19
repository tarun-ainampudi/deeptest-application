.class public Lcom/heytap/tingle/ipc/serviceproxy/inner/WindowManagerInnerProxy;
.super Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;
.source "WindowManagerInnerProxy.java"


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

    .line 19
    invoke-direct {p0}, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;-><init>()V

    .line 20
    const-string v0, "windowInner"

    iput-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/inner/WindowManagerInnerProxy;->mServiceName:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/inner/WindowManagerInnerProxy;->mShouldUseLock:Z

    .line 22
    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/heytap/tingle/ipc/serviceproxy/inner/WindowManagerInnerProxy;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/inner/WindowManagerInnerProxy;->mSlaveBinder:Lcom/heytap/tingle/ipc/SlaveBinder;

    invoke-static {v0}, Landroid/view/IWindowSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getOriginalSystemService(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 33
    .local v0, "windowManager":Landroid/view/IWindowManager;
    new-instance v1, Lcom/heytap/tingle/ipc/SlaveBinder;

    invoke-interface {v0}, Landroid/view/IWindowManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/heytap/tingle/ipc/SlaveBinder;-><init>(Landroid/os/IBinder;)V

    .line 34
    .local v1, "windowBinder":Lcom/heytap/tingle/ipc/SlaveBinder;
    sget-object v2, Lmirror/android/view/WindowManagerGlobal;->sWindowManagerService:Lcom/heytap/reflect/RefStaticObject;

    .line 35
    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Lcom/heytap/reflect/RefStaticObject;->set(Ljava/lang/Object;)V

    .line 36
    sget-object v2, Lmirror/android/view/WindowManagerGlobal;->sWindowSession:Lcom/heytap/reflect/RefStaticObject;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/heytap/reflect/RefStaticObject;->set(Ljava/lang/Object;)V

    .line 37
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v2

    iput-object v2, p0, Lcom/heytap/tingle/ipc/serviceproxy/inner/WindowManagerInnerProxy;->mOriginalService:Ljava/lang/Object;

    .line 38
    sget-object v2, Lmirror/android/view/WindowManagerGlobal;->sWindowManagerService:Lcom/heytap/reflect/RefStaticObject;

    invoke-virtual {v2, v0}, Lcom/heytap/reflect/RefStaticObject;->set(Ljava/lang/Object;)V

    .line 40
    new-instance v2, Lcom/heytap/tingle/ipc/SlaveBinder;

    iget-object v3, p0, Lcom/heytap/tingle/ipc/serviceproxy/inner/WindowManagerInnerProxy;->mOriginalService:Ljava/lang/Object;

    check-cast v3, Landroid/view/IWindowSession;

    invoke-interface {v3}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/heytap/tingle/ipc/SlaveBinder;-><init>(Landroid/os/IBinder;)V

    iput-object v2, p0, Lcom/heytap/tingle/ipc/serviceproxy/inner/WindowManagerInnerProxy;->mSlaveBinder:Lcom/heytap/tingle/ipc/SlaveBinder;

    .line 41
    nop

    .line 42
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/view/IWindowSession;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lcom/heytap/tingle/ipc/serviceproxy/inner/-$$Lambda$WindowManagerInnerProxy$u1THKaOu1631IdhR_VRI6WJYj64;

    invoke-direct {v4, p0}, Lcom/heytap/tingle/ipc/serviceproxy/inner/-$$Lambda$WindowManagerInnerProxy$u1THKaOu1631IdhR_VRI6WJYj64;-><init>(Lcom/heytap/tingle/ipc/serviceproxy/inner/WindowManagerInnerProxy;)V

    .line 41
    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IWindowSession;

    iput-object v2, p0, Lcom/heytap/tingle/ipc/serviceproxy/inner/WindowManagerInnerProxy;->mProxy:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public resetBinderOrigin(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    sget-object v0, Lcom/heytap/tingle/ipc/serviceproxy/inner/WindowManagerInnerProxy;->TAG:Ljava/lang/String;

    const-string v1, "Reset Binder To Origin."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/heytap/tingle/ipc/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    sget-object v0, Lmirror/android/view/WindowManagerGlobal;->sWindowManagerService:Lcom/heytap/reflect/RefStaticObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/heytap/reflect/RefStaticObject;->set(Ljava/lang/Object;)V

    .line 57
    sget-object v0, Lmirror/android/view/WindowManagerGlobal;->sWindowSession:Lcom/heytap/reflect/RefStaticObject;

    invoke-virtual {v0, v1}, Lcom/heytap/reflect/RefStaticObject;->set(Ljava/lang/Object;)V

    .line 58
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    .line 59
    return-void
.end method

.method protected resetCacheInternal(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iService"    # Ljava/lang/Object;

    .line 26
    sget-object v0, Lmirror/android/view/WindowManagerGlobal;->sWindowSession:Lcom/heytap/reflect/RefStaticObject;

    move-object v1, p2

    check-cast v1, Landroid/view/IWindowSession;

    invoke-virtual {v0, v1}, Lcom/heytap/reflect/RefStaticObject;->set(Ljava/lang/Object;)V

    .line 27
    return-void
.end method
