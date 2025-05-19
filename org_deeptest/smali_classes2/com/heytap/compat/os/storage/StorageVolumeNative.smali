.class public Lcom/heytap/compat/os/storage/StorageVolumeNative;
.super Ljava/lang/Object;
.source "StorageVolumeNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/os/storage/StorageVolumeNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageVolumeNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getFatVolumeId(Landroid/os/storage/StorageVolume;)I
    .locals 1
    .param p0, "storageVolume"    # Landroid/os/storage/StorageVolume;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p0}, Lcom/color/inner/os/storage/StorageVolumeWrapper;->getFatVolumeId(Landroid/os/storage/StorageVolume;)I

    move-result v0

    return v0

    .line 56
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getFatVolumeId()I

    move-result v0

    return v0

    .line 59
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static getOplusReadOnlyType(Landroid/os/storage/StorageVolume;)I
    .locals 2
    .param p0, "storageVolume"    # Landroid/os/storage/StorageVolume;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 42
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0}, Lcom/color/inner/os/storage/StorageVolumeWrapper;->getReadOnlyType(Landroid/os/storage/StorageVolume;)I

    move-result v0

    return v0

    .line 44
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-static {}, Lcom/heytap/compat/os/storage/StorageVolumeNative$ReflectInfo;->access$000()Lcom/heytap/reflect/RefMethod;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 47
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static getPath(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 1
    .param p0, "storageVolume"    # Landroid/os/storage/StorageVolume;
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

    .line 30
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p0}, Lcom/color/inner/os/storage/StorageVolumeWrapper;->getPath(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 32
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 35
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
