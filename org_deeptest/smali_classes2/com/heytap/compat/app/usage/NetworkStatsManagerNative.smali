.class public Lcom/heytap/compat/app/usage/NetworkStatsManagerNative;
.super Ljava/lang/Object;
.source "NetworkStatsManagerNative.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static querySummaryForDeviceWithMobileAllTemplate(Landroid/app/usage/NetworkStatsManager;Ljava/lang/String;JJ)J
    .locals 2
    .param p0, "networkStatsManager"    # Landroid/app/usage/NetworkStatsManager;
    .param p1, "subscriberId"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 23
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static/range {p0 .. p5}, Lcom/color/inner/app/usage/NetworkStatsManagerWrapper;->querySummaryForDeviceWithMobileAllTemplate(Landroid/app/usage/NetworkStatsManager;Ljava/lang/String;JJ)J

    move-result-wide v0

    return-wide v0

    .line 26
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v1, v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static querySummaryForDeviceWithWifiTemplate(Landroid/app/usage/NetworkStatsManager;JJ)J
    .locals 2
    .param p0, "networkStatsManager"    # Landroid/app/usage/NetworkStatsManager;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 37
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p0, p1, p2, p3, p4}, Lcom/color/inner/app/usage/NetworkStatsManagerWrapper;->querySummaryForDeviceWithWifiTemplate(Landroid/app/usage/NetworkStatsManager;JJ)J

    move-result-wide v0

    return-wide v0

    .line 40
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v1, v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
