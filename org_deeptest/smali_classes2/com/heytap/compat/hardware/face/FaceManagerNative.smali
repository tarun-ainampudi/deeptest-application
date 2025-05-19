.class public Lcom/heytap/compat/hardware/face/FaceManagerNative;
.super Ljava/lang/Object;
.source "FaceManagerNative.java"


# static fields
.field private static final ACTION_HAS_ENROLLED_TEMPLATES:Ljava/lang/String; = "hasEnrolledTemplates"

.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.hardware.face.FaceManager"

.field public static final FACE_ERROR_CAMERA_UNAVAILABLE:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field private static final HAS_ENROLLED_TEMPLATES_RESULT:Ljava/lang/String; = "has_enrolled_templates"

.field private static final TAG:Ljava/lang/String; = "FaceManagerNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static getFailedAttempts()I
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 57
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, -0x1

    .line 60
    .local v0, "attempts":I
    :try_start_0
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 61
    .local v1, "context":Landroid/content/Context;
    const-string v2, "face"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceManager;

    .line 62
    .local v2, "faceManager":Landroid/hardware/face/FaceManager;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getFailedAttempts"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 63
    .local v3, "getFailedAttempts":Ljava/lang/reflect/Method;
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 64
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "faceManager":Landroid/hardware/face/FaceManager;
    .end local v3    # "getFailedAttempts":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "FaceManagerNative"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v1    # "e":Ljava/lang/Throwable;
    return v0

    .line 69
    .end local v0    # "attempts":I
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLockoutAttemptDeadline()J
    .locals 8
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 76
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-wide/16 v0, -0x1

    .line 79
    .local v0, "deadline":J
    :try_start_0
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 80
    .local v2, "context":Landroid/content/Context;
    const-string v3, "face"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/FaceManager;

    .line 81
    .local v3, "faceManager":Landroid/hardware/face/FaceManager;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getLockoutAttemptDeadline"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 82
    .local v4, "getFailedAttempts":Ljava/lang/reflect/Method;
    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v5

    .line 83
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "faceManager":Landroid/hardware/face/FaceManager;
    .end local v4    # "getFailedAttempts":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "FaceManagerNative"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v2    # "e":Ljava/lang/Throwable;
    return-wide v0

    .line 88
    .end local v0    # "deadline":J
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not support before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hasEnrolledTemplates()Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "hasEnrolledTemplates"
        type = "epona"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "android.hardware.face.FaceManager"

    .line 41
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "hasEnrolledTemplates"

    .line 42
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 44
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 45
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "has_enrolled_templates"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 48
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :cond_0
    nop

    .line 51
    const/4 v0, 0x0

    return v0

    .line 49
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
