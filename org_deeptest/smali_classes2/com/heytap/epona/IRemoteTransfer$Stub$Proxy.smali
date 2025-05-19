.class Lcom/heytap/epona/IRemoteTransfer$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRemoteTransfer.java"

# interfaces
.implements Lcom/heytap/epona/IRemoteTransfer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/epona/IRemoteTransfer$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/heytap/epona/IRemoteTransfer;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/heytap/epona/IRemoteTransfer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 109
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/heytap/epona/IRemoteTransfer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public asyncCall(Lcom/heytap/epona/Request;Lcom/heytap/epona/ITransferCallback;)V
    .locals 5
    .param p1, "request"    # Lcom/heytap/epona/Request;
    .param p2, "callback"    # Lcom/heytap/epona/ITransferCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 153
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 155
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.heytap.epona.IRemoteTransfer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 156
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 157
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    invoke-virtual {p1, v0, v2}, Lcom/heytap/epona/Request;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/heytap/epona/ITransferCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 164
    iget-object v3, p0, Lcom/heytap/epona/IRemoteTransfer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 165
    .local v2, "_status":Z
    if-nez v2, :cond_2

    invoke-static {}, Lcom/heytap/epona/IRemoteTransfer$Stub;->getDefaultImpl()Lcom/heytap/epona/IRemoteTransfer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 166
    invoke-static {}, Lcom/heytap/epona/IRemoteTransfer$Stub;->getDefaultImpl()Lcom/heytap/epona/IRemoteTransfer;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/heytap/epona/IRemoteTransfer;->asyncCall(Lcom/heytap/epona/Request;Lcom/heytap/epona/ITransferCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    return-void

    .line 169
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    nop

    .line 175
    return-void

    .line 172
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    throw v2
.end method

.method public call(Lcom/heytap/epona/Request;)Lcom/heytap/epona/Response;
    .locals 5
    .param p1, "request"    # Lcom/heytap/epona/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 121
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 124
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.heytap.epona.IRemoteTransfer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 125
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    invoke-virtual {p1, v0, v3}, Lcom/heytap/epona/Request;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    :goto_0
    iget-object v4, p0, Lcom/heytap/epona/IRemoteTransfer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 133
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/heytap/epona/IRemoteTransfer$Stub;->getDefaultImpl()Lcom/heytap/epona/IRemoteTransfer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 134
    invoke-static {}, Lcom/heytap/epona/IRemoteTransfer$Stub;->getDefaultImpl()Lcom/heytap/epona/IRemoteTransfer;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/heytap/epona/IRemoteTransfer;->call(Lcom/heytap/epona/Request;)Lcom/heytap/epona/Response;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 134
    return-object v3

    .line 136
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 137
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    sget-object v3, Lcom/heytap/epona/Response;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/heytap/epona/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 141
    :cond_2
    const/4 v3, 0x0

    .end local v2    # "_status":Z
    .local v3, "_result":Lcom/heytap/epona/Response;
    :goto_1
    move-object v2, v3

    .line 145
    .end local v3    # "_result":Lcom/heytap/epona/Response;
    .local v2, "_result":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 147
    nop

    .line 148
    return-object v2

    .line 145
    .end local v2    # "_result":Lcom/heytap/epona/Response;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 147
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 116
    const-string v0, "com.heytap.epona.IRemoteTransfer"

    return-object v0
.end method
