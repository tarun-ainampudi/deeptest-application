.class public Lcom/heytap/compat/os/BatteryStatsNative;
.super Ljava/lang/Object;
.source "BatteryStatsNative.java"


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.os.BatteryStats"

.field private static final RESULT:Ljava/lang/String; = "result"

.field public static STATS_SINCE_CHARGED:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "BatteryStats"
        type = "epona"
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BatteryStatsNative"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/heytap/compat/os/BatteryStatsNative;->getStatsSinceCharged()I

    move-result v0

    sput v0, Lcom/heytap/compat/os/BatteryStatsNative;->STATS_SINCE_CHARGED:I

    .line 38
    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not support before Q"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "BatteryStatsNative"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private static getStatsSinceCharged()I
    .locals 5

    .line 42
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->appPlatformExists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 43
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    return v1

    .line 46
    :cond_0
    const-string v0, "BatteryStatsNative"

    const-string v2, "not supported before Q"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v2, "android.os.BatteryStats"

    .line 51
    invoke-virtual {v0, v2}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v2, "STATS_SINCE_CHARGED"

    .line 52
    invoke-virtual {v0, v2}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 54
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v2

    .line 55
    .local v2, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v2}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    invoke-virtual {v2}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 58
    :cond_2
    const-string v3, "BatteryStatsNative"

    const-string v4, "STATS_SINCE_CHARGED is not connected with Epona"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v2    # "response":Lcom/heytap/epona/Response;
    :cond_3
    :goto_0
    return v1
.end method
