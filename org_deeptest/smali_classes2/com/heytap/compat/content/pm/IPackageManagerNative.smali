.class public Lcom/heytap/compat/content/pm/IPackageManagerNative;
.super Ljava/lang/Object;
.source "IPackageManagerNative.java"


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.content.pm.IPackageManager"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "IPackageManagerNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static isStorageLow()Z
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "isStorageLow"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "isStorageLow":Z
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    new-instance v1, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v1}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v2, "android.content.pm.IPackageManager"

    .line 53
    invoke-virtual {v1, v2}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v1

    const-string v2, "isStorageLow"

    .line 54
    invoke-virtual {v1, v2}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v1

    .line 56
    .local v1, "request":Lcom/heytap/epona/Request;
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

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 60
    .end local v1    # "request":Lcom/heytap/epona/Request;
    .end local v2    # "response":Lcom/heytap/epona/Response;
    :cond_0
    nop

    .line 63
    return v0

    .line 61
    :cond_1
    new-instance v1, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v2, "Not Supported Before R"

    invoke-direct {v1, v2}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "newState"    # I
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "setApplicationEnabledSetting"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 29
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "android.content.pm.IPackageManager"

    .line 31
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "setApplicationEnabledSetting"

    .line 32
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "packageName"

    .line 33
    invoke-virtual {v0, v1, p0}, Lcom/heytap/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "newState"

    .line 34
    invoke-virtual {v0, v1, p1}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "flags"

    .line 35
    invoke-virtual {v0, v1, p2}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "userId"

    .line 36
    invoke-virtual {v0, v1, p3}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "callingPackage"

    .line 37
    invoke-virtual {v0, v1, p4}, Lcom/heytap/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 39
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 40
    .local v1, "execute":Lcom/heytap/epona/Response;
    const-string v2, "IPackageManagerNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "execute":Lcom/heytap/epona/Response;
    nop

    .line 44
    return-void

    .line 42
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not Supported Before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
