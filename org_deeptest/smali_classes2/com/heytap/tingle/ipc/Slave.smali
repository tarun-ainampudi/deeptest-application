.class public Lcom/heytap/tingle/ipc/Slave;
.super Ljava/lang/Object;
.source "Slave.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Slave"

.field private static mApp:Landroid/app/Application;

.field private static sHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/heytap/tingle/ipc/servicehandler/SystemServiceHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static sMaster:Lcom/heytap/tingle/ipc/IMaster;

.field private static sProxy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/heytap/tingle/ipc/serviceproxy/ISystemServiceProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/heytap/tingle/ipc/Slave;->sHandlers:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/heytap/tingle/ipc/Slave;->sProxy:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static attach(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 46
    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    sput-object v0, Lcom/heytap/tingle/ipc/Slave;->mApp:Landroid/app/Application;

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sput-object v0, Lcom/heytap/tingle/ipc/Slave;->mApp:Landroid/app/Application;

    .line 50
    :goto_0
    invoke-static {}, Lcom/heytap/tingle/ipc/Slave;->prepareSystemServiceHandler()V

    .line 51
    invoke-static {}, Lcom/heytap/tingle/ipc/Slave;->prepareSystemServiceProxy()V

    .line 52
    return-void
.end method

.method public static cleanSystemService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/heytap/tingle/ipc/Slave;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/heytap/tingle/ipc/Slave;->getMaster(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const-string v0, "Slave"

    const-string v1, "Error : Slave cannot connect master."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    return-void

    .line 94
    :cond_0
    sget-object v0, Lcom/heytap/tingle/ipc/Slave;->sProxy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/tingle/ipc/serviceproxy/ISystemServiceProxy;

    .line 95
    .local v1, "proxy":Lcom/heytap/tingle/ipc/serviceproxy/ISystemServiceProxy;
    invoke-interface {v1, p1}, Lcom/heytap/tingle/ipc/serviceproxy/ISystemServiceProxy;->canHandle(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    invoke-interface {v1, p0}, Lcom/heytap/tingle/ipc/serviceproxy/ISystemServiceProxy;->cleanSystemService(Landroid/content/Context;)V

    .line 97
    return-void

    .line 99
    .end local v1    # "proxy":Lcom/heytap/tingle/ipc/serviceproxy/ISystemServiceProxy;
    :cond_1
    goto :goto_0

    .line 101
    :cond_2
    invoke-static {p1}, Lcom/heytap/tingle/ipc/Slave;->createNewCommonProxy(Ljava/lang/String;)Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;->cleanSystemService(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method private static declared-synchronized createNewCommonProxy(Ljava/lang/String;)Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;
    .locals 3
    .param p0, "serviceName"    # Ljava/lang/String;

    const-class v0, Lcom/heytap/tingle/ipc/Slave;

    monitor-enter v0

    .line 114
    :try_start_0
    new-instance v1, Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;

    invoke-direct {v1, p0}, Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, "commonServiceProxy":Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;
    sget-object v2, Lcom/heytap/tingle/ipc/Slave;->sProxy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit v0

    return-object v1

    .line 113
    .end local v1    # "commonServiceProxy":Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;
    .end local p0    # "serviceName":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getMaster()Lcom/heytap/tingle/ipc/IMaster;
    .locals 1

    .line 196
    sget-object v0, Lcom/heytap/tingle/ipc/Slave;->sMaster:Lcom/heytap/tingle/ipc/IMaster;

    return-object v0
.end method

.method private static getMaster(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 200
    invoke-static {p0}, Lcom/heytap/tingle/ipc/Engine;->getMasterIBinder(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v0

    .line 201
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 203
    :try_start_0
    sget-object v2, Lcom/heytap/tingle/ipc/-$$Lambda$Slave$cFFeX61njBK9ISWEho5xRQp9GHE;->INSTANCE:Lcom/heytap/tingle/ipc/-$$Lambda$Slave$cFFeX61njBK9ISWEho5xRQp9GHE;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    goto :goto_0

    .line 207
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Slave"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetMaster linkToDeath Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0}, Lcom/heytap/tingle/ipc/IMaster$Stub;->asInterface(Landroid/os/IBinder;)Lcom/heytap/tingle/ipc/IMaster;

    move-result-object v2

    sput-object v2, Lcom/heytap/tingle/ipc/Slave;->sMaster:Lcom/heytap/tingle/ipc/IMaster;

    goto :goto_1

    .line 212
    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lcom/heytap/tingle/ipc/Slave;->sMaster:Lcom/heytap/tingle/ipc/IMaster;

    .line 213
    const-string v2, "Slave"

    const-string v3, "Get Binder is null, reset sMaster = null."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    :goto_1
    sget-object v2, Lcom/heytap/tingle/ipc/Slave;->sMaster:Lcom/heytap/tingle/ipc/IMaster;

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public static getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 74
    invoke-static {}, Lcom/heytap/tingle/ipc/Slave;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/heytap/tingle/ipc/Slave;->getMaster(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const-string v0, "Slave"

    const-string v1, "Error : Slave cannot connect master."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    sget-object v0, Lcom/heytap/tingle/ipc/Slave;->sProxy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/tingle/ipc/serviceproxy/ISystemServiceProxy;

    .line 80
    .local v1, "proxy":Lcom/heytap/tingle/ipc/serviceproxy/ISystemServiceProxy;
    invoke-interface {v1, p1}, Lcom/heytap/tingle/ipc/serviceproxy/ISystemServiceProxy;->canHandle(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    invoke-interface {v1, p0}, Lcom/heytap/tingle/ipc/serviceproxy/ISystemServiceProxy;->getSystemService(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 83
    .end local v1    # "proxy":Lcom/heytap/tingle/ipc/serviceproxy/ISystemServiceProxy;
    :cond_1
    goto :goto_0

    .line 85
    :cond_2
    invoke-static {p1}, Lcom/heytap/tingle/ipc/Slave;->createNewCommonProxy(Ljava/lang/String;)Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/tingle/ipc/serviceproxy/CommonServiceProxy;->getSystemService(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getMaster$0()V
    .locals 3

    .line 204
    const/4 v0, 0x0

    sput-object v0, Lcom/heytap/tingle/ipc/Slave;->sMaster:Lcom/heytap/tingle/ipc/IMaster;

    .line 205
    const-string v0, "Slave"

    const-string v1, "sMaster binder died."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method public static pingBinder()Z
    .locals 3

    .line 187
    sget-object v0, Lcom/heytap/tingle/ipc/Slave;->sMaster:Lcom/heytap/tingle/ipc/IMaster;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 188
    return v1

    .line 191
    :cond_0
    sget-object v0, Lcom/heytap/tingle/ipc/Slave;->sMaster:Lcom/heytap/tingle/ipc/IMaster;

    invoke-interface {v0}, Lcom/heytap/tingle/ipc/IMaster;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 192
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public static preparePackageInstaller(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 225
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/heytap/tingle/ipc/Slave;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/heytap/tingle/ipc/Slave;->getMaster(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    const-string v1, "Slave"

    const-string v2, "Error : Slave cannot connect master."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    return v0

    .line 230
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    .line 231
    .local v1, "installer":Landroid/content/pm/PackageInstaller;
    invoke-static {v1}, Lcom/color/inner/content/pm/PackageInstallerWrapper;->getPackageInstaller(Landroid/content/pm/PackageInstaller;)Landroid/os/IInterface;

    move-result-object v2

    .line 232
    .local v2, "installerBinder":Landroid/os/IInterface;
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    instance-of v3, v3, Lcom/heytap/tingle/ipc/SlaveBinder;

    if-eqz v3, :cond_1

    .line 233
    const/4 v0, 0x1

    return v0

    .line 236
    :cond_1
    new-instance v3, Lcom/heytap/tingle/ipc/SlaveBinder;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/heytap/tingle/ipc/SlaveBinder;-><init>(Landroid/os/IBinder;)V

    .line 237
    .local v3, "slaveBinder":Lcom/heytap/tingle/ipc/SlaveBinder;
    invoke-virtual {v3}, Lcom/heytap/tingle/ipc/SlaveBinder;->pingBinder()Z

    move-result v4

    if-nez v4, :cond_2

    .line 238
    const-string v4, "Slave"

    const-string v5, "Error : SlaveBinder pingBinder failed."

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    return v0

    .line 242
    :cond_2
    invoke-static {v1, v3}, Lcom/color/inner/content/pm/PackageInstallerWrapper;->setPackageInstaller(Landroid/content/pm/PackageInstaller;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v1    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v2    # "installerBinder":Landroid/os/IInterface;
    .end local v3    # "slaveBinder":Lcom/heytap/tingle/ipc/SlaveBinder;
    goto :goto_0

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Slave"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preparePackageInstaller failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static preparePackageInstallerSession(Landroid/content/pm/PackageInstaller$Session;)Z
    .locals 6
    .param p0, "session"    # Landroid/content/pm/PackageInstaller$Session;

    .line 257
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/heytap/tingle/ipc/Slave;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    const-string v1, "Slave"

    const-string v2, "Error : Slave cannot connect master."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    return v0

    .line 262
    :cond_0
    invoke-static {p0}, Lcom/color/inner/content/pm/PackageInstallerWrapper$SessionWrapper;->getSession(Landroid/content/pm/PackageInstaller$Session;)Landroid/os/IInterface;

    move-result-object v1

    .line 263
    .local v1, "sessionBinder":Landroid/os/IInterface;
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    instance-of v2, v2, Lcom/heytap/tingle/ipc/SlaveBinder;

    if-eqz v2, :cond_1

    .line 264
    const/4 v0, 0x1

    return v0

    .line 267
    :cond_1
    new-instance v2, Lcom/heytap/tingle/ipc/SlaveBinder;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/heytap/tingle/ipc/SlaveBinder;-><init>(Landroid/os/IBinder;)V

    .line 268
    .local v2, "slaveSessionBinder":Lcom/heytap/tingle/ipc/SlaveBinder;
    invoke-virtual {v2}, Lcom/heytap/tingle/ipc/SlaveBinder;->pingBinder()Z

    move-result v3

    if-nez v3, :cond_2

    .line 269
    const-string v3, "Slave"

    const-string v4, "Error : SlaveBinder pingBinder failed."

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    return v0

    .line 272
    :cond_2
    invoke-static {p0, v2}, Lcom/color/inner/content/pm/PackageInstallerWrapper$SessionWrapper;->setSession(Landroid/content/pm/PackageInstaller$Session;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v1    # "sessionBinder":Landroid/os/IInterface;
    .end local v2    # "slaveSessionBinder":Lcom/heytap/tingle/ipc/SlaveBinder;
    goto :goto_0

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Slave"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preparePackageInstallerSession failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static prepareSystemService(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 120
    invoke-static {}, Lcom/heytap/tingle/ipc/Slave;->pingBinder()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/heytap/tingle/ipc/Slave;->getMaster(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const-string v0, "Slave"

    const-string v2, "Error : Slave cannot connect master."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    return v1

    .line 126
    :cond_0
    :try_start_0
    sget-object v0, Lcom/heytap/tingle/ipc/Slave;->sHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/heytap/tingle/ipc/servicehandler/SystemServiceHandler;

    .line 127
    .local v2, "handler":Lcom/heytap/tingle/ipc/servicehandler/SystemServiceHandler;
    invoke-interface {v2, p1}, Lcom/heytap/tingle/ipc/servicehandler/SystemServiceHandler;->canHandle(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    invoke-interface {v2, p0}, Lcom/heytap/tingle/ipc/servicehandler/SystemServiceHandler;->handle(Landroid/content/Context;)V

    .line 130
    .end local v2    # "handler":Lcom/heytap/tingle/ipc/servicehandler/SystemServiceHandler;
    :cond_1
    goto :goto_0

    .line 132
    :cond_2
    sget-object v0, Lmirror/android/os/ServiceManager;->getService:Lcom/heytap/reflect/RefStaticMethod;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, v3}, Lcom/heytap/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 133
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_3

    .line 134
    const-string v2, "Slave"

    const-string v3, "getService failed because bind is null"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/heytap/tingle/ipc/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    return v1

    .line 137
    :cond_3
    instance-of v3, v0, Lcom/heytap/tingle/ipc/SlaveBinder;

    if-eqz v3, :cond_4

    .line 138
    return v2

    .line 141
    :cond_4
    new-instance v3, Lcom/heytap/tingle/ipc/SlaveBinder;

    invoke-direct {v3, v0}, Lcom/heytap/tingle/ipc/SlaveBinder;-><init>(Landroid/os/IBinder;)V

    .line 142
    .local v3, "slaveBinder":Lcom/heytap/tingle/ipc/SlaveBinder;
    sget-object v4, Lmirror/android/os/ServiceManager;->sCache:Lcom/heytap/reflect/RefStaticObject;

    invoke-virtual {v4}, Lcom/heytap/reflect/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    return v2

    .line 144
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v3    # "slaveBinder":Lcom/heytap/tingle/ipc/SlaveBinder;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Slave"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareSystemService failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public static prepareSystemService(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 152
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/heytap/tingle/ipc/Slave;->prepareSystemService(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static prepareSystemServiceHandler()V
    .locals 2

    .line 55
    sget-object v0, Lcom/heytap/tingle/ipc/Slave;->sHandlers:Ljava/util/List;

    new-instance v1, Lcom/heytap/tingle/ipc/servicehandler/PackageManagerHandler;

    invoke-direct {v1}, Lcom/heytap/tingle/ipc/servicehandler/PackageManagerHandler;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/heytap/tingle/ipc/Slave;->sHandlers:Ljava/util/List;

    new-instance v1, Lcom/heytap/tingle/ipc/servicehandler/WindowManagerHandler;

    invoke-direct {v1}, Lcom/heytap/tingle/ipc/servicehandler/WindowManagerHandler;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/heytap/tingle/ipc/Slave;->sHandlers:Ljava/util/List;

    new-instance v1, Lcom/heytap/tingle/ipc/servicehandler/ActivityManagerHandler;

    invoke-direct {v1}, Lcom/heytap/tingle/ipc/servicehandler/ActivityManagerHandler;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/heytap/tingle/ipc/Slave;->sHandlers:Ljava/util/List;

    new-instance v1, Lcom/heytap/tingle/ipc/servicehandler/FetcherCacheHandler;

    invoke-direct {v1}, Lcom/heytap/tingle/ipc/servicehandler/FetcherCacheHandler;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/heytap/tingle/ipc/Slave;->sHandlers:Ljava/util/List;

    new-instance v1, Lcom/heytap/tingle/ipc/servicehandler/NotificationManagerHandler;

    invoke-direct {v1}, Lcom/heytap/tingle/ipc/servicehandler/NotificationManagerHandler;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method private static prepareSystemServiceProxy()V
    .locals 2

    .line 63
    sget-object v0, Lcom/heytap/tingle/ipc/Slave;->sProxy:Ljava/util/List;

    new-instance v1, Lcom/heytap/tingle/ipc/serviceproxy/app/ActivityManagerProxy;

    invoke-direct {v1}, Lcom/heytap/tingle/ipc/serviceproxy/app/ActivityManagerProxy;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/heytap/tingle/ipc/Slave;->sProxy:Ljava/util/List;

    new-instance v1, Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;

    invoke-direct {v1}, Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/heytap/tingle/ipc/Slave;->sProxy:Ljava/util/List;

    new-instance v1, Lcom/heytap/tingle/ipc/serviceproxy/app/NotificationManagerProxy;

    invoke-direct {v1}, Lcom/heytap/tingle/ipc/serviceproxy/app/NotificationManagerProxy;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/heytap/tingle/ipc/Slave;->sProxy:Ljava/util/List;

    new-instance v1, Lcom/heytap/tingle/ipc/serviceproxy/view/WindowManagerProxy;

    invoke-direct {v1}, Lcom/heytap/tingle/ipc/serviceproxy/view/WindowManagerProxy;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/heytap/tingle/ipc/Slave;->sProxy:Ljava/util/List;

    new-instance v1, Lcom/heytap/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;

    invoke-direct {v1}, Lcom/heytap/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/heytap/tingle/ipc/Slave;->sProxy:Ljava/util/List;

    new-instance v1, Lcom/heytap/tingle/ipc/serviceproxy/inner/WindowManagerInnerProxy;

    invoke-direct {v1}, Lcom/heytap/tingle/ipc/serviceproxy/inner/WindowManagerInnerProxy;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method private static requireMaster()Landroid/os/IInterface;
    .locals 2

    .line 178
    sget-object v0, Lcom/heytap/tingle/ipc/Slave;->sMaster:Lcom/heytap/tingle/ipc/IMaster;

    if-nez v0, :cond_1

    .line 179
    sget-object v0, Lcom/heytap/tingle/ipc/Slave;->mApp:Landroid/app/Application;

    invoke-static {v0}, Lcom/heytap/tingle/ipc/Slave;->getMaster(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not find master... Try again"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    :goto_0
    sget-object v0, Lcom/heytap/tingle/ipc/Slave;->sMaster:Lcom/heytap/tingle/ipc/IMaster;

    return-object v0
.end method

.method public static resetBinderOrigin(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/heytap/tingle/ipc/Slave;->sProxy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/tingle/ipc/serviceproxy/ISystemServiceProxy;

    .line 106
    .local v1, "proxy":Lcom/heytap/tingle/ipc/serviceproxy/ISystemServiceProxy;
    invoke-interface {v1, p1}, Lcom/heytap/tingle/ipc/serviceproxy/ISystemServiceProxy;->canHandle(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-interface {v1, p0}, Lcom/heytap/tingle/ipc/serviceproxy/ISystemServiceProxy;->resetBinderOrigin(Landroid/content/Context;)V

    .line 108
    return-void

    .line 110
    .end local v1    # "proxy":Lcom/heytap/tingle/ipc/serviceproxy/ISystemServiceProxy;
    :cond_0
    goto :goto_0

    .line 111
    :cond_1
    return-void
.end method

.method public static resetSystemService(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 157
    :try_start_0
    sget-object v0, Lcom/heytap/tingle/ipc/Slave;->sHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/tingle/ipc/servicehandler/SystemServiceHandler;

    .line 158
    .local v1, "handler":Lcom/heytap/tingle/ipc/servicehandler/SystemServiceHandler;
    invoke-interface {v1, p1}, Lcom/heytap/tingle/ipc/servicehandler/SystemServiceHandler;->canHandle(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    invoke-interface {v1, p0}, Lcom/heytap/tingle/ipc/servicehandler/SystemServiceHandler;->reset(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v1    # "handler":Lcom/heytap/tingle/ipc/servicehandler/SystemServiceHandler;
    :cond_0
    goto :goto_0

    .line 162
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Slave"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetSystemService failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    return v3
.end method

.method public static resetSystemService(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 170
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/heytap/tingle/ipc/Slave;->resetSystemService(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static transactRemote(Landroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 2
    .param p0, "data"    # Landroid/os/Parcel;
    .param p1, "reply"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    invoke-static {}, Lcom/heytap/tingle/ipc/Slave;->requireMaster()Landroid/os/IInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 175
    return-void
.end method
