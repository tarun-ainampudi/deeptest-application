.class public Lcom/heytap/compat/content/pm/ApplicationInfoNative;
.super Ljava/lang/Object;
.source "ApplicationInfoNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/content/pm/ApplicationInfoNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final ACTION_GET_BASE_CODE_PATH:Ljava/lang/String; = "getBaseCodePath"

.field private static final APPLICATION_INFO:Ljava/lang/String; = "applicationInfo"

.field private static final NAME:Ljava/lang/String; = "android.content.pm.ApplicationInfo"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "ApplicationInfoNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getBaseCodePath(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 5
    .param p0, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "getBaseCodePath"
        type = "epona"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 48
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "applicationInfo"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 51
    new-instance v1, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v1}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v2, "android.content.pm.ApplicationInfo"

    .line 52
    invoke-virtual {v1, v2}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v1

    const-string v2, "getBaseCodePath"

    .line 53
    invoke-virtual {v1, v2}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v1

    .line 55
    .local v1, "request":Lcom/heytap/epona/Request;
    invoke-virtual {v1, v0}, Lcom/heytap/epona/Request;->putBundle(Landroid/os/Bundle;)V

    .line 56
    invoke-static {v1}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v2

    .line 57
    .local v2, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v2}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    invoke-virtual {v2}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 60
    :cond_0
    const-string v3, ""

    return-object v3

    .line 61
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "request":Lcom/heytap/epona/Request;
    .end local v2    # "response":Lcom/heytap/epona/Response;
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    invoke-static {p0}, Lcom/color/inner/content/pm/ApplicationInfoWrapper;->getBaseCodePath(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 64
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getOplusFreezeState(Landroid/content/pm/ApplicationInfo;)I
    .locals 1
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 83
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {p0}, Lcom/color/inner/content/pm/ApplicationInfoWrapper;->getColorFreezeState(Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    return v0

    .line 85
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-static {}, Lcom/heytap/compat/content/pm/ApplicationInfoNative$ReflectInfo;->access$000()Lcom/heytap/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/reflect/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 88
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static getVersionCode(Landroid/content/pm/ApplicationInfo;)I
    .locals 1
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 35
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {p0}, Lcom/color/inner/content/pm/ApplicationInfoWrapper;->getVersionCode(Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    return v0

    .line 37
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->versionCode:I

    return v0

    .line 40
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {p0}, Lcom/color/inner/content/pm/ApplicationInfoWrapper;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0

    .line 73
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    return v0

    .line 76
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static setOplusFreezeState(Landroid/content/pm/ApplicationInfo;I)V
    .locals 1
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "state"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 95
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {p0, p1}, Lcom/color/inner/content/pm/ApplicationInfoWrapper;->setColorFreezeState(Landroid/content/pm/ApplicationInfo;I)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-static {}, Lcom/heytap/compat/content/pm/ApplicationInfoNative$ReflectInfo;->access$000()Lcom/heytap/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/heytap/reflect/RefInt;->set(Ljava/lang/Object;I)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
