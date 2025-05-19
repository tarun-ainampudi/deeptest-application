.class public Lcom/heytap/epona/ipc/local/RemoteTransfer;
.super Lcom/heytap/epona/IRemoteTransfer$Stub;
.source "RemoteTransfer.java"


# static fields
.field public static final APP_PLATFORM_PACKAGE_NAME:Ljava/lang/String; = "com.heytap.appplatform"

.field private static final TAG:Ljava/lang/String; = "RemoteTransfer"

.field private static volatile sInstance:Lcom/heytap/epona/ipc/local/RemoteTransfer;


# instance fields
.field private mTransferCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/heytap/epona/IRemoteTransfer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/heytap/epona/IRemoteTransfer$Stub;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/heytap/epona/ipc/local/RemoteTransfer;->mTransferCache:Ljava/util/Map;

    .line 36
    return-void
.end method

.method private checkEponaPermission(Lcom/heytap/epona/Request;)Z
    .locals 4
    .param p1, "request"    # Lcom/heytap/epona/Request;

    .line 184
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/heytap/epona/Epona;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Lcom/heytap/epona/Epona;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "registerPackage":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/heytap/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "component":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/heytap/epona/Request;->getActionName()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "action":Ljava/lang/String;
    invoke-static {}, Lcom/heytap/shield/PermissionCheck;->getInstance()Lcom/heytap/shield/PermissionCheck;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/heytap/shield/PermissionCheck;->verityEpona(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 190
    .end local v0    # "registerPackage":Ljava/lang/String;
    .end local v1    # "component":Ljava/lang/String;
    .end local v2    # "action":Ljava/lang/String;
    :cond_0
    const-string v0, "RemoteTransfer"

    const-string v1, "Request is null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/heytap/epona/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method private dispatcherProviderExist()Z
    .locals 5

    .line 162
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 163
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 164
    return v1

    .line 166
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.heytap.appplatform.dispatcher"

    const/high16 v4, 0x20000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 168
    .local v2, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public static getInstance()Lcom/heytap/epona/ipc/local/RemoteTransfer;
    .locals 2

    .line 39
    sget-object v0, Lcom/heytap/epona/ipc/local/RemoteTransfer;->sInstance:Lcom/heytap/epona/ipc/local/RemoteTransfer;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lcom/heytap/epona/ipc/local/RemoteTransfer;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/heytap/epona/ipc/local/RemoteTransfer;->sInstance:Lcom/heytap/epona/ipc/local/RemoteTransfer;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/heytap/epona/ipc/local/RemoteTransfer;

    invoke-direct {v1}, Lcom/heytap/epona/ipc/local/RemoteTransfer;-><init>()V

    sput-object v1, Lcom/heytap/epona/ipc/local/RemoteTransfer;->sInstance:Lcom/heytap/epona/ipc/local/RemoteTransfer;

    .line 44
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    :cond_1
    :goto_0
    sget-object v0, Lcom/heytap/epona/ipc/local/RemoteTransfer;->sInstance:Lcom/heytap/epona/ipc/local/RemoteTransfer;

    return-object v0
.end method

.method static synthetic lambda$asyncCall$0(Lcom/heytap/epona/ITransferCallback;Lcom/heytap/epona/Response;)V
    .locals 6
    .param p0, "callback"    # Lcom/heytap/epona/ITransferCallback;
    .param p1, "response"    # Lcom/heytap/epona/Response;

    .line 73
    :try_start_0
    invoke-interface {p0, p1}, Lcom/heytap/epona/ITransferCallback;->onReceive(Lcom/heytap/epona/Response;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteTransfer"

    const-string v2, "failed to asyncCall and exception is %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/heytap/epona/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$findRemoteTransfer$1(Lcom/heytap/epona/ipc/local/RemoteTransfer;Ljava/lang/String;)V
    .locals 1
    .param p1, "componentName"    # Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/heytap/epona/ipc/local/RemoteTransfer;->mTransferCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heytap/epona/IRemoteTransfer;

    return-void
.end method

.method private log(Lcom/heytap/epona/Request;Z)V
    .locals 7
    .param p1, "request"    # Lcom/heytap/epona/Request;
    .param p2, "sync"    # Z

    .line 81
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    .local v0, "context":Landroid/content/Context;
    const-string v1, "no context"

    .line 83
    .local v1, "callingPackage":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/heytap/epona/ipc/local/RemoteTransfer;->getCallingUid()I

    move-result v2

    invoke-static {}, Lcom/heytap/epona/ipc/local/RemoteTransfer;->getCallingPid()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/heytap/shield/utils/PackageUtils;->getCallingPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 86
    :cond_0
    const-string v2, "RemoteTransfer"

    const-string v3, "%s is calling %s %s, action is %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    .line 87
    invoke-virtual {p1}, Lcom/heytap/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    if-eqz p2, :cond_1

    const-string v6, "sync"

    goto :goto_0

    :cond_1
    const-string v6, "async"

    :goto_0
    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {p1}, Lcom/heytap/epona/Request;->getActionName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 86
    invoke-static {v2, v3, v4}, Lcom/heytap/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    return-void
.end method


# virtual methods
.method public asyncCall(Lcom/heytap/epona/Request;Lcom/heytap/epona/ITransferCallback;)V
    .locals 4
    .param p1, "request"    # Lcom/heytap/epona/Request;
    .param p2, "callback"    # Lcom/heytap/epona/ITransferCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/heytap/shield/PermissionCheck;->getInstance()Lcom/heytap/shield/PermissionCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/shield/PermissionCheck;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/heytap/epona/ipc/local/RemoteTransfer;->checkEponaPermission(Lcom/heytap/epona/Request;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    const-string v0, "RemoteTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Epona Authentication failed, request : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1}, Lcom/heytap/epona/Request;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 64
    invoke-static {v0, v2, v1}, Lcom/heytap/epona/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Epona Authentication failed, request : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p1}, Lcom/heytap/epona/Request;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/heytap/epona/Response;->errorResponse(Ljava/lang/String;)Lcom/heytap/epona/Response;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/heytap/epona/ITransferCallback;->onReceive(Lcom/heytap/epona/Response;)V

    .line 68
    return-void

    .line 70
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/heytap/epona/ipc/local/RemoteTransfer;->log(Lcom/heytap/epona/Request;Z)V

    .line 71
    invoke-static {p1}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v0

    new-instance v1, Lcom/heytap/epona/ipc/local/-$$Lambda$RemoteTransfer$JS449M9eQyu3gstGpmmjY7KnrMc;

    invoke-direct {v1, p2}, Lcom/heytap/epona/ipc/local/-$$Lambda$RemoteTransfer$JS449M9eQyu3gstGpmmjY7KnrMc;-><init>(Lcom/heytap/epona/ITransferCallback;)V

    invoke-virtual {v0, v1}, Lcom/heytap/epona/internal/RealCall;->asyncExecute(Lcom/heytap/epona/Call$Callback;)V

    .line 78
    return-void
.end method

.method public call(Lcom/heytap/epona/Request;)Lcom/heytap/epona/Response;
    .locals 3
    .param p1, "request"    # Lcom/heytap/epona/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    invoke-static {}, Lcom/heytap/shield/PermissionCheck;->getInstance()Lcom/heytap/shield/PermissionCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/shield/PermissionCheck;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/heytap/epona/ipc/local/RemoteTransfer;->checkEponaPermission(Lcom/heytap/epona/Request;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const-string v0, "RemoteTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Epona Authentication failed, request : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p1}, Lcom/heytap/epona/Request;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 52
    invoke-static {v0, v1, v2}, Lcom/heytap/epona/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Epona Authentication failed, request : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p1}, Lcom/heytap/epona/Request;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/heytap/epona/Response;->errorResponse(Ljava/lang/String;)Lcom/heytap/epona/Response;

    move-result-object v0

    return-object v0

    .line 57
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/heytap/epona/ipc/local/RemoteTransfer;->log(Lcom/heytap/epona/Request;Z)V

    .line 58
    invoke-static {p1}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v0

    return-object v0
