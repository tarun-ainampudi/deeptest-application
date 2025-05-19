.class final Lcom/nearme/aidl/UserEntity$1;
.super Ljava/lang/Object;
.source "UserEntity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/aidl/UserEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/nearme/aidl/UserEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/nearme/aidl/UserEntity;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .local v0, "result":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "resultMsg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "username":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "authToken":Ljava/lang/String;
    new-instance v4, Lcom/nearme/aidl/UserEntity;

    invoke-direct {v4}, Lcom/nearme/aidl/UserEntity;-><init>()V

    .line 114
    .local v4, "userEntity":Lcom/nearme/aidl/UserEntity;
    invoke-virtual {v4, v0}, Lcom/nearme/aidl/UserEntity;->setResult(I)V

    .line 115
    invoke-virtual {v4, v1}, Lcom/nearme/aidl/UserEntity;->setResultMsg(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v4, v2}, Lcom/nearme/aidl/UserEntity;->setUsername(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v4, v3}, Lcom/nearme/aidl/UserEntity;->setAuthToken(Ljava/lang/String;)V

    .line 118
    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lcom/nearme/aidl/UserEntity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/nearme/aidl/UserEntity;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/nearme/aidl/UserEntity;
    .locals 1
    .param p1, "size"    # I

    .line 103
    new-array v0, p1, [Lcom/nearme/aidl/UserEntity;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lcom/nearme/aidl/UserEntity$1;->newArray(I)[Lcom/nearme/aidl/UserEntity;

    move-result-object p1

    return-object p1
.end method
