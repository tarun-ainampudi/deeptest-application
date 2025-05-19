.class public Lcom/heytap/compat/bluetooth/BluetoothDeviceNative;
.super Ljava/lang/Object;
.source "BluetoothDeviceNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/bluetooth/BluetoothDeviceNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_DEVICE:Ljava/lang/String; = "BLUETOOTH_DEVICE"

.field private static final COMPONENT_NAME:Ljava/lang/String; = "bluetooth.BluetoothDevice"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"

.field private static final SETTINGS_VALUE:Ljava/lang/String; = "SETTINGS_VALUE"

.field private static final TAG:Ljava/lang/String; = "BluetoothDeviceNative"

.field private static final TRANSPORT:Ljava/lang/String; = "transport"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "cancelBondProcess"
        type = "epona"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 35
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 36
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v2, "bluetooth.BluetoothDevice"

    .line 37
    invoke-virtual {v0, v2}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v2, "cancelBondProcess"

    .line 38
    invoke-virtual {v0, v2}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 40
    .local v0, "request":Lcom/heytap/epona/Request;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v2, "params":Landroid/os/Bundle;
    const-string v3, "BLUETOOTH_DEVICE"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    invoke-virtual {v0, v2}, Lcom/heytap/epona/Request;->putBundle(Landroid/os/Bundle;)V

    .line 43
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v3

    .line 44
    .local v3, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v3}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    invoke-virtual {v3}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "result"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 47
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v2    # "params":Landroid/os/Bundle;
    .end local v3    # "response":Lcom/heytap/epona/Response;
    :cond_0
    nop

    .line 56
    return v1

    .line 47
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothDeviceWrapper;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    return v1

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createBond(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "transport"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "createBond"
        type = "epona"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "bluetooth.BluetoothDevice"

    .line 65
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "createBond"

    .line 66
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 68
    .local v0, "request":Lcom/heytap/epona/Request;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "BLUETOOTH_DEVICE"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 70
    const-string v2, "transport"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request;->putBundle(Landroid/os/Bundle;)V

    .line 72
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v2

    .line 73
    .local v2, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v2}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {v2}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 76
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "params":Landroid/os/Bundle;
    .end local v2    # "response":Lcom/heytap/epona/Response;
    :cond_0
    nop

    .line 79
    const/4 v0, 0x0

    return v0

    .line 77
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAliasName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 160
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothDeviceWrapper;->getAliasName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    return-object v1
.end method

.method public static getBatteryLevel(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 178
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothDeviceWrapper;->getBatteryLevel(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    return v1
.end method

.method public static getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 238
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothDeviceWrapper;->getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 218
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothDeviceWrapper;->getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static isBluetoothDock(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 198
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothDeviceWrapper;->isBluetoothDock(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static isBondingInitiatedLocally(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 208
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothDeviceWrapper;->isBondingInitiatedLocally(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 144
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothDeviceWrapper;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static isTwsPlusDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 258
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-static {}, Lcom/heytap/compat/bluetooth/BluetoothDeviceNative$ReflectInfo;->access$000()Lcom/heytap/reflect/RefMethod;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/heytap/reflect/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 261
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "throwable":Ljava/lang/Throwable;
    new-instance v1, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v1, v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "removeBond"
        type = "epona"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 87
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v2, "bluetooth.BluetoothDevice"

    .line 88
    invoke-virtual {v0, v2}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v2, "removeBond"

    .line 89
    invoke-virtual {v0, v2}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 91
    .local v0, "request":Lcom/heytap/epona/Request;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v2, "params":Landroid/os/Bundle;
    const-string v3, "BLUETOOTH_DEVICE"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 93
    invoke-virtual {v0, v2}, Lcom/heytap/epona/Request;->putBundle(Landroid/os/Bundle;)V

    .line 94
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v3

    .line 95
    .local v3, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v3}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    invoke-virtual {v3}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "result"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 98
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v2    # "params":Landroid/os/Bundle;
    .end local v3    # "response":Lcom/heytap/epona/Response;
    :cond_0
    nop

    .line 107
    return v1

    .line 98
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothDeviceWrapper;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    return v1

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 188
    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/bluetooth/BluetoothDeviceWrapper;->setAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "value"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 248
    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/bluetooth/BluetoothDeviceWrapper;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 5
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "pairingConfirmation"    # Z
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "setPairingConfirmation"
        type = "epona"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 114
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "bluetooth.BluetoothDevice"

    .line 116
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "setPairingConfirmation"

    .line 117
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 119
    .local v0, "request":Lcom/heytap/epona/Request;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "SETTINGS_VALUE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 121
    const-string v2, "BLUETOOTH_DEVICE"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 122
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request;->putBundle(Landroid/os/Bundle;)V

    .line 123
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v2

    .line 124
    .local v2, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v2}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    invoke-virtual {v2}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 127
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "params":Landroid/os/Bundle;
    .end local v2    # "response":Lcom/heytap/epona/Response;
    :cond_0
    nop

    .line 130
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "value"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 228
    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/bluetooth/BluetoothDeviceWrapper;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method
