.class public Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative;
.super Ljava/lang/Object;
.source "WifiP2pManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;,
        Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerProxy;,
        Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerNative;,
        Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$WifiP2pGroupListNativeReflectInfo;,
        Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.net.wifi.p2p.WifiP2pManager"

.field private static final TAG:Ljava/lang/String; = "WifiP2pManagerNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static addPersistentGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/util/Map;Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerNative;)V
    .locals 5
    .param p0, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "addPersistentGroupListenerNative"    # Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerNative;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/p2p/WifiP2pManager$Channel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerNative;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 113
    .local p1, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 115
    .local v0, "wifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {p2}, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative;->createAddPersistentGroupListenerProxy(Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerNative;)Ljava/lang/Object;

    move-result-object v1

    .line 116
    .local v1, "addPersistentGroupListenerProxy":Ljava/lang/Object;
    invoke-static {}, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$ReflectInfo;->access$400()Lcom/heytap/reflect/RefMethod;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Lcom/heytap/reflect/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .end local v0    # "wifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    .end local v1    # "addPersistentGroupListenerProxy":Ljava/lang/Object;
    nop

    .line 122
    nop

    .line 123
    return-void

    .line 118
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p0, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;
    .param p2, "freq"    # I
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 211
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 213
    .local v0, "wifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {}, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$ReflectInfo;->access$700()Lcom/heytap/reflect/RefMethod;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .end local v0    # "wifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    nop

    .line 217
    return-void

    .line 215
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createAddPersistentGroupListenerProxy(Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerNative;)Ljava/lang/Object;
    .locals 5
    .param p0, "listener"    # Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerNative;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 128
    if-nez p0, :cond_0

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 131
    :cond_0
    :try_start_0
    new-instance v0, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerProxy;

    invoke-direct {v0, p0}, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerProxy;-><init>(Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerNative;)V

    .line 132
    .local v0, "proxy":Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerProxy;
    const-string v1, "android.net.wifi.p2p.WifiP2pManager$AddPersistentGroupListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 133
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 134
    .end local v0    # "proxy":Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerProxy;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v1, v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static deletePersistentGroup(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "netId"    # I
    .param p3, "actionListener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 66
    .local v0, "wifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {}, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$ReflectInfo;->access$000()Lcom/heytap/reflect/RefMethod;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .end local v0    # "wifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    nop

    .line 70
    return-void

    .line 68
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p0, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "freq"    # I
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 199
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 201
    .local v0, "wifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {}, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$ReflectInfo;->access$600()Lcom/heytap/reflect/RefMethod;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .end local v0    # "wifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    nop

    .line 205
    return-void

    .line 203
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requestPersistentGroupInfo(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "persistentGroupInfoListenerNative"    # Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 79
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 81
    .local v0, "wifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    new-instance v1, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$1;

    invoke-direct {v1, p2}, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$1;-><init>(Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;)V

    .line 87
    .local v1, "persistentGroupInfoListener":Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;
    invoke-static {}, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$ReflectInfo;->access$200()Lcom/heytap/reflect/RefMethod;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .end local v0    # "wifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    .end local v1    # "persistentGroupInfoListener":Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;
    nop

    .line 91
    return-void

    .line 89
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setMiracastMode(I)V
    .locals 2
    .param p0, "mode"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "setMiracastMode"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "android.net.wifi.p2p.WifiP2pManager"

    .line 173
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "setMiracastMode"

    .line 174
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "mode"

    .line 175
    invoke-virtual {v0, v1, p0}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 177
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    .line 178
    .end local v0    # "request":Lcom/heytap/epona/Request;
    nop

    .line 181
    return-void

    .line 179
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setWifiP2pBandType(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "bandtype"    # I
    .param p3, "actionListener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 98
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 100
    .local v0, "wifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {}, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$ReflectInfo;->access$300()Lcom/heytap/reflect/RefMethod;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .end local v0    # "wifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    nop

    .line 104
    return-void

    .line 102
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p0, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "listeningChannel"    # I
    .param p2, "operatingChannel"    # I
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 187
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 189
    .local v0, "wifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {}, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$ReflectInfo;->access$500()Lcom/heytap/reflect/RefMethod;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .end local v0    # "wifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    nop

    .line 193
    return-void

    .line 191
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
