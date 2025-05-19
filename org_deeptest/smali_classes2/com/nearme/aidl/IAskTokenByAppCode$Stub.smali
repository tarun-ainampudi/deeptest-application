.class public abstract Lcom/nearme/aidl/IAskTokenByAppCode$Stub;
.super Landroid/os/Binder;
.source "IAskTokenByAppCode.java"

# interfaces
.implements Lcom/nearme/aidl/IAskTokenByAppCode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/aidl/IAskTokenByAppCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nearme/aidl/IAskTokenByAppCode$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_reqReSignin:I = 0x4

.field static final TRANSACTION_reqSwitchAccount:I = 0x5

.field static final TRANSACTION_reqToken:I = 0x3

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Lcom/heytap/service/accountsdk/UCServiceConstant;->getProviderAIDLDesAskTokenByAppCodeXor8()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nearme/aidl/IAskTokenByAppCode$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    sget-object v0, Lcom/nearme/aidl/IAskTokenByAppCode$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/nearme/aidl/IAskTokenByAppCode$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/nearme/aidl/IAskTokenByAppCode$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nearme/aidl/IAskTokenByAppCode;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_0
    sget-object v0, Lcom/nearme/aidl/IAskTokenByAppCode$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nearme/aidl/IAskTokenByAppCode;

    if-eqz v1, :cond_1

    .line 56
    move-object v1, v0

    check-cast v1, Lcom/nearme/aidl/IAskTokenByAppCode;

    return-object v1

    .line 58
    :cond_1
    new-instance v1, Lcom/nearme/aidl/IAskTokenByAppCode$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/nearme/aidl/IAskTokenByAppCode$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/nearme/aidl/IAskTokenByAppCode;
    .locals 1

    .line 301
    sget-object v0, Lcom/nearme/aidl/IAskTokenByAppCode$Stub$Proxy;->sDefaultImpl:Lcom/nearme/aidl/IAskTokenByAppCode;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/nearme/aidl/IAskTokenByAppCode;)Z
    .locals 1
    .param p0, "impl"    # Lcom/nearme/aidl/IAskTokenByAppCode;

    .line 294
    sget-object v0, Lcom/nearme/aidl/IAskTokenByAppCode$Stub$Proxy;->sDefaultImpl:Lcom/nearme/aidl/IAskTokenByAppCode;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 295
    sput-object p0, Lcom/nearme/aidl/IAskTokenByAppCode$Stub$Proxy;->sDefaultImpl:Lcom/nearme/aidl/IAskTokenByAppCode;

    .line 296
    const/4 v0, 0x1

    return v0

    .line 298
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 62
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/nearme/aidl/IAskTokenByAppCode$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 67
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 130
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Lcom/nearme/aidl/IAskTokenByAppCode$Stub;->reqSwitchAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;

    move-result-object v5

    .line 136
    .local v5, "_result":Lcom/nearme/aidl/UserEntity;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v5, :cond_0

    .line 138
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    invoke-virtual {v5, p3, v2}, Lcom/nearme/aidl/UserEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    :goto_0
    return v2

    .line 112
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Lcom/nearme/aidl/UserEntity;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 116
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 117
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Lcom/nearme/aidl/IAskTokenByAppCode$Stub;->reqReSignin(Ljava/lang/String;Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;

    move-result-object v5

    .line 118
    .restart local v5    # "_result":Lcom/nearme/aidl/UserEntity;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v5, :cond_1

    .line 120
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    invoke-virtual {v5, p3, v2}, Lcom/nearme/aidl/UserEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    :goto_1
    return v2

    .line 94
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Lcom/nearme/aidl/UserEntity;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 98
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 99
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Lcom/nearme/aidl/IAskTokenByAppCode$Stub;->reqToken(Ljava/lang/String;Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;

    move-result-object v5

    .line 100
    .restart local v5    # "_result":Lcom/nearme/aidl/UserEntity;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v5, :cond_2

    .line 102
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    invoke-virtual {v5, p3, v2}, Lcom/nearme/aidl/UserEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 106
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    :goto_2
    return v2

    .line 85
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Lcom/nearme/aidl/UserEntity;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/nearme/aidl/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nearme/aidl/ICallBack;

    move-result-object v1

    .line 88
    .local v1, "_arg0":Lcom/nearme/aidl/ICallBack;
    invoke-virtual {p0, v1}, Lcom/nearme/aidl/IAskTokenByAppCode$Stub;->unregisterCallback(Lcom/nearme/aidl/ICallBack;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    return v2

    .line 76
    .end local v1    # "_arg0":Lcom/nearme/aidl/ICallBack;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/nearme/aidl/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nearme/aidl/ICallBack;

    move-result-object v1

    .line 79
    .restart local v1    # "_arg0":Lcom/nearme/aidl/ICallBack;
    invoke-virtual {p0, v1}, Lcom/nearme/aidl/IAskTokenByAppCode$Stub;->registerCallback(Lcom/nearme/aidl/ICallBack;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    return v2

    .line 71
    .end local v1    # "_arg0":Lcom/nearme/aidl/ICallBack;
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
