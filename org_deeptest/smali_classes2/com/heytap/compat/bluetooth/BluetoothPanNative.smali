.class public Lcom/heytap/compat/bluetooth/BluetoothPanNative;
.super Ljava/lang/Object;
.source "BluetoothPanNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPanNative"


# instance fields
.field private mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

.field private mService:Landroid/bluetooth/BluetoothPan;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "proxy"    # Landroid/bluetooth/BluetoothProfile;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    invoke-direct {v0, p1}, Lcom/color/inner/bluetooth/BluetoothPanWrapper;-><init>(Landroid/bluetooth/BluetoothProfile;)V

    iput-object v0, p0, Lcom/heytap/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    instance-of v0, p1, Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_1

    .line 32
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    iput-object v0, p0, Lcom/heytap/compat/bluetooth/BluetoothPanNative;->mService:Landroid/bluetooth/BluetoothPan;

    .line 39
    :cond_1
    :goto_0
    goto :goto_1

    .line 35
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "BluetoothPanNative"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/heytap/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/heytap/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    invoke-virtual {v0, p1}, Lcom/color/inner/bluetooth/BluetoothPanWrapper;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 86
    :cond_0
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "BluetoothPanNative"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/heytap/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/heytap/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    invoke-virtual {v0, p1}, Lcom/color/inner/bluetooth/BluetoothPanWrapper;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 73
    :cond_0
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "BluetoothPanNative"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 47
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/heytap/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/heytap/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    invoke-virtual {v0}, Lcom/color/inner/bluetooth/BluetoothPanWrapper;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/heytap/compat/bluetooth/BluetoothPanNative;->mService:Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/heytap/compat/bluetooth/BluetoothPanNative;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 60
    :cond_1
    goto :goto_0

    .line 56
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "BluetoothPanNative"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/heytap/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/heytap/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    invoke-virtual {v0, p1}, Lcom/color/inner/bluetooth/BluetoothPanWrapper;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 99
    :cond_0
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "BluetoothPanNative"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultProfile()Landroid/bluetooth/BluetoothProfile;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/heytap/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/heytap/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    invoke-virtual {v0}, Lcom/color/inner/bluetooth/BluetoothPanWrapper;->getDefaultProfile()Landroid/bluetooth/BluetoothProfile;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 131
    :cond_0
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "BluetoothPanNative"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isTetheringOn()Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 107
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/heytap/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/heytap/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    invoke-virtual {v1}, Lcom/color/inner/bluetooth/BluetoothPanWrapper;->isTetheringOn()Z

    move-result v1

    return v1

    .line 118
    :cond_0
    goto :goto_0

    .line 111
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isN_MR1()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    iget-object v1, p0, Lcom/heytap/compat/bluetooth/BluetoothPanNative;->mService:Landroid/bluetooth/BluetoothPan;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/heytap/compat/bluetooth/BluetoothPanNative;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    nop

    :cond_2
    return v0

    .line 114
    :cond_3
    new-instance v1, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "BluetoothPanNative"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return v0
.end method
