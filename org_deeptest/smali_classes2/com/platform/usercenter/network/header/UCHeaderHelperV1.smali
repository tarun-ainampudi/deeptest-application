.class public Lcom/platform/usercenter/network/header/UCHeaderHelperV1;
.super Ljava/lang/Object;
.source "UCHeaderHelperV1.java"


# static fields
.field public static final DEFAULT_NULL:Ljava/lang/String; = ""

.field public static final HEADER_ACCEPT_LANGUAGE:Ljava/lang/String; = "accept-language"

.field public static final HEADER_APP:Ljava/lang/String; = "Ext-App"

.field public static final HEADER_INSTANT_VERSION:Ljava/lang/String; = "Ext-Instant-Version"

.field public static final HEADER_MOBILE:Ljava/lang/String; = "Ext-Mobile"

.field public static final HEADER_SYSTEM:Ljava/lang/String; = "Ext-System"

.field public static final HEADER_USER:Ljava/lang/String; = "Ext-USER"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HEADER_X_BUSINESS_SYSTEM:Ljava/lang/String; = "X-BusinessSystem"

.field public static final HEADER_X_CLIENT_COLOR_OSVERSION:Ljava/lang/String; = "X-Client-HTOSVersion"

.field public static final HEADER_X_CLIENT_COUNTRY:Ljava/lang/String; = "X-Client-Country"

.field public static final HEADER_X_CLIENT_DEVICE:Ljava/lang/String; = "X-Client-Device"

.field public static final HEADER_X_CLIENT_DEVICE_NAME:Ljava/lang/String; = "X-Client-DeviceName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HEADER_X_CLIENT_LOCALE:Ljava/lang/String; = "X-Client-Locale"

.field public static final HEADER_X_CLIENT_PACKAGE:Ljava/lang/String; = "X-Client-package"

.field public static final HEADER_X_CLIENT_REGISTER_ID:Ljava/lang/String; = "X-Client-Registerid"

.field public static final HEADER_X_CLIENT_TIME_ZONE:Ljava/lang/String; = "X-Client-Timezone"

.field public static final HEADER_X_CLIENT_WIFISSID:Ljava/lang/String; = "X-Client-Wifissid"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HEADER_X_DEVICE:Ljava/lang/String; = "X-Device"

.field public static final HEADER_X_FROM_HT:Ljava/lang/String; = "X-From-HT"

.field public static final HEADER_X_I_V:Ljava/lang/String; = "X-I-V"

.field public static final HEADER_X_KEY:Ljava/lang/String;

.field public static final HEADER_X_SECURITY:Ljava/lang/String; = "X-Security"

