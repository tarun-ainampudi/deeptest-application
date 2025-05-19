.class public Lcom/heytap/compat/net/wifi/WifiConfigurationNative;
.super Ljava/lang/Object;
.source "WifiConfigurationNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/net/wifi/WifiConfigurationNative$KeyMgmtNative;,
        Lcom/heytap/compat/net/wifi/WifiConfigurationNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiConfigurationNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getApBand(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p0, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 49
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/heytap/compat/net/wifi/WifiConfigurationNative$ReflectInfo;->access$000()Lcom/heytap/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/reflect/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 51
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-static {p0}, Lcom/color/inner/net/wifi/WifiConfigurationWrapper;->getApBand(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0

    .line 53
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    return v0

    .line 56
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before M"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getApChannel(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p0, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lcom/heytap/compat/net/wifi/WifiConfigurationNative$ReflectInfo;->access$100()Lcom/heytap/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/reflect/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 65
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-static {p0}, Lcom/color/inner/net/wifi/WifiConfigurationWrapper;->getApChannel(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0

    .line 67
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    return v0

    .line 70
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before M"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getShareThisAp(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p0, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 101
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/heytap/compat/net/wifi/WifiConfigurationNative$ReflectInfo;->access$200()Lcom/heytap/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/reflect/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 104
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not support before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getWapiCertSel(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .param p0, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;
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

    .line 171
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {p0}, Lcom/color/inner/net/wifi/WifiConfigurationWrapper;->getWapiCertSel(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 174
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static getWapiCertSelMode(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p0, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;
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

    .line 181
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {p0}, Lcom/color/inner/net/wifi/WifiConfigurationWrapper;->getWapiCertSelMode(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0

    .line 184
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static getWapiPsk(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .param p0, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;
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

    .line 151
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {p0}, Lcom/color/inner/net/wifi/WifiConfigurationWrapper;->getWapiPsk(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static getWapiPskType(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p0, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;
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

    .line 161
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-static {p0}, Lcom/color/inner/net/wifi/WifiConfigurationWrapper;->getWapiPskType(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0

    .line 164
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static setApBand(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 2
    .param p0, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "apBand"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 35
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lcom/heytap/compat/net/wifi/WifiConfigurationNative$ReflectInfo;->access$000()Lcom/heytap/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/heytap/reflect/RefInt;->set(Ljava/lang/Object;I)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-static {p0, p1}, Lcom/color/inner/net/wifi/WifiConfigurationWrapper;->setApBand(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    iput p1, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before M"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setApChannel(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 2
    .param p0, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "apChannel"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/heytap/compat/net/wifi/WifiConfigurationNative$ReflectInfo;->access$100()Lcom/heytap/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/heytap/reflect/RefInt;->set(Ljava/lang/Object;I)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-static {p0, p1}, Lcom/color/inner/net/wifi/WifiConfigurationWrapper;->setApChannel(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    iput p1, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before M"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setShareThisAp(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 2
    .param p0, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "shareThisAp"    # Z
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 91
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/heytap/compat/net/wifi/WifiConfigurationNative$ReflectInfo;->access$200()Lcom/heytap/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/heytap/reflect/RefBoolean;->set(Ljava/lang/Object;Z)V

    .line 96
    return-void

    .line 94
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not support before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setWapiCertSel(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 1
    .param p0, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "wapiCertSel"    # Ljava/lang/String;
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

    .line 131
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {p0, p1}, Lcom/color/inner/net/wifi/WifiConfigurationWrapper;->setWapiCertSel(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 136
    return-void

    .line 134
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static setWapiCertSelMode(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 1
    .param p0, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "wapiCertSelMode"    # I
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

    .line 141
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {p0, p1}, Lcom/color/inner/net/wifi/WifiConfigurationWrapper;->setWapiCertSelMode(Landroid/net/wifi/WifiConfiguration;I)V

    .line 146
    return-void

    .line 144
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static setWapiPsk(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 1
    .param p0, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "wapiPsk"    # Ljava/lang/String;
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

    .line 111
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {p0, p1}, Lcom/color/inner/net/wifi/WifiConfigurationWrapper;->setWapiPsk(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 116
    return-void

    .line 114
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static setWapiPskType(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 1
    .param p0, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "wapiPskType"    # I
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

    .line 121
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {p0, p1}, Lcom/color/inner/net/wifi/WifiConfigurationWrapper;->setWapiPskType(Landroid/net/wifi/WifiConfiguration;I)V

    .line 126
    return-void

    .line 124
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
