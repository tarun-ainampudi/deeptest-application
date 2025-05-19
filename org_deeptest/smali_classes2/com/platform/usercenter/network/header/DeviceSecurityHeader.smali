.class public Lcom/platform/usercenter/network/header/DeviceSecurityHeader;
.super Ljava/lang/Object;
.source "DeviceSecurityHeader.java"


# static fields
.field private static securityHeader:Lorg/json/JSONObject;


# instance fields
.field private deviceName:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private serial:Ljava/lang/String;

.field private wifissid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceSecurityHeader(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 38
    :try_start_0
    sget-object v0, Lcom/platform/usercenter/network/header/DeviceSecurityHeader;->securityHeader:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/platform/usercenter/network/header/DeviceSecurityHeader;->securityHeader:Lorg/json/JSONObject;

    .line 41
    :cond_0
    sget-object v0, Lcom/platform/usercenter/network/header/DeviceSecurityHeader;->securityHeader:Lorg/json/JSONObject;

    const-string v1, "imei"

    invoke-static {p0}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getOSIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    sget-object v0, Lcom/platform/usercenter/network/header/DeviceSecurityHeader;->securityHeader:Lorg/json/JSONObject;

    const-string v1, "mac"

    invoke-static {p0}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    sget-object v0, Lcom/platform/usercenter/network/header/DeviceSecurityHeader;->securityHeader:Lorg/json/JSONObject;

    const-string v1, "serialNum"

    invoke-static {}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getSerialNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    sget-object v0, Lcom/platform/usercenter/network/header/DeviceSecurityHeader;->securityHeader:Lorg/json/JSONObject;

    const-string v1, "serial"

    invoke-static {}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getSerialNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    invoke-static {}, Lcom/platform/usercenter/tools/os/Version;->hasM()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 49
    .local v0, "hasPermission":Z
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "READ_PHONE_STATE hasPermission = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/platform/usercenter/tools/log/UCLogUtil;->d(Ljava/lang/String;)V

    .line 50
    sget-object v3, Lcom/platform/usercenter/network/header/DeviceSecurityHeader;->securityHeader:Lorg/json/JSONObject;

    const-string v4, "imei1"

    invoke-static {p0}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    sget-object v3, Lcom/platform/usercenter/network/header/DeviceSecurityHeader;->securityHeader:Lorg/json/JSONObject;

    const-string v4, "hasPermission"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 52
    sget-object v3, Lcom/platform/usercenter/network/header/DeviceSecurityHeader;->securityHeader:Lorg/json/JSONObject;

    const-string v4, "wifissid"

    invoke-static {p0}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getWifiSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    sget-object v3, Lcom/platform/usercenter/network/header/DeviceSecurityHeader;->securityHeader:Lorg/json/JSONObject;

    const-string v4, "deviceName"

    invoke-static {p0}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    sget-object v3, Lcom/platform/usercenter/network/header/DeviceSecurityHeader;->securityHeader:Lorg/json/JSONObject;

    const-string v4, "marketName"

    invoke-static {}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getMarketName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    invoke-static {p0, v1}, Lcom/platform/usercenter/tools/sim/TelephonyManagerUtils;->getTelEntity(Landroid/content/Context;I)Lcom/platform/usercenter/tools/sim/TelEntity;

    move-result-object v1

    .line 58
    .local v1, "sim1":Lcom/platform/usercenter/tools/sim/TelEntity;
    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/platform/usercenter/tools/sim/TelEntity;->subId:Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 59
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .local v3, "sim0Json":Lorg/json/JSONObject;
    const-string v4, "iccid"

    iget-object v5, v1, Lcom/platform/usercenter/tools/sim/TelEntity;->iccid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v4, "imsi"

    iget-object v5, v1, Lcom/platform/usercenter/tools/sim/TelEntity;->imsi:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v4, "phoneNum"

    iget-object v5, v1, Lcom/platform/usercenter/tools/sim/TelEntity;->phoneNum:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    sget-object v4, Lcom/platform/usercenter/network/header/DeviceSecurityHeader;->securityHeader:Lorg/json/JSONObject;

    const-string v5, "slot0"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    .end local v3    # "sim0Json":Lorg/json/JSONObject;
    :cond_3
    invoke-static {p0, v2}, Lcom/platform/usercenter/tools/sim/TelephonyManagerUtils;->getTelEntity(Landroid/content/Context;I)Lcom/platform/usercenter/tools/sim/TelEntity;

    move-result-object v2

    .line 66
    .local v2, "sim2":Lcom/platform/usercenter/tools/sim/TelEntity;
    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/platform/usercenter/tools/sim/TelEntity;->subId:Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 67
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .local v3, "sim1Json":Lorg/json/JSONObject;
    const-string v4, "iccid"

    iget-object v5, v2, Lcom/platform/usercenter/tools/sim/TelEntity;->iccid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v4, "imsi"

    iget-object v5, v2, Lcom/platform/usercenter/tools/sim/TelEntity;->imsi:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v4, "phoneNum"

    iget-object v5, v2, Lcom/platform/usercenter/tools/sim/TelEntity;->phoneNum:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    sget-object v4, Lcom/platform/usercenter/network/header/DeviceSecurityHeader;->securityHeader:Lorg/json/JSONObject;

    const-string v5, "slot1"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    .end local v3    # "sim1Json":Lorg/json/JSONObject;
    :cond_4
    sget-object v3, Lcom/platform/usercenter/network/header/DeviceSecurityHeader;->securityHeader:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 74
    .end local v0    # "hasPermission":Z
    .end local v1    # "sim1":Lcom/platform/usercenter/tools/sim/TelEntity;
    .end local v2    # "sim2":Lcom/platform/usercenter/tools/sim/TelEntity;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method
