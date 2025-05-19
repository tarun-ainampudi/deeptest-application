.class public Lcom/heytap/compat/net/wifi/WifiConfigurationNative$KeyMgmtNative;
.super Ljava/lang/Object;
.source "WifiConfigurationNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/net/wifi/WifiConfigurationNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyMgmtNative"
.end annotation


# static fields
.field public static DPP:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 197
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-static {}, Lcom/heytap/compat/net/wifi/WifiConfigurationNative$ReflectInfo;->access$300()Lcom/heytap/reflect/RefStaticInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/reflect/RefStaticInt;->get()I

    move-result v0

    sput v0, Lcom/heytap/compat/net/wifi/WifiConfigurationNative$KeyMgmtNative;->DPP:I

    goto :goto_0

    .line 200
    :cond_0
    const-string v0, "WifiConfigurationNative"

    const-string v1, "not support before R"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method

.method public static getWapiCERT()I
    .locals 1
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

    .line 217
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, Lcom/color/inner/net/wifi/WifiConfigurationWrapper$KeyMgmtWrapper;->getWapiCERT()I

    move-result v0

    return v0

    .line 220
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static getWapiPSK()I
    .locals 1
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

    .line 207
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-static {}, Lcom/color/inner/net/wifi/WifiConfigurationWrapper$KeyMgmtWrapper;->getWapiPSK()I

    move-result v0

    return v0

    .line 210
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
