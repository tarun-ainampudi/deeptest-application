.class public Lcom/heytap/compat/net/wifi/WifiEnterpriseConfigNative;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfigNative.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static getSimNum(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "wifiEnterpriseConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;
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

    .line 28
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {p0}, Lcom/color/inner/net/wifi/WifiEnterpriseConfigWrapper;->getSimNum(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static setSimNum(Landroid/net/wifi/WifiEnterpriseConfig;I)V
    .locals 1
    .param p0, "wifiEnterpriseConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p1, "SIMNum"    # I
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

    .line 18
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-static {p0, p1}, Lcom/color/inner/net/wifi/WifiEnterpriseConfigWrapper;->setSimNum(Landroid/net/wifi/WifiEnterpriseConfig;I)V

    .line 23
    return-void

    .line 21
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
