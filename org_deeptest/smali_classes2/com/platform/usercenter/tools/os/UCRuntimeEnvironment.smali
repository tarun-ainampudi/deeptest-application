.class public Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;
.super Ljava/lang/Object;
.source "UCRuntimeEnvironment.java"


# static fields
.field public static isOrange:Z

.field public static isRed:Z

.field private static mHasInit:Z

.field public static mRomVersionCode:I

.field public static regionMark:Ljava/lang/String;

.field public static sIsExp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->isOrange:Z

    .line 32
    sput-boolean v0, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->isRed:Z

    .line 37
    const-string v0, "CN"

    sput-object v0, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->regionMark:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getXBusinessSystem()Ljava/lang/String;
    .locals 1

    .line 68
    sget-boolean v0, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->isOrange:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getBrandOrangeUppercase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    sget-boolean v0, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->isRed:Z

    if-eqz v0, :cond_1

    .line 71
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getBrandRed()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :cond_1
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getBrandGreenUppercase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 40
    sget-boolean v0, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->mHasInit:Z

    if-nez v0, :cond_9

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->mHasInit:Z

    .line 42
    invoke-static {}, Lcom/platform/usercenter/tools/os/UCOSVersionUtil;->getOSVersionCode()I

    move-result v1

    sput v1, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->mRomVersionCode:I

    .line 43
    invoke-static {}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->isOrange()Z

    move-result v1

    sput-boolean v1, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->isOrange:Z

    .line 44
    invoke-static {p0}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->isRed(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->isRed:Z

    .line 45
    invoke-static {}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getRegionMark()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->regionMark:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->isRedExpOS()Z

    move-result v1

    .line 47
    .local v1, "isRedExp":Z
    const/4 v2, 0x0

    .line 48
    .local v2, "isGreenOrOrangeExp":Z
    const/4 v3, 0x0

    .line 49
    .local v3, "isRegionExp":Z
    sget-boolean v4, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->isRed:Z

    const/4 v5, 0x0

    if-nez v4, :cond_6

    .line 50
    sget v4, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->mRomVersionCode:I

    const/16 v6, 0x12

    if-le v4, v6, :cond_0

    .line 51
    const-string v4, "CN"

    sget-object v6, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->regionMark:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    xor-int/2addr v4, v0

    move v3, v4

    goto :goto_4

    .line 52
    :cond_0
    sget v4, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->mRomVersionCode:I

    const/16 v6, 0x9

    if-le v4, v6, :cond_3

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 55
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCSystemInfoXor8Provider;->getExpSystemFeatureNameXor8()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v0

    :goto_1
    move v2, v4

    goto :goto_4

    .line 58
    :cond_3
    const-string v4, "US"

    .line 59
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCSystemInfoXor8Provider;->expPropertySystemNameXor8()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3

    :cond_5
    :goto_2
    move v4, v0

    :goto_3
    move v2, v4

    .line 63
    :cond_6
    :goto_4
    if-nez v1, :cond_8

    if-nez v2, :cond_8

    if-eqz v3, :cond_7

    goto :goto_5

    :cond_7
    move v0, v5

    nop

    :cond_8
    :goto_5
    sput-boolean v0, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->sIsExp:Z

    .line 65
    .end local v1    # "isRedExp":Z
    .end local v2    # "isGreenOrOrangeExp":Z
    .end local v3    # "isRegionExp":Z
    :cond_9
    return-void
.end method

.method private static isRedExpOS()Z
    .locals 3

    .line 83
    const-string v0, "OverSeas"

    const-string v1, "persist.sys.oem.region"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
