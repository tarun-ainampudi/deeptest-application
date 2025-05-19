.class public Lcom/heytap/compat/os/storage/VolumeInfoNative;
.super Ljava/lang/Object;
.source "VolumeInfoNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumeInfoNative"


# instance fields
.field private mVolumeInfoObj:Ljava/lang/Object;

.field private mVolumeInfoWrapper:Lcom/color/inner/os/storage/VolumeInfoWrapper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method constructor <init>(Lcom/color/inner/os/storage/VolumeInfoWrapper;)V
    .locals 0
    .param p1, "vol"    # Lcom/color/inner/os/storage/VolumeInfoWrapper;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/heytap/compat/os/storage/VolumeInfoNative;->mVolumeInfoWrapper:Lcom/color/inner/os/storage/VolumeInfoWrapper;

    .line 22
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "vol"    # Ljava/lang/Object;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/heytap/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method public getFsUuid()Ljava/lang/String;
    .locals 1
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

    .line 81
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/heytap/compat/os/storage/VolumeInfoNative;->mVolumeInfoWrapper:Lcom/color/inner/os/storage/VolumeInfoWrapper;

    invoke-virtual {v0}, Lcom/color/inner/os/storage/VolumeInfoWrapper;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
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

    .line 51
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/heytap/compat/os/storage/VolumeInfoNative;->mVolumeInfoWrapper:Lcom/color/inner/os/storage/VolumeInfoWrapper;

    invoke-virtual {v0}, Lcom/color/inner/os/storage/VolumeInfoWrapper;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 54
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public getPath()Ljava/io/File;
    .locals 1
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

    .line 61
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/heytap/compat/os/storage/VolumeInfoNative;->mVolumeInfoWrapper:Lcom/color/inner/os/storage/VolumeInfoWrapper;

    invoke-virtual {v0}, Lcom/color/inner/os/storage/VolumeInfoWrapper;->getPath()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public getStringPath()Ljava/lang/String;
    .locals 1
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

    .line 71
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/heytap/compat/os/storage/VolumeInfoNative;->mVolumeInfoWrapper:Lcom/color/inner/os/storage/VolumeInfoWrapper;

    invoke-virtual {v0}, Lcom/color/inner/os/storage/VolumeInfoWrapper;->getStringPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public getVolumeInfo()Ljava/lang/Object;
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

    .line 31
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/heytap/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    return-object v0

    .line 34
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public getVolumeInfoWrapper()Lcom/color/inner/os/storage/VolumeInfoWrapper;
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

    .line 41
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/heytap/compat/os/storage/VolumeInfoNative;->mVolumeInfoWrapper:Lcom/color/inner/os/storage/VolumeInfoWrapper;

    return-object v0

    .line 44
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public isSd()Z
    .locals 1
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

    .line 91
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/heytap/compat/os/storage/VolumeInfoNative;->mVolumeInfoWrapper:Lcom/color/inner/os/storage/VolumeInfoWrapper;

    invoke-virtual {v0}, Lcom/color/inner/os/storage/VolumeInfoWrapper;->isSd()Z

    move-result v0

    return v0

    .line 94
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
