.class Lcom/heytap/epona/ITransferCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITransferCallback.java"

# interfaces
.implements Lcom/heytap/epona/ITransferCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/epona/ITransferCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/heytap/epona/ITransferCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/heytap/epona/ITransferCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 82
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/heytap/epona/ITransferCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 89
    const-string v0, "com.heytap.epona.ITransferCallback"

    return-object v0
.end method

.method public onReceive(Lcom/heytap/epona/Response;)V
    .locals 5
    .param p1, "response"    # Lcom/heytap/epona/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 94
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 96
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.heytap.epona.ITransferCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 97
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    invoke-virtual {p1, v0, v3}, Lcom/heytap/epona/Response;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    :goto_0
    iget-object v4, p0, Lcom/heytap/epona/ITransferCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 105
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/heytap/epona/ITransferCallback$Stub;->getDefaultImpl()Lcom/heytap/epona/ITransferCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 106
    invoke-static {}, Lcom/heytap/epona/ITransferCallback$Stub;->getDefaultImpl()Lcom/heytap/epona/ITransferCallback;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/heytap/epona/ITransferCallback;->onReceive(Lcom/heytap/epona/Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 107
    return-void

    .line 109
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 114
    nop

    .line 115
    return-void

    .line 112
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 114
    throw v2
.end method
