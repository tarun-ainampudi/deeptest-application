.class public Lcom/heytap/tingle/ipc/serviceproxy/app/NotificationManagerProxy;
.super Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;
.source "NotificationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy<",
        "Landroid/app/INotificationManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;-><init>()V

    .line 18
    const-string v0, "notification"

    iput-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/app/NotificationManagerProxy;->mServiceName:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/heytap/tingle/ipc/serviceproxy/app/NotificationManagerProxy;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 33
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/app/NotificationManagerProxy;->mLocalKey:Ljava/lang/ThreadLocal;

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

    .line 34
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/app/NotificationManagerProxy;->mOriginalService:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/heytap/tingle/ipc/serviceproxy/app/NotificationManagerProxy;->resetServiceCache(Landroid/content/Context;Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/app/NotificationManagerProxy;->mLocalKey:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 36
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/app/NotificationManagerProxy;->mSlaveBinder:Lcom/heytap/tingle/ipc/SlaveBinder;

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    invoke-virtual {p3, v0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/app/NotificationManagerProxy;->mOriginalService:Ljava/lang/Object;

    invoke-virtual {p3, v0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/app/NotificationManagerProxy;->mOriginalService:Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/heytap/tingle/ipc/SlaveBinder;

    iget-object v1, p0, Lcom/heytap/tingle/ipc/serviceproxy/app/NotificationManagerProxy;->mOriginalService:Ljava/lang/Object;

    check-cast v1, Landroid/app/INotificationManager;

    invoke-interface {v1}, Landroid/app/INotificationManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heytap/tingle/ipc/SlaveBinder;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/app/NotificationManagerProxy;->mSlaveBinder:Lcom/heytap/tingle/ipc/SlaveBinder;

    .line 30
    nop

    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/app/INotificationManager;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/heytap/tingle/ipc/serviceproxy/app/-$$Lambda$NotificationManagerProxy$HFdA_4iDykc5_Uk1kUbC1Jhx9xM;

    invoke-direct {v2, p0, p1}, Lcom/heytap/tingle/ipc/serviceproxy/app/-$$Lambda$NotificationManagerProxy$HFdA_4iDykc5_Uk1kUbC1Jhx9xM;-><init>(Lcom/heytap/tingle/ipc/serviceproxy/app/NotificationManagerProxy;Landroid/content/Context;)V

    .line 30
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/INotificationManager;

    iput-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/app/NotificationManagerProxy;->mProxy:Ljava/lang/Object;

    .line 42
    return-void
.end method

.method protected resetCacheInternal(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iService"    # Ljava/lang/Object;

    .line 23
    sget-object v0, Lmirror/android/app/NotificationManager;->sService:Lcom/heytap/reflect/RefStaticObject;

    invoke-virtual {v0, p2}, Lcom/heytap/reflect/RefStaticObject;->set(Ljava/lang/Object;)V

    .line 24
    return-void
.end method