.field public static final HEADER_X_SYSTEM:Ljava/lang/String; = "X-System"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getProviderXKeyXor8()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/platform/usercenter/network/header/UCHeaderHelperV1;->HEADER_X_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildCommonHeader(Landroid/content/Context;)Ljava/util/Map;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-static {}, Lcom/platform/usercenter/tools/datastructure/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 71
    .local v0, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/platform/usercenter/network/header/UCHeaderHelperV1;->createExtSystem(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "extSystem":Ljava/lang/String;
    const-string v2, "Ext-System"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/4 v2, 0x0

    invoke-static {v2, p0}, Lcom/platform/usercenter/network/header/UCHeaderHelperV1;->createExtMobile(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "extMobile":Ljava/lang/String;
    const-string v3, "Ext-Mobile"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v3, "accept-language"

    invoke-static {}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v3, "X-From-HT"

    const-string v4, "true"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v3, "X-Client-package"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v3, "X-Client-Country"

    invoke-static {}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getCurRegion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v3, "X-Client-Locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v3, "X-Client-Timezone"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v3, "X-Client-HTOSVersion"

    sget v4, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->mRomVersionCode:I

    .line 89
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v3, "X-BusinessSystem"

    invoke-static {}, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->getXBusinessSystem()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v3, "X-Security"

    invoke-static {p0}, Lcom/platform/usercenter/network/header/DeviceSecurityHeader;->getDeviceSecurityHeader(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v3, "X-System"

    invoke-static {p0}, Lcom/platform/usercenter/network/header/UCHeaderHelperV1;->createXSystem(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 96
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "wd"

    invoke-static {p0}, Lcom/platform/usercenter/tools/ui/DisplayUtil;->getRealScreenWidth(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    const-string v4, "ht"

    invoke-static {p0}, Lcom/platform/usercenter/tools/ui/DisplayUtil;->getRealScreenHeight(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    const-string v4, "devicetype"

    invoke-static {p0}, Lcom/platform/usercenter/tools/device/UCDeviceTypeFactory;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "json":Ljava/lang/String;
    invoke-static {v4}, Lcom/platform/usercenter/tools/algorithm/Base64Helper;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "jsonBase64":Ljava/lang/String;
    const-string v6, "X-Device"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "json":Ljava/lang/String;
    .end local v5    # "jsonBase64":Ljava/lang/String;
    goto :goto_0

    .line 102
    :catch_0
    move-exception v3

    .line 104
    :goto_0
    return-object v0
.end method

.method public static declared-synchronized buildHeader(Landroid/content/Context;Lcom/platform/usercenter/network/header/IBizHeaderManager;)Ljava/util/Map;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iBizHeader"    # Lcom/platform/usercenter/network/header/IBizHeaderManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/platform/usercenter/network/header/IBizHeaderManager;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/platform/usercenter/network/header/UCHeaderHelperV1;

    monitor-enter v0

    .line 109
    if-nez p1, :cond_0

    .line 110
    :try_start_0
    new-instance v1, Lcom/platform/usercenter/network/header/UCDefaultBizHeader;

    invoke-direct {v1}, Lcom/platform/usercenter/network/header/UCDefaultBizHeader;-><init>()V

    move-object p1, v1

    goto :goto_0

    .line 108
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "iBizHeader":Lcom/platform/usercenter/network/header/IBizHeaderManager;
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 112
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "iBizHeader":Lcom/platform/usercenter/network/header/IBizHeaderManager;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/platform/usercenter/tools/datastructure/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 113
    .local v1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/platform/usercenter/network/header/UCHeaderHelperV1;->buildCommonHeader(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 116
    const-string v2, "X-Client-Device"

    invoke-interface {p1}, Lcom/platform/usercenter/network/header/IBizHeaderManager;->userDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v2, "X-Client-Registerid"

    invoke-interface {p1}, Lcom/platform/usercenter/network/header/IBizHeaderManager;->pushId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v2, "Ext-Instant-Version"

    invoke-interface {p1}, Lcom/platform/usercenter/network/header/IBizHeaderManager;->instantVerson()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-interface {p1}, Lcom/platform/usercenter/network/header/IBizHeaderManager;->extApp()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "extApp":Ljava/lang/String;
    const-string v3, "Ext-App"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit v0

    return-object v1

    .line 108
    .end local v1    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "extApp":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "iBizHeader":Lcom/platform/usercenter/network/header/IBizHeaderManager;
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static createExtApp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extAppSecrekey"    # Ljava/lang/String;
    .param p2, "extAppVer"    # I
    .param p3, "extAppPkg"    # Ljava/lang/String;

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createExtMobile(ZLandroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "isHtml"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    .line 202
    invoke-static {}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getSerialNum()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    .line 204
    invoke-static {p1}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->sIsExp:Z

    if-eqz v1, :cond_2

    const-string v1, "0"

    goto :goto_2

    :cond_2
    const-string v1, "1"

    .line 211
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-static {}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getCurRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createExtSystem(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    invoke-static {}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-static {}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getOsVersionRelease()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->sIsExp:Z

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {p0}, Lcom/platform/usercenter/tools/net/NetInfoHelper;->getNetTypeId(Landroid/content/Context;)I

    move-result v1

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->sIsExp:Z

    if-eqz v1, :cond_1

    const-string v1, ""

    goto :goto_1

    .line 147
    :cond_1
    invoke-static {}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getManufactureBySystemInfo()Ljava/lang/String;

    move-result-object v1

    .line 145
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-static {}, Lcom/platform/usercenter/tools/os/UCOSVersionUtil;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {p0}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getOperators(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-static {p0}, Lcom/platform/usercenter/tools/ApkInfoHelper;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createExtUser(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 173
    invoke-static {p0}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createXSystem(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 225
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 227
    .local v0, "object":Lorg/json/JSONObject;
    invoke-static {}, Lcom/platform/usercenter/tools/os/MultiUserUtil;->getUserId()I

    move-result v1

    .line 228
    .local v1, "userId":I
    const-string v2, "uid"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    invoke-static {p0}, Lcom/platform/usercenter/tools/os/MultiUserUtil;->getSerialNumberForUser(Landroid/content/Context;)J

    move-result-wide v2

    .line 230
    .local v2, "serialNumberForUser":J
    const-string v4, "usn"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string v4, "utype"

    invoke-static {p0}, Lcom/platform/usercenter/tools/os/MultiUserUtil;->getUserType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string v4, "rpname"

    invoke-static {}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getRomProductName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    const-string v4, "rotaver"

    invoke-static {}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getRomBuildOtaVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, "json":Ljava/lang/String;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 238
    .local v5, "bytes":[B
    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 239
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v1    # "userId":I
    .end local v2    # "serialNumberForUser":J
    .end local v4    # "json":Ljava/lang/String;
    .end local v5    # "bytes":[B
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 242
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    return-object v0
.end method
