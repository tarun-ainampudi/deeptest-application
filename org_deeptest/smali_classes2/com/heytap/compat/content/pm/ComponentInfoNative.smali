.class public Lcom/heytap/compat/content/pm/ComponentInfoNative;
.super Ljava/lang/Object;
.source "ComponentInfoNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ComponentInfoNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1b
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 25
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p0}, Lcom/color/inner/content/pm/ComponentInfoWrapper;->getComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 27
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isO_MR1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ComponentInfoNative"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method
