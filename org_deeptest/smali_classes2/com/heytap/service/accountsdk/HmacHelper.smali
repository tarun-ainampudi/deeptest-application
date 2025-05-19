.class Lcom/heytap/service/accountsdk/HmacHelper;
.super Ljava/lang/Object;
.source "HmacHelper.java"


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hmacSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "aValue"    # Ljava/lang/String;
    .param p1, "aKey"    # Ljava/lang/String;

    .line 13
    const-string v0, "UTF-8"

    invoke-static {p0, p1, v0}, Lcom/heytap/service/accountsdk/HmacHelper;->signMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static signMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "aValue"    # Ljava/lang/String;
    .param p1, "aKey"    # Ljava/lang/String;

    .line 17
    const-string v0, "UTF-8"

    invoke-static {p0, p1, v0}, Lcom/heytap/service/accountsdk/HmacHelper;->signMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static signMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "aValue"    # Ljava/lang/String;
    .param p1, "aKey"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 21
    invoke-static {p2}, Lcom/heytap/service/accountsdk/Utilities;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const-string p2, "UTF-8"

    .line 25
    :cond_0
    const/16 v0, 0x40

    new-array v1, v0, [B

    .line 26
    .local v1, "k_ipad":[B
    new-array v2, v0, [B

    .line 31
    .local v2, "k_opad":[B
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 32
    .local v3, "keyb":[B
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .local v4, "value":[B
    nop

    .line 37
    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    goto :goto_0

    .line 34
    .end local v3    # "keyb":[B
    .end local v4    # "value":[B
    :catch_0
    move-exception v3

    .line 36
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 37
    .local v4, "keyb":[B
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 40
    .local v3, "value":[B
    :goto_0
    array-length v5, v4

    const/16 v6, 0x36

    invoke-static {v1, v5, v0, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 41
    array-length v5, v4

    const/16 v7, 0x5c

    invoke-static {v2, v5, v0, v7}, Ljava/util/Arrays;->fill([BIIB)V

    .line 42
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_1
    array-length v8, v4

    if-ge v5, v8, :cond_1

    .line 44
    aget-byte v8, v4, v5

    xor-int/2addr v8, v6

    int-to-byte v8, v8

    aput-byte v8, v1, v5

    .line 45
    aget-byte v8, v4, v5

    xor-int/2addr v8, v7

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    .line 42
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 48
    .end local v5    # "i":I
    :cond_1
    const/4 v5, 0x0

    move-object v6, v5

    .line 51
    .local v6, "md":Ljava/security/MessageDigest;
    :try_start_1
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v7

    .line 56
    .end local v6    # "md":Ljava/security/MessageDigest;
    .local v5, "md":Ljava/security/MessageDigest;
    nop

    .line 57
    invoke-virtual {v5, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 58
    invoke-virtual {v5, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 59
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 60
    .local v6, "dg":[B
    invoke-virtual {v5}, Ljava/security/MessageDigest;->reset()V

    .line 61
    invoke-virtual {v5, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 62
    const/16 v7, 0x10

    invoke-virtual {v5, v6, v0, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 63
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 64
    .end local v6    # "dg":[B
    .local v0, "dg":[B
    invoke-static {v0}, Lcom/heytap/service/accountsdk/HmacHelper;->toHex([B)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 53
    .end local v0    # "dg":[B
    .end local v5    # "md":Ljava/security/MessageDigest;
    .local v6, "md":Ljava/security/MessageDigest;
    :catch_1
    move-exception v0

    .line 55
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    return-object v5
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # [B

    .line 68
    if-nez p0, :cond_0

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 71
    .local v0, "output":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 72
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 73
    .local v2, "current":I
    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    .line 74
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .end local v2    # "current":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
