.class public Lcom/heytap/epona/interceptor/LaunchComponentInterceptor;
.super Ljava/lang/Object;
.source "LaunchComponentInterceptor.java"

# interfaces
.implements Lcom/heytap/epona/Interceptor;


# static fields
.field private static final COMPONENT_SEPARATOR:Ljava/lang/String; = "\\|"

.field private static final META_DATA_KEY:Ljava/lang/String; = "epona_components"

.field private static final PROVIDER_SCHEME:Ljava/lang/String; = "content://"

.field private static final TAG:Ljava/lang/String; = "LaunchComponentInterceptor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findApplication(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 10
    .param p1, "componentName"    # Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 65
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 66
    .local v2, "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 67
    .local v4, "application":Landroid/content/pm/ApplicationInfo;
    invoke-direct {p0, v4}, Lcom/heytap/epona/interceptor/LaunchComponentInterceptor;->getComponents(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "components":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 69
    .local v8, "component":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 70
    return-object v4

    .line 68
    .end local v8    # "component":Ljava/lang/String;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 73
    .end local v4    # "application":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "components":[Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 75
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private getComponents(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;
    .locals 4
    .param p1, "application"    # Landroid/content/pm/ApplicationInfo;

    .line 79
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 80
    .local v0, "emptyString":[Ljava/lang/String;
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 81
    .local v1, "metaData":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 82
    return-object v0

    .line 84
    :cond_0
    const-string v2, "epona_components"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "metaValue":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 86
    return-object v0

    .line 88
    :cond_1
    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getTargetUri(Landroid/content/pm/ApplicationInfo;)Landroid/net/Uri;
    .locals 3
    .param p1, "application"    # Landroid/content/pm/ApplicationInfo;

    .line 92
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 93
    .local v0, "targetPackage":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".epona"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private isComponentRegistered(Ljava/lang/String;)Z
    .locals 2
    .param p1, "targetComponent"    # Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/heytap/epona/ipc/local/RemoteTransfer;->getInstance()Lcom/heytap/epona/ipc/local/RemoteTransfer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/heytap/epona/ipc/local/RemoteTransfer;->findRemoteTransfer(Ljava/lang/String;)Lcom/heytap/epona/IRemoteTransfer;

    move-result-object v0

    .line 58
    .local v0, "transfer":Lcom/heytap/epona/IRemoteTransfer;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private launchComponent(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 97
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 99
    return v1

    .line 101
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 103
    .local v2, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "launchComponent"

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 104
    .local v3, "status":Landroid/os/Bundle;
    const-string v4, "KEY_LAUNCH_SUCCESS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 105
    .end local v3    # "status":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .line 106
    .local v3, "e":Ljava/lang/Exception;
    return v1
.end method


# virtual methods
.method public intercept(Lcom/heytap/epona/Interceptor$Chain;)V
    .locals 9
    .param p1, "chain"    # Lcom/heytap/epona/Interceptor$Chain;

    .line 31
    invoke-interface {p1}, Lcom/heytap/epona/Interceptor$Chain;->request()Lcom/heytap/epona/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "targetComponent":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/heytap/epona/interceptor/LaunchComponentInterceptor;->isComponentRegistered(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 33
    const-string v1, "LaunchComponentInterceptor"

    const-string v4, "RemoteTransfer with componentName = %s found. Proceed"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v4, v3}, Lcom/heytap/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-interface {p1}, Lcom/heytap/epona/Interceptor$Chain;->proceed()V

    .line 35
    return-void

    .line 38
    :cond_0
    invoke-interface {p1}, Lcom/heytap/epona/Interceptor$Chain;->callback()Lcom/heytap/epona/Call$Callback;

    move-result-object v1

    .line 39
    .local v1, "callback":Lcom/heytap/epona/Call$Callback;
    invoke-direct {p0, v0}, Lcom/heytap/epona/interceptor/LaunchComponentInterceptor;->findApplication(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 40
    .local v4, "application":Landroid/content/pm/ApplicationInfo;
    if-nez v4, :cond_1

    .line 41
    const-string v5, "LaunchComponentInterceptor"

    const-string v6, "find component:%s failed"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v5, v6, v3}, Lcom/heytap/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-static {}, Lcom/heytap/epona/Response;->defaultErrorResponse()Lcom/heytap/epona/Response;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/heytap/epona/Call$Callback;->onReceive(Lcom/heytap/epona/Response;)V

    .line 43
    return-void

    .line 45
    :cond_1
    invoke-direct {p0, v4}, Lcom/heytap/epona/interceptor/LaunchComponentInterceptor;->getTargetUri(Landroid/content/pm/ApplicationInfo;)Landroid/net/Uri;

    move-result-object v5

    .line 46
    .local v5, "targetProviderUri":Landroid/net/Uri;
    invoke-direct {p0, v5}, Lcom/heytap/epona/interceptor/LaunchComponentInterceptor;->launchComponent(Landroid/net/Uri;)Z

    move-result v6

    .line 47
    .local v6, "launchSuccess":Z
    if-eqz v6, :cond_2

    .line 48
    const-string v7, "LaunchComponentInterceptor"

    const-string v8, "launch component:%s success"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v7, v8, v3}, Lcom/heytap/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-interface {p1}, Lcom/heytap/epona/Interceptor$Chain;->proceed()V

    goto :goto_0

    .line 51
    :cond_2
    const-string v7, "LaunchComponentInterceptor"

    const-string v8, "launch component:%s failed"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v7, v8, v3}, Lcom/heytap/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-static {}, Lcom/heytap/epona/Response;->defaultErrorResponse()Lcom/heytap/epona/Response;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/heytap/epona/Call$Callback;->onReceive(Lcom/heytap/epona/Response;)V

    .line 54
    :goto_0
    return-void
.end method
