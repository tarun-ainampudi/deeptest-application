.class Lcom/heytap/compat/app/lockscreen/IOplusLockScreenCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOplusLockScreenCallback.java"

# interfaces
.implements Lcom/heytap/compat/app/lockscreen/IOplusLockScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/app/lockscreen/IOplusLockScreenCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/heytap/compat/app/lockscreen/IOplusLockScreenCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/heytap/compat/app/lockscreen/IOplusLockScreenCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 93
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/heytap/compat/app/lockscreen/IOplusLockScreenCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 101
    const-string v0, "com.color.compat.app.lockscreen.IColorLockScreenCallbackNative"

    return-object v0
.end method

.method public showDialogForIntercpet(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 108
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.color.compat.app.lockscreen.IColorLockScreenCallbackNative"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/heytap/compat/app/lockscreen/IOplusLockScreenCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 111
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lcom/heytap/compat/app/lockscreen/IOplusLockScreenCallback$Stub;->getDefaultImpl()Lcom/heytap/compat/app/lockscreen/IOplusLockScreenCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 112
    invoke-static {}, Lcom/heytap/compat/app/lockscreen/IOplusLockScreenCallback$Stub;->getDefaultImpl()Lcom/heytap/compat/app/lockscreen/IOplusLockScreenCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/heytap/compat/app/lockscreen/IOplusLockScreenCallback;->showDialogForIntercpet(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 113
    return-void

    .line 117
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 118
    nop

    .line 119
    return-void

    .line 117
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 118
    throw v1
.end method
