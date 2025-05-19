.class public Lcom/heytap/tingle/ipc/Master;
.super Lcom/heytap/tingle/ipc/IMaster$Stub;
.source "Master.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Master"

.field private static final mLock:Ljava/lang/Object;

.field private static volatile sInstance:Lcom/heytap/tingle/ipc/Master;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/heytap/tingle/ipc/Master;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/heytap/tingle/ipc/IMaster$Stub;-><init>()V

    .line 32
    return-void
.end method

.method static getInstance()Lcom/heytap/tingle/ipc/Master;
    .locals 2

    .line 21
    sget-object v0, Lcom/heytap/tingle/ipc/Master;->sInstance:Lcom/heytap/tingle/ipc/Master;

    if-nez v0, :cond_1

    .line 22
    sget-object v0, Lcom/heytap/tingle/ipc/Master;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/heytap/tingle/ipc/Master;->sInstance:Lcom/heytap/tingle/ipc/Master;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/heytap/tingle/ipc/Master;

    invoke-direct {v1}, Lcom/heytap/tingle/ipc/Master;-><init>()V

    sput-object v1, Lcom/heytap/tingle/ipc/Master;->sInstance:Lcom/heytap/tingle/ipc/Master;

    .line 26
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 28
    :cond_1
    :goto_0
    sget-object v0, Lcom/heytap/tingle/ipc/Master;->sInstance:Lcom/heytap/tingle/ipc/Master;

    return-object v0
.end method

.method private transactRemote(Landroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 46
    .local v0, "targetBinder":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 48
    .local v1, "targetCode":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "authStr":[Ljava/lang/String;
    invoke-static {}, Lcom/heytap/shield/PermissionCheck;->getInstance()Lcom/heytap/shield/PermissionCheck;

    move-result-object v3

    invoke-virtual {v3}, Lcom/heytap/shield/PermissionCheck;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    invoke-static {}, Lcom/heytap/shield/PermissionCheck;->getInstance()Lcom/heytap/shield/PermissionCheck;

    move-result-object v3

    .line 51
    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/heytap/shield/PermissionCheck;->verityTingle(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Tingle Authentication Failed."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 55
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 57
    .local v3, "newData":Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v5

    invoke-virtual {v3, p1, v4, v5}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    nop

    .line 63
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 64
    .local v4, "id":J
    invoke-interface {v0, v1, v3, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 65
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .end local v4    # "id":J
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 68
    nop

    .line 69
    return-void

    .line 67
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 68
    throw v4

    .line 58
    :catch_0
    move-exception v4

    .line 59
    .local v4, "tr":Ljava/lang/Throwable;
    const-string v5, "Master"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appendFrom failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return-void
.end method


# virtual methods
.method public getUid()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 74
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v0

    return v0

    .line 76
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 37
    const-string v1, "com.heytap.epona.binder"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p2, p3, p4}, Lcom/heytap/tingle/ipc/Master;->transactRemote(Landroid/os/Parcel;Landroid/os/Parcel;I)V

    .line 39
    return v0

    .line 41
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/heytap/tingle/ipc/IMaster$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method
