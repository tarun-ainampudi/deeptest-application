.class public final Lcom/platform/usercenter/tools/device/ClientIdUtils;
.super Ljava/lang/Object;
.source "ClientIdUtils.java"


# static fields
.field private static final DEFAULT_CLIENT_ID:Ljava/lang/String; = "000000000000000"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/platform/usercenter/tools/device/ClientIdUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/platform/usercenter/tools/device/ClientIdUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getClientId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 27
    if-eqz p0, :cond_0

    .line 31
    :try_start_0
    invoke-static {p0}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 35
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, "000000000000000"

    return-object v0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
