.class public Lcom/platform/usercenter/tools/os/UCOSVersionUtil;
.super Ljava/lang/Object;
.source "UCOSVersionUtil.java"


# static fields
.field public static final COLOR_OS_1_0:I = 0x1

.field public static final COLOR_OS_1_2:I = 0x2

.field public static final COLOR_OS_1_4:I = 0x3

.field public static final COLOR_OS_2_0:I = 0x4

.field public static final COLOR_OS_2_1:I = 0x5

.field public static final COLOR_OS_3_0:I = 0x6

.field public static final COLOR_OS_3_1:I = 0x7

.field public static final COLOR_OS_3_2:I = 0x8

.field public static final COLOR_OS_5_0:I = 0x9

.field public static final COLOR_OS_5_1:I = 0xa

.field public static final COLOR_OS_5_2:I = 0xb

.field public static final COLOR_OS_6_0:I = 0xc

.field public static final COLOR_OS_6_1:I = 0xd

.field public static final COLOR_OS_6_2:I = 0xe

.field public static final COLOR_OS_6_7:I = 0xf

.field public static final COLOR_OS_7_0:I = 0x10

.field public static final COLOR_OS_7_1:I = 0x11

.field public static final COLOR_OS_7_2:I = 0x12

.field public static final DEFAULT_NULL:Ljava/lang/String; = ""

.field public static final DEFAULT_REGION:Ljava/lang/String; = "CN"

.field public static final OplusOS_11_0:I = 0x13

.field public static final OplusOS_11_1:I = 0x14

.field public static final OplusOS_11_2:I = 0x15

.field public static final OplusOS_11_3:I = 0x16

.field public static final OplusOS_12_0:I = 0x17

.field public static final OplusOS_12_1:I = 0x18

.field public static final OplusOS_12_2:I = 0x19

.field public static final OplusOS_1_0:I = 0x1

.field public static final OplusOS_1_2:I = 0x2

.field public static final OplusOS_1_4:I = 0x3

.field public static final OplusOS_2_0:I = 0x4

.field public static final OplusOS_2_1:I = 0x5

.field public static final OplusOS_3_0:I = 0x6

.field public static final OplusOS_3_1:I = 0x7

.field public static final OplusOS_3_2:I = 0x8

.field public static final OplusOS_5_0:I = 0x9

.field public static final OplusOS_5_1:I = 0xa

.field public static final OplusOS_5_2:I = 0xb

.field public static final OplusOS_6_0:I = 0xc

.field public static final OplusOS_6_1:I = 0xd

.field public static final OplusOS_6_2:I = 0xe

.field public static final OplusOS_6_7:I = 0xf

.field public static final OplusOS_7_0:I = 0x10

.field public static final OplusOS_7_1:I = 0x11

.field public static final OplusOS_7_2:I = 0x12

.field public static final UNKNOWN:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    return-void
.end method

.method public static getCurRegion()Ljava/lang/String;
    .locals 1

    .line 212
    invoke-static {}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getCurRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 195
    const-string v0, ""

    .line 197
    .local v0, "deviceName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCSystemInfoXor8Provider;->clazzColorSysBuild()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 198
    .local v1, "romClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    .line 199
    return-object v0

    .line 202
    :cond_0
    const-string v2, "getDeviceName"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 203
    .local v2, "getOSVERSION":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 204
    .local v3, "o":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 207
    .end local v1    # "romClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getOSVERSION":Ljava/lang/reflect/Method;
    .end local v3    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 206
    :catch_0
    move-exception v1

    .line 208
    :goto_0
    return-object v0
.end method

.method public static getOSVersionCode()I
    .locals 5

    .line 176
    const/4 v0, 0x0

    move v1, v0

    .line 179
    .local v1, "curRomVersion":I
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCSystemInfoXor8Provider;->clazzColorSysBuild()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 180
    .local v2, "romClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v2, :cond_0

    .line 181
    return v1

    .line 184
    :cond_0
    nop

    .line 185
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCSystemInfoXor8Provider;->methodColorSysVersion()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 186
    .local v3, "getOSVERSION":Ljava/lang/reflect/Method;
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, "o":Ljava/lang/Object;
    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    .line 189
    .end local v0    # "o":Ljava/lang/Object;
    .end local v2    # "romClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "getOSVERSION":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 191
    :goto_0
    return v1
.end method

.method public static getOsVersion()Ljava/lang/String;
    .locals 3

    .line 222
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCSystemInfoXor8Provider;->romVersionPropertyOPlusSystemName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "romVersion":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCSystemInfoXor8Provider;->romVersionPropertySystemName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    :cond_0
    return-object v0
.end method

.method public static getRomBuildDisplay()Ljava/lang/String;
    .locals 3

    .line 238
    const-string v0, "ro.build.time.fix"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "display":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    const-string v1, "sys.build.display.full_id"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    const-string v1, "ro.build.display.id"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    const-string v1, "ro.build.display.id"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 251
    :cond_3
    return-object v0
.end method
