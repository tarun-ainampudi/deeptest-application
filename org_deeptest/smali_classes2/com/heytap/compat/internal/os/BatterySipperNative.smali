.class public Lcom/heytap/compat/internal/os/BatterySipperNative;
.super Ljava/lang/Object;
.source "BatterySipperNative.java"


# static fields
.field private static final DEFAULT_VALUE:D = 0.0

.field private static final TAG:Ljava/lang/String; = "BatterySipperNative"


# instance fields
.field private mBatterySipper:Lcom/android/internal/os/BatterySipper;

.field private mBatterySipperWrapper:Lcom/color/inner/internal/os/BatterySipperWrapper;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatterySipper;)V
    .locals 1
    .param p1, "batterySipper"    # Lcom/android/internal/os/BatterySipper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iput-object p1, p0, Lcom/heytap/compat/internal/os/BatterySipperNative;->mBatterySipper:Lcom/android/internal/os/BatterySipper;

    .line 33
    return-void

    .line 31
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method constructor <init>(Lcom/color/inner/internal/os/BatterySipperWrapper;)V
    .locals 1
    .param p1, "batterySipper"    # Lcom/color/inner/internal/os/BatterySipperWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    iput-object p1, p0, Lcom/heytap/compat/internal/os/BatterySipperNative;->mBatterySipperWrapper:Lcom/color/inner/internal/os/BatterySipperWrapper;

    .line 25
    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getPkgName()Ljava/lang/String;
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

    .line 38
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/heytap/compat/internal/os/BatterySipperNative;->mBatterySipperWrapper:Lcom/color/inner/internal/os/BatterySipperWrapper;

    invoke-virtual {v0}, Lcom/color/inner/internal/os/BatterySipperWrapper;->getPkgName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public getUid()I
    .locals 1
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

    .line 48
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/heytap/compat/internal/os/BatterySipperNative;->mBatterySipperWrapper:Lcom/color/inner/internal/os/BatterySipperWrapper;

    invoke-virtual {v0}, Lcom/color/inner/internal/os/BatterySipperWrapper;->getUid()I

    move-result v0

    return v0

    .line 50
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/heytap/compat/internal/os/BatterySipperNative;->mBatterySipper:Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v0

    return v0

    .line 53
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
