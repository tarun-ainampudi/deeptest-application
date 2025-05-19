.class public Lcom/heytap/compat/app/usage/StorageStatsManagerNative;
.super Ljava/lang/Object;
.source "StorageStatsManagerNative.java"


# static fields
.field private static final ACTION_QUERY_STATS_FOR_PACKAGE:Ljava/lang/String; = "queryStatsForPackage"

.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.app.usage.StorageStatsManager"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "StorageStatsManagerNative"

.field private static final USER_HANDLE:Ljava/lang/String; = "userHandle"

.field private static final UUID:Ljava/lang/String; = "UUID"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;
    .locals 5
    .param p0, "storageUuid"    # Ljava/util/UUID;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1b
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "queryStatsForPackage"
        type = "epona"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "android.app.usage.StorageStatsManager"

    .line 41
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "queryStatsForPackage"

    .line 42
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "UUID"

    .line 43
    invoke-virtual {v0, v1, p0}, Lcom/heytap/epona/Request$Builder;->withSerializable(Ljava/lang/String;Ljava/io/Serializable;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "packageName"

    .line 44
    invoke-virtual {v0, v1, p1}, Lcom/heytap/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "userHandle"

    .line 45
    invoke-virtual {v0, v1, p2}, Lcom/heytap/epona/Request$Builder;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 48
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 49
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/usage/StorageStats;

    return-object v2

    .line 52
    :cond_0
    const-class v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v1, v2}, Lcom/heytap/epona/Response;->checkThrowable(Ljava/lang/Class;)V

    .line 53
    const-class v2, Ljava/io/IOException;

    invoke-virtual {v1, v2}, Lcom/heytap/epona/Response;->checkThrowable(Ljava/lang/Class;)V

    .line 54
    const-class v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1, v2}, Lcom/heytap/epona/Response;->checkThrowable(Ljava/lang/Class;)V

    .line 55
    const-string v2, "StorageStatsManagerNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    nop

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isO_MR1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "storagestats"

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    .line 60
    .local v0, "storageStatsManager":Landroid/app/usage/StorageStatsManager;
    invoke-virtual {v0, p0, p1, p2}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v1

    return-object v1

    .line 62
    .end local v0    # "storageStatsManager":Landroid/app/usage/StorageStatsManager;
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
