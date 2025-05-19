.class public Lcom/platform/usercenter/tools/device/UCDeviceTypeFactory;
.super Ljava/lang/Object;
.source "UCDeviceTypeFactory.java"


# static fields
.field private static final DEVICE_TYPE_MOBILE:Ljava/lang/String; = "Mobile"

.field private static final DEVICE_TYPE_PC:Ljava/lang/String; = "pc"

.field private static final DEVICE_TYPE_TV:Ljava/lang/String; = "tv"

.field private static final DEVICE_TYPE_WATCH:Ljava/lang/String; = "Watch"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "Watch"

    return-object v0

    .line 29
    :cond_0
    invoke-static {p0}, Lcom/platform/usercenter/tools/device/UCDeviceTypeFactory;->isTv(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    const-string v0, "tv"

    return-object v0

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.pc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    const-string v0, "pc"

    return-object v0

    .line 34
    :cond_2
    const-string v0, "Mobile"

    return-object v0
.end method

.method public static isTv(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 39
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 41
    .local v0, "uiModeManager":Landroid/app/UiModeManager;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 42
    :catch_0
    move-exception v2

    .line 43
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 44
    return v1
.end method
