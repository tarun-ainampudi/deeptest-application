.class public abstract Lcom/heytap/epona/IRemoteTransfer$Stub;
.super Landroid/os/Binder;
.source "IRemoteTransfer.java"

# interfaces
.implements Lcom/heytap/epona/IRemoteTransfer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/epona/IRemoteTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/epona/IRemoteTransfer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.heytap.epona.IRemoteTransfer"

.field static final TRANSACTION_asyncCall:I = 0x2

.field static final TRANSACTION_call:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "com.heytap.epona.IRemoteTransfer"

    invoke-virtual {p0, p0, v0}, Lcom/heytap/epona/IRemoteTransfer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/heytap/epona/IRemoteTransfer;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_0
    const-string v0, "com.heytap.epona.IRemoteTransfer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/heytap/epona/IRemoteTransfer;

    if-eqz v1, :cond_1

    .line 42
    move-object v1, v0

    check-cast v1, Lcom/heytap/epona/IRemoteTransfer;

    return-object v1

    .line 44
    :cond_1
    new-instance v1, Lcom/heytap/epona/IRemoteTransfer$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/heytap/epona/IRemoteTransfer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/heytap/epona/IRemoteTransfer;
    .locals 1

    .line 188
    sget-object v0, Lcom/heytap/epona/IRemoteTransfer$Stub$Proxy;->sDefaultImpl:Lcom/heytap/epona/IRemoteTransfer;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/heytap/epona/IRemoteTransfer;)Z
    .locals 1
    .param p0, "impl"    # Lcom/heytap/epona/IRemoteTransfer;

    .line 181
    sget-object v0, Lcom/heytap/epona/IRemoteTransfer$Stub$Proxy;->sDefaultImpl:Lcom/heytap/epona/IRemoteTransfer;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 182
    sput-object p0, Lcom/heytap/epona/IRemoteTransfer$Stub$Proxy;->sDefaultImpl:Lcom/heytap/epona/IRemoteTransfer;

    .line 183
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 48
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const-string v0, "com.heytap.epona.IRemoteTransfer"

    .line 53
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 83
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    sget-object v1, Lcom/heytap/epona/Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/epona/Request;

    goto :goto_0

    .line 89
    :cond_0
    nop

    .line 92
    .local v1, "_arg0":Lcom/heytap/epona/Request;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/heytap/epona/ITransferCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/heytap/epona/ITransferCallback;

    move-result-object v3

    .line 93
    .local v3, "_arg1":Lcom/heytap/epona/ITransferCallback;
    invoke-virtual {p0, v1, v3}, Lcom/heytap/epona/IRemoteTransfer$Stub;->asyncCall(Lcom/heytap/epona/Request;Lcom/heytap/epona/ITransferCallback;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    return v2

    .line 62
    .end local v1    # "_arg0":Lcom/heytap/epona/Request;
    .end local v3    # "_arg1":Lcom/heytap/epona/ITransferCallback;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    sget-object v1, Lcom/heytap/epona/Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/epona/Request;

    goto :goto_1

    .line 68
    :cond_1
    nop

    .line 70
    .restart local v1    # "_arg0":Lcom/heytap/epona/Request;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/heytap/epona/IRemoteTransfer$Stub;->call(Lcom/heytap/epona/Request;)Lcom/heytap/epona/Response;

    move-result-object v3

    .line 71
    .local v3, "_result":Lcom/heytap/epona/Response;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v3, :cond_2

    .line 73
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {v3, p3, v2}, Lcom/heytap/epona/Response;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 77
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    :goto_2
    return v2

    .line 57
    .end local v1    # "_arg0":Lcom/heytap/epona/Request;
    .end local v3    # "_result":Lcom/heytap/epona/Response;
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
