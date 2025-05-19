.class public Lcom/heytap/compat/internal/os/BatteryStatsHelperNative;
.super Ljava/lang/Object;
.source "BatteryStatsHelperNative.java"


# static fields
.field private static COMPONENT_NAME:Ljava/lang/String; = null

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBatteryStatusHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mHelper:Lcom/color/inner/internal/os/BatteryStatsHelperWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-string v0, "BatteryStatsHelperNative"

    sput-object v0, Lcom/heytap/compat/internal/os/BatteryStatsHelperNative;->TAG:Ljava/lang/String;

    .line 29
    const-string v0, "com.android.internal.os.BatteryStatsHelper"

    sput-object v0, Lcom/heytap/compat/internal/os/BatteryStatsHelperNative;->COMPONENT_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcom/color/inner/internal/os/BatteryStatsHelperWrapper;

    invoke-direct {v0, p1}, Lcom/color/inner/internal/os/BatteryStatsHelperWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heytap/compat/internal/os/BatteryStatsHelperNative;->mHelper:Lcom/color/inner/internal/os/BatteryStatsHelperWrapper;

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heytap/compat/internal/os/BatteryStatsHelperNative;->mBatteryStatusHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 47
    :goto_0
    goto :goto_1

    .line 43
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/heytap/compat/internal/os/BatteryStatsHelperNative;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method


# virtual methods
.method public create(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .line 54
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/heytap/compat/internal/os/BatteryStatsHelperNative;->mHelper:Lcom/color/inner/internal/os/BatteryStatsHelperWrapper;

    invoke-virtual {v0, p1}, Lcom/color/inner/internal/os/BatteryStatsHelperWrapper;->create(Landroid/os/Bundle;)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/heytap/compat/internal/os/BatteryStatsHelperNative;->mBatteryStatusHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 63
    :goto_0
    goto :goto_1

    .line 59
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/heytap/compat/internal/os/BatteryStatsHelperNative;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public getAppPowerConsumed(I)D
    .locals 4
    .param p1, "appUid"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "getAppPowerConsumed"
        type = "epona"
    .end annotation

    .line 116
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    sget-object v1, Lcom/heytap/compat/internal/os/BatteryStatsHelperNative;->COMPONENT_NAME:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "getAppPowerConsumed"

    .line 119
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "appUid"

    .line 120
    invoke-virtual {v0, v1, p1}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 122
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 123
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    return-wide v2

    .line 126
    :cond_0
    sget-object v2, Lcom/heytap/compat/internal/os/BatteryStatsHelperNative;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    nop

    .line 133
    goto :goto_0

    .line 129
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/heytap/compat/internal/os/BatteryStatsHelperNative;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUsageList()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/heytap/compat/internal/os/BatterySipperNative;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/heytap/compat/internal/os/BatterySipperNative;>;"
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/heytap/compat/internal/os/BatteryStatsHelperNative;->mHelper:Lcom/color/inner/internal/os/BatteryStatsHelperWrapper;

    invoke-virtual {v1}, Lcom/color/inner/internal/os/BatteryStatsHelperWrapper;->getUsageList()Ljava/util/List;

    move-result-object v1

    .line 90
    .local v1, "origin":Ljava/util/List;, "Ljava/util/List<Lcom/color/inner/internal/os/BatterySipperWrapper;>;"
    if-eqz v1, :cond_0

    .line 91
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/inner/internal/os/BatterySipperWrapper;

    .line 92
    .local v3, "sipper":Lcom/color/inner/internal/os/BatterySipperWrapper;
    new-instance v4, Lcom/heytap/compat/internal/os/BatterySipperNative;

    invoke-direct {v4, v3}, Lcom/heytap/compat/internal/os/BatterySipperNative;-><init>(Lcom/color/inner/internal/os/BatterySipperWrapper;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v3    # "sipper":Lcom/color/inner/internal/os/BatterySipperWrapper;
    goto :goto_0

    .line 95
    .end local v1    # "origin":Ljava/util/List;, "Ljava/util/List<Lcom/color/inner/internal/os/BatterySipperWrapper;>;"
    :cond_0
    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isO()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    iget-object v1, p0, Lcom/heytap/compat/internal/os/BatteryStatsHelperNative;->mBatteryStatusHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v1

    .line 97
    .local v1, "origin":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v1, :cond_2

    .line 98
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    .line 99
    .local v3, "sipper":Lcom/android/internal/os/BatterySipper;
    new-instance v4, Lcom/heytap/compat/internal/os/BatterySipperNative;

    invoke-direct {v4, v3}, Lcom/heytap/compat/internal/os/BatterySipperNative;-><init>(Lcom/android/internal/os/BatterySipper;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v3    # "sipper":Lcom/android/internal/os/BatterySipper;
    goto :goto_1

    .line 102
    .end local v1    # "origin":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_2
    nop

    .line 107
    :goto_2
    goto :goto_3

    .line 103
    :cond_3
    new-instance v1, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/heytap/compat/internal/os/BatteryStatsHelperNative;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_3
    return-object v0
.end method

.method public refreshStats(II)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "userId"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 70
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/heytap/compat/internal/os/BatteryStatsHelperNative;->mHelper:Lcom/color/inner/internal/os/BatteryStatsHelperWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/color/inner/internal/os/BatteryStatsHelperWrapper;->refreshStats(II)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/heytap/compat/internal/os/BatteryStatsHelperNative;->mBatteryStatusHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 79
    :goto_0
    goto :goto_1

    .line 75
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/heytap/compat/internal/os/BatteryStatsHelperNative;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method
