.class public Lcom/heytap/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;
.super Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;
.source "WifiManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy<",
        "Landroid/net/wifi/IWifiManager;",
        ">;"
    }
.end annotation


# instance fields
.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/heytap/tingle/ipc/serviceproxy/SystemServiceProxy;-><init>()V

    .line 19
    const-string v0, "wifi"

    iput-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;->mServiceName:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/heytap/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "proxy1"    # Ljava/lang/Object;
    .param p3, "method"    # Ljava/lang/reflect/Method;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;->mLocalKey:Ljava/lang/ThreadLocal;

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

    .line 37
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;->mOriginalService:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/heytap/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;->resetServiceCache(Landroid/content/Context;Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;->mLocalKey:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 39
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;->mSlaveBinder:Lcom/heytap/tingle/ipc/SlaveBinder;

    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    invoke-virtual {p3, v0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;->mOriginalService:Ljava/lang/Object;

    invoke-virtual {p3, v0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 31
    sget-object v0, Lmirror/android/net/wifi/WifiManager;->mService:Lcom/heytap/reflect/RefObject;

    iget-object v1, p0, Lcom/heytap/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Lcom/heytap/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;->mOriginalService:Ljava/lang/Object;

    .line 32
    new-instance v0, Lcom/heytap/tingle/ipc/SlaveBinder;

    iget-object v1, p0, Lcom/heytap/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;->mOriginalService:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heytap/tingle/ipc/SlaveBinder;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;->mSlaveBinder:Lcom/heytap/tingle/ipc/SlaveBinder;

    .line 33
    nop

    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/net/wifi/IWifiManager;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/heytap/tingle/ipc/serviceproxy/net/wifi/-$$Lambda$WifiManagerProxy$ww5pVlckfEUOyRcC0CjYGJouZp8;

    invoke-direct {v2, p0, p1}, Lcom/heytap/tingle/ipc/serviceproxy/net/wifi/-$$Lambda$WifiManagerProxy$ww5pVlckfEUOyRcC0CjYGJouZp8;-><init>(Lcom/heytap/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;Landroid/content/Context;)V

    .line 33
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/IWifiManager;

    iput-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;->mProxy:Ljava/lang/Object;

    .line 45
    return-void
.end method

.method protected resetCacheInternal(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iService"    # Ljava/lang/Object;

    .line 24
    sget-object v0, Lmirror/android/net/wifi/WifiManager;->mService:Lcom/heytap/reflect/RefObject;

    iget-object v1, p0, Lcom/heytap/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object v2, p2

    check-cast v2, Landroid/net/wifi/IWifiManager;

    invoke-virtual {v0, v1, v2}, Lcom/heytap/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    return-void
.end method
