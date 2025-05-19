.class Lcom/platform/usercenter/network/header/UCHeaderHelperV2$HeaderXSystem;
.super Ljava/lang/Object;
.source "UCHeaderHelperV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/platform/usercenter/network/header/UCHeaderHelperV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HeaderXSystem"
.end annotation


# static fields
.field public static final X_SYSTEM:Ljava/lang/String; = "X-Sys"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildHeader(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 212
    invoke-static {}, Lcom/platform/usercenter/tools/datastructure/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 213
    .local v0, "xSys":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 218
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "romVersion"

    invoke-static {}, Lcom/platform/usercenter/tools/os/UCOSVersionUtil;->getOsVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string v2, "osVersion"

    invoke-static {}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getOsVersionRelease()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    const-string v2, "androidVersion"

    invoke-static {}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getOsVersionSDK()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string v2, "osVersionCode"

    invoke-static {}, Lcom/platform/usercenter/tools/os/UCOSVersionUtil;->getOSVersionCode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 222
    const-string v2, "osBuildTime"

    invoke-static {}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getBuildTime()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 223
    invoke-static {p0}, Lcom/platform/usercenter/tools/device/OpenIDHelper;->getOpenIdHeader(Landroid/content/Context;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 224
    const-string v2, "auid"

    invoke-static {}, Lcom/platform/usercenter/tools/device/OpenIDHelper;->getAUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v2, "ouid"

    invoke-static {}, Lcom/platform/usercenter/tools/device/OpenIDHelper;->getOUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string v2, "duid"

    invoke-static {}, Lcom/platform/usercenter/tools/device/OpenIDHelper;->getDUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    const-string v2, "guid"

    invoke-static {}, Lcom/platform/usercenter/tools/device/OpenIDHelper;->getGUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string v2, "apid"

    invoke-static {}, Lcom/platform/usercenter/tools/device/OpenIDHelper;->getAPID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    invoke-static {}, Lcom/platform/usercenter/tools/os/MultiUserUtil;->getUserId()I

    move-result v2

    .line 231
    .local v2, "userId":I
    const-string v3, "uid"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    invoke-static {p0}, Lcom/platform/usercenter/tools/os/MultiUserUtil;->getSerialNumberForUser(Landroid/content/Context;)J

    move-result-wide v3

    .line 233
    .local v3, "serialNumberForUser":J
    const-string v5, "usn"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    invoke-static {p0}, Lcom/platform/usercenter/tools/os/MultiUserUtil;->getUserType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 235
    .local v5, "userType":Ljava/lang/String;
    const-string v6, "utype"

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    const-string v6, "betaEnv"

    invoke-static {p0}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->checkBetaEnv(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 238
    const-string v6, "rpname"

    invoke-static {}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getRomProductName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    const-string v6, "rotaver"

    invoke-static {}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getRomBuildOtaVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string v6, "X-Sys"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "utf-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "userId":I
    .end local v3    # "serialNumberForUser":J
    .end local v5    # "userType":Ljava/lang/String;
    goto :goto_0

    .line 244
    :catch_0
    move-exception v2

    .line 245
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v2}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    goto :goto_1

    .line 242
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    .line 243
    .local v2, "e":Lorg/json/JSONException;
    invoke-static {v2}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 246
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    nop

    .line 248
    :goto_1
    return-object v0
.end method
