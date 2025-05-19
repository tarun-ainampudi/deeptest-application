.class public Lcom/heytap/opnearmesdk/OPUtils;
.super Ljava/lang/Object;
.source "OPUtils.java"


# static fields
.field static final KEY:I = 0x8

.field private static mOPVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/4 v0, -0x1

    sput v0, Lcom/heytap/opnearmesdk/OPUtils;->mOPVersionCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 57
    sget v0, Lcom/heytap/opnearmesdk/OPUtils;->mOPVersionCode:I

    if-gez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 60
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    sget-object v1, Lcom/heytap/opnearmesdk/OPConstants;->OP_ACCOUNT_PACKAGE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 61
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v2, Lcom/heytap/opnearmesdk/OPUtils;->mOPVersionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 66
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    sget v0, Lcom/heytap/opnearmesdk/OPUtils;->mOPVersionCode:I

    return v0
.end method

.method private static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 32
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 33
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 34
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 35
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method public static isOPAccountLogin(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appCode"    # Ljava/lang/String;

    .line 46
    if-eqz p0, :cond_1

    .line 49
    invoke-static {p0, p1}, Lcom/heytap/opnearmesdk/OPAccountProviderHelper;->getOPTokenForProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    return v0

    .line 52
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Please check context, it must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isOPOS(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 26
    const-string v0, "kge&gfmxd}{&ikkg}f|"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/heytap/opnearmesdk/OPUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