.end method

.method public findRemoteTransfer(Ljava/lang/String;)Lcom/heytap/epona/IRemoteTransfer;
    .locals 9
    .param p1, "componentName"    # Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Lcom/heytap/epona/ipc/local/RemoteTransfer;->dispatcherProviderExist()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 125
    const-string v0, "RemoteTransfer"

    const-string v2, "DispatcherProvider is not exist"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/heytap/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/heytap/epona/ipc/local/RemoteTransfer;->mTransferCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heytap/epona/IRemoteTransfer;

    .line 129
    .local v0, "remoteTransfer":Lcom/heytap/epona/IRemoteTransfer;
    if-nez v0, :cond_4

    .line 130
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 132
    .local v2, "context":Landroid/content/Context;
    const-string v3, "com.heytap.appplatform"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    invoke-static {}, Lcom/heytap/epona/ipc/remote/Dispatcher;->getInstance()Lcom/heytap/epona/ipc/remote/Dispatcher;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/heytap/epona/ipc/remote/Dispatcher;->findRemoteTransfer(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 146
    move-object v5, v3

    goto :goto_0

    .line 135
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v3, "params":Landroid/os/Bundle;
    const-string v4, "com.heytap.epona.Dispatcher.TRANSFER_KEY"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {v2, p1}, Lcom/heytap/epona/utils/ProviderUtils;->findRemoteBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 138
    .local v4, "result":Landroid/os/Bundle;
    if-eqz v4, :cond_2

    .line 139
    const-string v5, "com.heytap.epona.Dispatcher.TRANSFER_VALUE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    goto :goto_0

    .line 141
    :cond_2
    const/4 v5, 0x0

    .line 142
    .local v5, "binder":Landroid/os/IBinder;
    const-string v6, "RemoteTransfer"

    const-string v7, "Find remote transfer bundle null."

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/heytap/epona/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    .end local v3    # "params":Landroid/os/Bundle;
    .end local v4    # "result":Landroid/os/Bundle;
    :goto_0
    if-eqz v5, :cond_3

    .line 147
    invoke-static {v5}, Lcom/heytap/epona/IRemoteTransfer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/heytap/epona/IRemoteTransfer;

    move-result-object v0

    .line 148
    iget-object v3, p0, Lcom/heytap/epona/ipc/local/RemoteTransfer;->mTransferCache:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :try_start_0
    new-instance v3, Lcom/heytap/epona/ipc/local/-$$Lambda$RemoteTransfer$V26PWFi0Yao-gozRMMEicqR-9D0;

    invoke-direct {v3, p0, p1}, Lcom/heytap/epona/ipc/local/-$$Lambda$RemoteTransfer$V26PWFi0Yao-gozRMMEicqR-9D0;-><init>(Lcom/heytap/epona/ipc/local/RemoteTransfer;Ljava/lang/String;)V

    invoke-interface {v5, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 151
    :catch_0
    move-exception v3

    .line 152
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "RemoteTransfer"

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v6, v1}, Lcom/heytap/epona/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "binder":Landroid/os/IBinder;
    :goto_1
    goto :goto_2

    .line 155
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v5    # "binder":Landroid/os/IBinder;
    :cond_3
    const-string v3, "RemoteTransfer"

    const-string v4, "Get remote binder null. ComponentName : %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-static {v3, v4, v6}, Lcom/heytap/epona/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    .end local v2    # "context":Landroid/content/Context;
    .end local v5    # "binder":Landroid/os/IBinder;
    :cond_4
    :goto_2
    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/heytap/epona/IRemoteTransfer$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransact Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "RemoteTransfer"

    invoke-static {v3, v1, v2}, Lcom/heytap/epona/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    throw v0
.end method

.method public registerToRemote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Lcom/heytap/epona/ipc/local/RemoteTransfer;->dispatcherProviderExist()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 102
    const-string v0, "RemoteTransfer"

    const-string v2, "DispatcherProvider is not exist"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/heytap/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    return-void

    .line 106
    :cond_0
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    .local v0, "context":Landroid/content/Context;
    const-string v2, "com.heytap.appplatform"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    invoke-static {}, Lcom/heytap/epona/ipc/remote/Dispatcher;->getInstance()Lcom/heytap/epona/ipc/remote/Dispatcher;

    move-result-object v2

    const-string v3, "com.heytap.appplatform"

    .line 109
    invoke-virtual {v2, p1, p0, v3}, Lcom/heytap/epona/ipc/remote/Dispatcher;->registerRemoteTransfer(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 111
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "com.heytap.epona.Dispatcher.TRANSFER_KEY"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v3, "com.heytap.epona.Dispatcher.TRANSFER_VALUE"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 114
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.heytap.appplatform.dispatcher"

    const-string v5, "com.heytap.epona.Dispatcher.REGISTER_TRANSFER"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 116
    .local v3, "result":Landroid/os/Bundle;
    const-string v4, "REGISTER_TRANSFER_RESULT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 118
    .end local v3    # "result":Landroid/os/Bundle;
    .local v2, "registerSuccess":Z
    :goto_0
    if-nez v2, :cond_2

    .line 119
    const-string v3, "RemoteTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Register "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "==>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " failed for \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" is already registered"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v1}, Lcom/heytap/epona/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :cond_2
    return-void
.end method

.method public remoteSnapshot()Ljava/lang/String;
    .locals 4

    .line 172
    invoke-direct {p0}, Lcom/heytap/epona/ipc/local/RemoteTransfer;->dispatcherProviderExist()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 173
    return-object v1

    .line 175
    :cond_0
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "com.heytap.appplatform.dispatcher"

    const-string v3, "com.heytap.epona.Dispatcher.REMOTE_SNAPSHOT"

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 177
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 178
    const-string v1, "REMOTE_SNAPSHOT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 180
    :cond_1
    return-object v1
.end method
