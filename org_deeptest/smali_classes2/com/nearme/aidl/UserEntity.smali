.class public Lcom/nearme/aidl/UserEntity;
.super Ljava/lang/Object;
.source "UserEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/platform/usercenter/basic/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nearme/aidl/UserEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authToken:Ljava/lang/String;

.field private result:I

.field private resultMsg:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Lcom/nearme/aidl/UserEntity$1;

    invoke-direct {v0}, Lcom/nearme/aidl/UserEntity$1;-><init>()V

    sput-object v0, Lcom/nearme/aidl/UserEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/nearme/aidl/UserEntity;->result:I

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/aidl/UserEntity;->resultMsg:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/aidl/UserEntity;->username:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/aidl/UserEntity;->authToken:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "resultMsg"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "authToken"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/nearme/aidl/UserEntity;->result:I

    .line 37
    iput-object p2, p0, Lcom/nearme/aidl/UserEntity;->resultMsg:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/nearme/aidl/UserEntity;->username:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/nearme/aidl/UserEntity;->authToken:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static fromGson(Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;
    .locals 5
    .param p0, "body"    # Ljava/lang/String;

    .line 123
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    return-object v1

    .line 126
    :cond_0
    new-instance v0, Lcom/nearme/aidl/UserEntity;

    invoke-direct {v0}, Lcom/nearme/aidl/UserEntity;-><init>()V

    .line 128
    .local v0, "info":Lcom/nearme/aidl/UserEntity;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 129
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v3, v4, :cond_1

    .line 130
    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/nearme/aidl/UserEntity;->setResult(I)V

    .line 132
    :cond_1
    const-string v3, "resultMsg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "resultMsg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v3, v4, :cond_2

    .line 133
    const-string v3, "resultMsg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nearme/aidl/UserEntity;->setResultMsg(Ljava/lang/String;)V

    .line 135
    :cond_2
    const-string v3, "username"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "username"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v3, v4, :cond_3

    .line 136
    const-string v3, "username"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nearme/aidl/UserEntity;->setUsername(Ljava/lang/String;)V

    .line 138
    :cond_3
    const-string v3, "authToken"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "authToken"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v3, v4, :cond_4

    .line 139
    const-string v3, "authToken"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nearme/aidl/UserEntity;->setAuthToken(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    nop

    .line 145
    return-object v0

    .line 141
    :catch_0
    move-exception v2

    .line 142
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 143
    return-object v1
.end method

.method public static toJson(Lcom/nearme/aidl/UserEntity;)Ljava/lang/String;
    .locals 4
    .param p0, "entity"    # Lcom/nearme/aidl/UserEntity;

    .line 149
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 150
    return-object v0

    .line 153
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 154
    .local v1, "jObject":Lorg/json/JSONObject;
    const-string v2, "result"

    invoke-virtual {p0}, Lcom/nearme/aidl/UserEntity;->getResult()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 155
    const-string v2, "resultMsg"

    invoke-virtual {p0}, Lcom/nearme/aidl/UserEntity;->getResultMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v2, "username"

    invoke-virtual {p0}, Lcom/nearme/aidl/UserEntity;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v2, "authToken"

    invoke-virtual {p0}, Lcom/nearme/aidl/UserEntity;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 159
    .end local v1    # "jObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 162
    .end local v1    # "e":Lorg/json/JSONException;
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/nearme/aidl/UserEntity;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/nearme/aidl/UserEntity;->result:I

    return v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/nearme/aidl/UserEntity;->resultMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/nearme/aidl/UserEntity;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authToken"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/nearme/aidl/UserEntity;->authToken:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "result"    # I

    .line 62
    iput p1, p0, Lcom/nearme/aidl/UserEntity;->result:I

    .line 63
    return-void
.end method

.method public setResultMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultMsg"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/nearme/aidl/UserEntity;->resultMsg:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/nearme/aidl/UserEntity;->username:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{UserEntity : [result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nearme/aidl/UserEntity;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "],[resultMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nearme/aidl/UserEntity;->resultMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "],[username = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nearme/aidl/UserEntity;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "],[authToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nearme/aidl/UserEntity;->authToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 93
    iget v0, p0, Lcom/nearme/aidl/UserEntity;->result:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Lcom/nearme/aidl/UserEntity;->resultMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/nearme/aidl/UserEntity;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/nearme/aidl/UserEntity;->authToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return-void
.end method
