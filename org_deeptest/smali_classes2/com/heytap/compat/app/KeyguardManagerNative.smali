.class public Lcom/heytap/compat/app/KeyguardManagerNative;
.super Ljava/lang/Object;
.source "KeyguardManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/app/KeyguardManagerNative$ReflectInfo;
    }
.end annotation


# static fields
.field public static ACTION_CONFIRM_DEVICE_CREDENTIAL:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "KeyguardManager"
        type = "epona"
    .end annotation
.end field

.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.app.KeyguardManager"

.field private static final CONSTANT_ACTION_CONFIRM_DEVICE_CREDENTIAL:Ljava/lang/String; = "ACTION_CONFIRM_DEVICE_CREDENTIAL"

.field private static final TAG:Ljava/lang/String; = "KeyguardManagerNative"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 36
    invoke-static {}, Lcom/heytap/compat/app/KeyguardManagerNative;->initConstant()V

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private static initConstant()V
    .locals 4

    .line 41
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "android.app.KeyguardManager"

    .line 43
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "const"

    .line 44
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 46
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 47
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ACTION_CONFIRM_DEVICE_CREDENTIAL"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/heytap/compat/app/KeyguardManagerNative;->ACTION_CONFIRM_DEVICE_CREDENTIAL:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_0
    const-string v2, "KeyguardManagerNative"

    const-string v3, "Epona Communication failed, static initializer failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :goto_0
    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    sget-object v0, Lcom/heytap/compat/app/KeyguardManagerNative$ReflectInfo;->ACTION_CONFIRM_DEVICE_CREDENTIAL:Lcom/heytap/reflect/RefStaticObject;

    invoke-virtual {v0}, Lcom/heytap/reflect/RefStaticObject;->getWithException()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/heytap/compat/app/KeyguardManagerNative;->ACTION_CONFIRM_DEVICE_CREDENTIAL:Ljava/lang/String;

    goto :goto_1

    .line 55
    :cond_2
    const-string v0, "KeyguardManagerNative"

    const-string v1, "not supported before Q"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_1
    goto :goto_2

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "KeyguardManagerNative"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method
