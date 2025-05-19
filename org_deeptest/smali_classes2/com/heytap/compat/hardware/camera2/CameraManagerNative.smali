.class public Lcom/heytap/compat/hardware/camera2/CameraManagerNative;
.super Ljava/lang/Object;
.source "CameraManagerNative.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static addAuthResultInfo(Landroid/content/Context;IIILjava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "permBits"    # I
    .param p4, "packageName"    # Ljava/lang/String;
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

    .line 22
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager;->getInstance()Landroid/hardware/camera2/OplusCameraManager;

    move-result-object v1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/camera2/OplusCameraManager;->addAuthResultInfo(Landroid/content/Context;IIILjava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    const-string v0, "camera"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 26
    .local v0, "manager":Landroid/hardware/camera2/CameraManager;
    invoke-static {v0, p1, p2, p3, p4}, Lcom/color/inner/hardware/camera2/CameraManagerWrapper;->addAuthResultInfo(Landroid/hardware/camera2/CameraManager;IIILjava/lang/String;)V

    .line 27
    .end local v0    # "manager":Landroid/hardware/camera2/CameraManager;
    nop

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDeathRecipient(Landroid/hardware/camera2/CameraManager;Landroid/os/IBinder;)V
    .locals 2
    .param p0, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p1, "client"    # Landroid/os/IBinder;
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

    .line 36
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager;->getInstance()Landroid/hardware/camera2/OplusCameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/OplusCameraManager;->setDeathRecipient(Landroid/os/IBinder;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-static {p0, p1}, Lcom/color/inner/hardware/camera2/CameraManagerWrapper;->setDeathRecipient(Landroid/hardware/camera2/CameraManager;Landroid/os/IBinder;)V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
