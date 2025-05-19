.class public Lcom/heytap/shield/utils/ParseUtils;
.super Ljava/lang/Object;
.source "ParseUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseDigest([BI)[B
    .locals 4
    .param p0, "authCode"    # [B
    .param p1, "permissionLen"    # I

    .line 30
    array-length v0, p0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x9

    new-array v0, v0, [B

    .line 31
    .local v0, "digest":[B
    array-length v1, p0

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3, v1}, Lcom/heytap/shield/utils/SystemUtils;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    return-object v0
.end method

.method public static parseExpiration([BI)[B
    .locals 4
    .param p0, "authCode"    # [B
    .param p1, "permissionLen"    # I

    .line 23
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 24
    .local v1, "expiration":[B
    array-length v2, p0

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x8

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v0}, Lcom/heytap/shield/utils/SystemUtils;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    return-object v1
.end method

.method public static parsePermission([BI)[B
    .locals 3
    .param p0, "authCode"    # [B
    .param p1, "permissionLen"    # I

    .line 16
    new-array v0, p1, [B

    .line 17
    .local v0, "permission":[B
    array-length v1, p0

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x4

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, p1}, Lcom/heytap/shield/utils/SystemUtils;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    return-object v0
.end method

.method public static parsePermissionLength([B)[B
    .locals 4
    .param p0, "authCode"    # [B

    .line 10
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 11
    .local v1, "length":[B
    array-length v2, p0

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v0}, Lcom/heytap/shield/utils/SystemUtils;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    return-object v1
.end method

.method public static parseVersion([B)[B
    .locals 3
    .param p0, "authCode"    # [B

    .line 6
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aget-byte v2, p0, v1

    aput-byte v2, v0, v1

    return-object v0
.end method
