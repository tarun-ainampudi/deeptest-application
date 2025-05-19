.class public Lcom/heytap/compat/net/INetworkStatsServiceNative;
.super Ljava/lang/Object;
.source "INetworkStatsServiceNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "INetworkStatsServiceNative"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static openSession()Lcom/heytap/compat/net/INetworkStatsSessionNative;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/heytap/compat/net/INetworkStatsSessionNative;

    invoke-direct {v0}, Lcom/heytap/compat/net/INetworkStatsSessionNative;-><init>()V

    return-object v0

    .line 27
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-static {}, Lcom/color/inner/net/INetworkStatsServiceWrapper;->openSession()Lcom/color/inner/net/INetworkStatsSessionWrapper;

    move-result-object v0

    .line 29
    .local v0, "iNetworkStatsSessionWrapper":Lcom/color/inner/net/INetworkStatsSessionWrapper;
    new-instance v1, Lcom/heytap/compat/net/INetworkStatsSessionNative;

    invoke-direct {v1, v0}, Lcom/heytap/compat/net/INetworkStatsSessionNative;-><init>(Lcom/color/inner/net/INetworkStatsSessionWrapper;)V

    return-object v1

    .line 30
    .end local v0    # "iNetworkStatsSessionWrapper":Lcom/color/inner/net/INetworkStatsSessionWrapper;
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    const-string v0, "netstats"

    .line 32
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    .line 33
    .local v0, "statsService":Landroid/net/INetworkStatsService;
    new-instance v1, Lcom/heytap/compat/net/INetworkStatsSessionNative;

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/heytap/compat/net/INetworkStatsSessionNative;-><init>(Landroid/net/INetworkStatsSession;)V

    return-object v1

    .line 35
    .end local v0    # "statsService":Landroid/net/INetworkStatsService;
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
