.class public Lcom/heytap/shield/authcode/info/AuthResult;
.super Ljava/lang/Object;
.source "AuthResult.java"


# instance fields
.field private mErrorCode:I

.field private mPackageName:Ljava/lang/String;

.field private mPermissionTables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/heytap/shield/authcode/PermissionTable;",
            ">;"
        }
    .end annotation
.end field

.field private mPermitBits:[B

.field private mSigSHA256:Ljava/lang/String;

.field private mUpdateTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "permitBits"    # [B

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/heytap/shield/authcode/info/AuthResult;->mPackageName:Ljava/lang/String;

    .line 30
    iput p2, p0, Lcom/heytap/shield/authcode/info/AuthResult;->mErrorCode:I

    .line 31
    iput-object p3, p0, Lcom/heytap/shield/authcode/info/AuthResult;->mPermitBits:[B

    .line 32
    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/heytap/shield/authcode/info/AuthResult;->mPermissionTables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heytap/shield/authcode/PermissionTable;

    .line 98
    .local v0, "permissionTable":Lcom/heytap/shield/authcode/PermissionTable;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p2}, Lcom/heytap/shield/authcode/PermissionTable;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 101
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getErrrorCode()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/heytap/shield/authcode/info/AuthResult;->mErrorCode:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/heytap/shield/authcode/info/AuthResult;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermitBits()[B
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/heytap/shield/authcode/info/AuthResult;->mPermitBits:[B

    return-object v0
.end method

.method public getSigSHA256()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/heytap/shield/authcode/info/AuthResult;->mSigSHA256:Ljava/lang/String;

    return-object v0
.end method

.method public initPermissionTable()V
    .locals 8

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/heytap/shield/authcode/info/AuthResult;->mPermissionTables:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/shield/authcode/info/AuthResult;->mPermitBits:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, ";"

    invoke-static {v0, v1}, Lcom/heytap/shield/utils/SystemUtils;->getSplitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 79
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    .local v2, "permission":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 81
    .local v3, "i":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 82
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "type":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "info":Ljava/lang/String;
    const-string v6, "epona"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "tingle"

    .line 85
    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 86
    :cond_0
    iget-object v6, p0, Lcom/heytap/shield/authcode/info/AuthResult;->mPermissionTables:Ljava/util/Map;

    new-instance v7, Lcom/heytap/shield/authcode/PermissionTable;

    invoke-direct {v7, v5}, Lcom/heytap/shield/authcode/PermissionTable;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/heytap/shield/authcode/info/AuthResult;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Permission : type ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    .line 89
    invoke-static {v5, v7}, Lcom/heytap/shield/utils/SystemUtils;->getSplitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 87
    invoke-static {v6}, Lcom/heytap/shield/utils/PLog;->d(Ljava/lang/String;)V

    .line 93
    .end local v2    # "permission":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "info":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 94
    :cond_2
    return-void
.end method

.method public isExpired()Z
    .locals 6

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 72
    .local v0, "current":J
    iget-wide v2, p0, Lcom/heytap/shield/authcode/info/AuthResult;->mUpdateTime:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/heytap/shield/Constants;->CACHE_UPDATE_TIME:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public setErrrorCode(I)V
    .locals 0
    .param p1, "mErrrorCode"    # I

    .line 55
    iput p1, p0, Lcom/heytap/shield/authcode/info/AuthResult;->mErrorCode:I

    .line 56
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPackageName"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/heytap/shield/authcode/info/AuthResult;->mPackageName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setPermitBits([B)V
    .locals 0
    .param p1, "mPermitBits"    # [B

    .line 39
    iput-object p1, p0, Lcom/heytap/shield/authcode/info/AuthResult;->mPermitBits:[B

    .line 40
    return-void
.end method

.method public setSigSHA256(Ljava/lang/String;)V
    .locals 0
    .param p1, "sig"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/heytap/shield/authcode/info/AuthResult;->mSigSHA256:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setUpdateTime()V
    .locals 2

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/shield/authcode/info/AuthResult;->mUpdateTime:J

    .line 60
    return-void
.end method
