.class public Lcom/heytap/compat/internal/os/PowerProfileNative;
.super Ljava/lang/Object;
.source "PowerProfileNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PowerProfileNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getAveragePower(Landroid/content/Context;Ljava/lang/String;)D
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 32
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {p0, p1}, Lcom/color/inner/internal/os/PowerProfileWrapper;->getAveragePower(Landroid/content/Context;Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 34
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, p0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 36
    .local v0, "powerProfile":Lcom/android/internal/os/PowerProfile;
    invoke-virtual {v0, p1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1

    .line 38
    .end local v0    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static getBatteryCapacity(Landroid/content/Context;)D
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 22
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p0}, Lcom/color/inner/internal/os/PowerProfileWrapper;->getBatteryCapacity(Landroid/content/Context;)D

    move-result-wide v0

    return-wide v0

    .line 25
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
