.class public Lcom/heytap/compat/net/wifi/OplusWifiManagerNative;
.super Ljava/lang/Object;
.source "OplusWifiManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/net/wifi/OplusWifiManagerNative$ReflectInfo;,
        Lcom/heytap/compat/net/wifi/OplusWifiManagerNative$ReflectInfoR;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.net.wifi.OplusWifiManager"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "OplusWifiManagerNative"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAuthResultInfo(IIILjava/lang/String;)V
    .locals 5
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "permBits"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 130
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Landroid/net/wifi/OplusWifiManager;

    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/wifi/OplusWifiManager;-><init>(Landroid/content/Context;)V

    .line 132
    .local v0, "oplusWifiManager":Landroid/net/wifi/OplusWifiManager;
    sget-object v1, Lcom/heytap/compat/net/wifi/OplusWifiManagerNative$ReflectInfoR;->requestToReleaseSta2ByAPP:Lcom/heytap/reflect/RefMethod;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

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

    .line 133
    .end local v0    # "oplusWifiManager":Landroid/net/wifi/OplusWifiManager;
    nop

    .line 136
    return-void

    .line 134
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not Supported Before R for addAuthResultInfo"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDualStaReadyStateForAPP(Ljava/lang/String;)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 85
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    new-instance v0, Landroid/net/wifi/OplusWifiManager;

    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/wifi/OplusWifiManager;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, "oplusWifiManager":Landroid/net/wifi/OplusWifiManager;
    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 88
    sget-object v2, Lcom/heytap/compat/net/wifi/OplusWifiManagerNative$ReflectInfoR;->getDualStaReadyStateForAPP:Lcom/heytap/reflect/RefMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-virtual {v2, v0, v3}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 90
    .end local v0    # "oplusWifiManager":Landroid/net/wifi/OplusWifiManager;
    :cond_0
    nop

    .line 93
    return v1

    .line 91
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not Supported Before R for getDualStaReadyStateForAPP"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isDualStaSupportedForAPP(Ljava/lang/String;)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    new-instance v0, Landroid/net/wifi/OplusWifiManager;

    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/wifi/OplusWifiManager;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "oplusWifiManager":Landroid/net/wifi/OplusWifiManager;
    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 74
    sget-object v2, Lcom/heytap/compat/net/wifi/OplusWifiManagerNative$ReflectInfoR;->isDualStaSupportedForAPP:Lcom/heytap/reflect/RefMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-virtual {v2, v0, v3}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 76
    .end local v0    # "oplusWifiManager":Landroid/net/wifi/OplusWifiManager;
    :cond_0
    nop

    .line 79
    return v1

    .line 77
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not Supported Before R for isDualStaSupportedForAPP"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isP2p5GSupported()Z
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "isP2p5GSupported"
        type = "epona"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Landroid/net/wifi/OplusWifiManager;

    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/net/wifi/OplusWifiManager;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, "oplusWifiManager":Landroid/net/wifi/OplusWifiManager;
    invoke-static {}, Lcom/heytap/compat/net/wifi/OplusWifiManagerNative$ReflectInfoR;->access$000()Lcom/heytap/reflect/RefMethod;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 57
    .end local v0    # "oplusWifiManager":Landroid/net/wifi/OplusWifiManager;
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 59
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-static {}, Lcom/heytap/compat/net/wifi/OplusWifiManagerNative$ReflectInfo;->access$100()Lcom/heytap/reflect/RefMethod;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 61
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not Supported Before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requestToEnableSta2ByAPP(Ljava/lang/String;)I
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 100
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    new-instance v0, Landroid/net/wifi/OplusWifiManager;

    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/wifi/OplusWifiManager;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, "oplusWifiManager":Landroid/net/wifi/OplusWifiManager;
    if-eqz p0, :cond_0

    .line 103
    sget-object v1, Lcom/heytap/compat/net/wifi/OplusWifiManagerNative$ReflectInfoR;->requestToEnableSta2ByAPP:Lcom/heytap/reflect/RefMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 105
    .end local v0    # "oplusWifiManager":Landroid/net/wifi/OplusWifiManager;
    :cond_0
    nop

    .line 108
    const/4 v0, -0x1

    return v0

    .line 106
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not Supported Before R for requestToEnableSta2ByAPP"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requestToReleaseSta2ByAPP(IILjava/lang/String;)Z
    .locals 5
    .param p0, "uid"    # I
    .param p1, "permBits"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 115
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    new-instance v0, Landroid/net/wifi/OplusWifiManager;

    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/wifi/OplusWifiManager;-><init>(Landroid/content/Context;)V

    .line 117
    .local v0, "oplusWifiManager":Landroid/net/wifi/OplusWifiManager;
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 118
    sget-object v2, Lcom/heytap/compat/net/wifi/OplusWifiManagerNative$ReflectInfoR;->requestToReleaseSta2ByAPP:Lcom/heytap/reflect/RefMethod;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object p2, v3, v1

    invoke-virtual {v2, v0, v3}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 120
    .end local v0    # "oplusWifiManager":Landroid/net/wifi/OplusWifiManager;
    :cond_0
    nop

    .line 123
    return v1

    .line 121
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not Supported Before R for requestToReleaseSta2ByAPP"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
