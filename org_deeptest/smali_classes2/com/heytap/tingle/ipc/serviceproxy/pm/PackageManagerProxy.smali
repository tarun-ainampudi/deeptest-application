.class public Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;
.super Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;
.source "PackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy<",
        "Landroid/content/pm/IPackageManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final PACKAGE_MANAGER:Ljava/lang/String; = "package"

.field private static final TAG:Ljava/lang/String; = "PackageManagerProxy"

.field private static mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;-><init>()V

    .line 24
    const-string v0, "package"

    iput-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;->mServiceName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 63
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;->mLocalKey:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;->mOriginalService:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;->resetServiceCache(Landroid/content/Context;Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;->mLocalKey:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 66
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;->mSlaveBinder:Lcom/heytap/tingle/ipc/SlaveBinder;

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual {p3, v0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;->mOriginalService:Ljava/lang/Object;

    invoke-virtual {p3, v0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getOriginalSystemService(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;->mOriginalService:Ljava/lang/Object;

    .line 59
    new-instance v0, Lcom/heytap/tingle/ipc/SlaveBinder;

    iget-object v1, p0, Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;->mOriginalService:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heytap/tingle/ipc/SlaveBinder;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;->mSlaveBinder:Lcom/heytap/tingle/ipc/SlaveBinder;

    .line 60
    nop

    .line 61
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/pm/IPackageManager;

    aput-object v3, v1, v2

    new-instance v2, Lcom/heytap/tingle/ipc/serviceproxy/pm/-$$Lambda$PackageManagerProxy$6U0IS894cvnVx-9rUYMut_X4oUE;

    invoke-direct {v2, p0, p1}, Lcom/heytap/tingle/ipc/serviceproxy/pm/-$$Lambda$PackageManagerProxy$6U0IS894cvnVx-9rUYMut_X4oUE;-><init>(Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;Landroid/content/Context;)V

    .line 60
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IPackageManager;

    iput-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;->mProxy:Ljava/lang/Object;

    .line 73
    :cond_0
    return-void
.end method

.method protected resetCacheInternal(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iService"    # Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;->mClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 31
    :try_start_0
    const-string v0, "android.app.ContextImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;->mClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PackageManagerProxy"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v0, Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;->mClass:Ljava/lang/Class;

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    .line 41
    :cond_1
    sget-object v0, Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;->mClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 42
    sget-object v0, Lmirror/android/app/ContextImpl;->mPackageManager:Lcom/heytap/reflect/RefObject;

    invoke-virtual {v0, p1, v1}, Lcom/heytap/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 44
    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    .line 45
    .local v0, "contextWrapper":Landroid/content/ContextWrapper;
    sget-object v2, Lmirror/android/app/ContextImpl;->mPackageManager:Lcom/heytap/reflect/RefObject;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/heytap/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .end local v0    # "contextWrapper":Landroid/content/ContextWrapper;
    :goto_1
    sget-object v0, Lmirror/android/app/ActivityThread;->sPackageManager:Lcom/heytap/reflect/RefStaticObject;

    invoke-virtual {v0, p2}, Lcom/heytap/reflect/RefStaticObject;->set(Ljava/lang/Object;)V

    .line 48
    return-void

    .line 38
    :cond_3
    :goto_2
    return-void
.end method
