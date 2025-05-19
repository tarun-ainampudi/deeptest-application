.class public Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
.super Ljava/lang/Object;
.source "AuthenticationDbBean.java"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "a_e"
.end annotation


# instance fields
.field private mAuthCode:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "auth_code"
    .end annotation
.end field

.field private mCacheTime:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "cache_time"
    .end annotation
.end field

.field private mCapabilityName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "capability_name"
    .end annotation
.end field

.field private mExpiration:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "expiration"
    .end annotation
.end field

.field private mId:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field private mIsEnable:Z
    .annotation build Landroidx/room/ColumnInfo;
        name = "is_enable"
    .end annotation
.end field

.field private mLastUpdateTime:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "last_update_time"
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "packageName"
    .end annotation
.end field

.field private mPermissions:[B
    .annotation build Landroidx/room/ColumnInfo;
        name = "permission"
    .end annotation
.end field

.field private mUid:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "uid"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;J[BJJ)V
    .locals 0
    .param p1, "authCode"    # Ljava/lang/String;
    .param p2, "isEnable"    # Z
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "capabilityName"    # Ljava/lang/String;
    .param p6, "expiration"    # J
    .param p8, "permissions"    # [B
    .param p9, "lastUpdateTime"    # J
    .param p11, "cacheTime"    # J

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mAuthCode:Ljava/lang/String;

    .line 49
    iput-boolean p2, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mIsEnable:Z

    .line 50
    iput p3, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mUid:I

    .line 51
    iput-object p4, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mPackageName:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mCapabilityName:Ljava/lang/String;

    .line 53
    iput-wide p6, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mExpiration:J

    .line 54
    iput-object p8, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mPermissions:[B

    .line 55
    iput-wide p9, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mLastUpdateTime:J

    .line 56
    iput-wide p11, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mCacheTime:J

    .line 57
    return-void
.end method


# virtual methods
.method public getAuthCode()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mAuthCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 132
    iget-wide v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mCacheTime:J

    return-wide v0
.end method

.method public getCapabilityName()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mCapabilityName:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mExpiration:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mId:I

    return v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mLastUpdateTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()[B
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mPermissions:[B

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mUid:I

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mIsEnable:Z

    return v0
.end method

.method public setAuthCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "authCode"    # Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mAuthCode:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setCacheTime(J)V
    .locals 0
    .param p1, "cacheTime"    # J

    .line 136
    iput-wide p1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mCacheTime:J

    .line 137
    return-void
.end method

.method public setCapabilityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "capabilityName"    # Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mCapabilityName:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setExpiration(J)V
    .locals 0
    .param p1, "expiration"    # J

    .line 112
    iput-wide p1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mExpiration:J

    .line 113
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 64
    iput p1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mId:I

    .line 65
    return-void
.end method

.method public setIsEnable(Z)V
    .locals 0
    .param p1, "isRevoke"    # Z

    .line 80
    iput-boolean p1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mIsEnable:Z

    .line 81
    return-void
.end method

.method public setLastUpdateTime(J)V
    .locals 0
    .param p1, "lastUpdateTime"    # J

    .line 128
    iput-wide p1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mLastUpdateTime:J

    .line 129
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mPackageName:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setPermissions([B)V
    .locals 0
    .param p1, "permissions"    # [B

    .line 120
    iput-object p1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mPermissions:[B

    .line 121
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 88
    iput p1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->mUid:I

    .line 89
    return-void
.end method
