.class public abstract Lcom/nearme/aidl/IAskSigninByAppCode$Stub;
.super Landroid/os/Binder;
.source "IAskSigninByAppCode.java"

# interfaces
.implements Lcom/nearme/aidl/IAskSigninByAppCode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/aidl/IAskSigninByAppCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nearme/aidl/IAskSigninByAppCode$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_reqSignin:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    invoke-static {}, Lcom/heytap/service/accountsdk/UCServiceConstant;->getProviderAIDLDesAskSigninByAppCodeXor8()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nearme/aidl/IAskSigninByAppCode$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    sget-object v0, Lcom/nearme/aidl/IAskSigninByAppCode$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/nearme/aidl/IAskSigninByAppCode$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/nearme/aidl/IAskSigninByAppCode$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nearme/aidl/IAskSigninByAppCode;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_0
    sget-object v0, Lcom/nearme/aidl/IAskSigninByAppCode$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nearme/aidl/IAskSigninByAppCode;

    if-eqz v1, :cond_1

    .line 42
    move-object v1, v0

    check-cast v1, Lcom/nearme/aidl/IAskSigninByAppCode;

    return-object v1

    .line 44
    :cond_1
    new-instance v1, Lcom/nearme/aidl/IAskSigninByAppCode$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/nearme/aidl/IAskSigninByAppCode$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/nearme/aidl/IAskSigninByAppCode;
    .locals 1

    .line 149
    sget-object v0, Lcom/nearme/aidl/IAskSigninByAppCode$Stub$Proxy;->sDefaultImpl:Lcom/nearme/aidl/IAskSigninByAppCode;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/nearme/aidl/IAskSigninByAppCode;)Z
    .locals 1
    .param p0, "impl"    # Lcom/nearme/aidl/IAskSigninByAppCode;

    .line 142
    sget-object v0, Lcom/nearme/aidl/IAskSigninByAppCode$Stub$Proxy;->sDefaultImpl:Lcom/nearme/aidl/IAskSigninByAppCode;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 143
    sput-object p0, Lcom/nearme/aidl/IAskSigninByAppCode$Stub$Proxy;->sDefaultImpl:Lcom/nearme/aidl/IAskSigninByAppCode;

    .line 144
    const/4 v0, 0x1

    return v0

    .line 146
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
    .locals 18
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
    move/from16 v0, p1

    move-object/from16 v1, p3

    sget-object v2, Lcom/nearme/aidl/IAskSigninByAppCode$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 53
    .local v2, "descriptor":Ljava/lang/String;
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const v4, 0x5f4e5446

    if-eq v0, v4, :cond_0

    .line 88
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 57
    :cond_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    return v3

    .line 62
    :cond_1
    move-object/from16 v4, p2

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 66
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 68
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 70
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 72
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 74
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 75
    .local v17, "_arg5":Ljava/lang/String;
    move-object/from16 v5, p0

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    invoke-virtual/range {v5 .. v11}, Lcom/nearme/aidl/IAskSigninByAppCode$Stub;->reqSignin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;

    move-result-object v5

    .line 76
    .local v5, "_result":Lcom/nearme/aidl/UserEntity;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v5, :cond_2

    .line 78
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    invoke-virtual {v5, v1, v3}, Lcom/nearme/aidl/UserEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 82
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    :goto_0
    return v3
.end method
