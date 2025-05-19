.class public Lcom/platform/usercenter/tools/algorithm/HmacHelper;
.super Ljava/lang/Object;
.source "HmacHelper.java"


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hmacSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "aValue"    # Ljava/lang/String;
    .param p1, "aKey"    # Ljava/lang/String;

    .line 78
    const-string v0, "UTF-8"

    invoke-static {p0, p1, v0}, Lcom/platform/usercenter/tools/algorithm/HmacHelper;->signMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static signMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "aValue"    # Ljava/lang/String;
    .param p1, "aKey"    # Ljava/lang/String;

    .line 89
    const-string v0, "UTF-8"

    invoke-static {p0, p1, v0}, Lcom/platform/usercenter/tools/algorithm/HmacHelper;->signMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static signMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "aValue"    # Ljava/lang/String;
    .param p1, "aKey"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 101
    invoke-static {p2}, Lcom/platform/usercenter/tools/datastructure/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string p2, "UTF-8"

    .line 105
    :cond_0
    const/16 v0, 0x40

    new-array v1, v0, [B

    .line 106
    .local v1, "k_ipad":[B
    new-array v2, v0, [B

    .line 110
    .local v2, "k_opad":[B
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 111
    .local v3, "keyb":[B
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .local v4, "value":[B
    nop

    .line 114
    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    goto :goto_0

    .line 112
    .end local v3    # "keyb":[B
    .end local v4    # "value":[B
    :catch_0
    move-exception v3

    .line 113
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 114
    .local v4, "keyb":[B
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 117
    .local v3, "value":[B
    :goto_0
    array-length v5, v4

    const/16 v6, 0x36

    invoke-static {v1, v5, v0, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 118
    array-length v5, v4

    const/16 v7, 0x5c

    invoke-static {v2, v5, v0, v7}, Ljava/util/Arrays;->fill([BIIB)V

    .line 119
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_1
    array-length v8, v4

    if-ge v5, v8, :cond_1

    .line 120
    aget-byte v8, v4, v5

    xor-int/2addr v8, v6

    int-to-byte v8, v8

    aput-byte v8, v1, v5

    .line 121
    aget-byte v8, v4, v5

    xor-int/2addr v8, v7

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    .line 119
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 124
    .end local v5    # "i":I
    :cond_1
    const/4 v5, 0x0

    move-object v6, v5

    .line 126
    .local v6, "md":Ljava/security/MessageDigest;
    :try_start_1
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v7

    .line 129
    .end local v6    # "md":Ljava/security/MessageDigest;
    .local v5, "md":Ljava/security/MessageDigest;
    nop

    .line 130
    invoke-virtual {v5, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 131
    invoke-virtual {v5, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 132
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 133
    .local v6, "dg":[B
    invoke-virtual {v5}, Ljava/security/MessageDigest;->reset()V

    .line 134
    invoke-virtual {v5, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 135
    const/16 v7, 0x10

    invoke-virtual {v5, v6, v0, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 136
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 137
    .end local v6    # "dg":[B
    .local v0, "dg":[B
    invoke-static {v0}, Lcom/platform/usercenter/tools/algorithm/HmacHelper;->toHex([B)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 127
    .end local v0    # "dg":[B
    .end local v5    # "md":Ljava/security/MessageDigest;
    .local v6, "md":Ljava/security/MessageDigest;
    :catch_1
    move-exception v0

    .line 128
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    return-object v5
.end method

.method public static signSHA1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "aValue"    # Ljava/lang/String;
    .param p1, "aKey"    # Ljava/lang/String;

    .line 31
    const-string v0, "UTF-8"

    invoke-static {p0, p1, v0}, Lcom/platform/usercenter/tools/algorithm/HmacHelper;->signSHA1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static signSHA1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "aValue"    # Ljava/lang/String;
    .param p1, "aKey"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 43
    invoke-static {p2}, Lcom/platform/usercenter/tools/datastructure/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string p2, "UTF-8"

    .line 50
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 51
    .local v0, "value":[B
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .local v1, "key":[B
    nop

    .line 54
    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0

    .line 52
    .end local v0    # "value":[B
    .end local v1    # "key":[B
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 54
    .local v1, "value":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 57
    .local v0, "key":[B
    :goto_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HmacSHA1"

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 58
    .local v2, "signingKey":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v3, 0x0

    move-object v4, v3

    .line 60
    .local v4, "mac":Ljavax/crypto/Mac;
    :try_start_1
    const-string v5, "HmacSHA1"

    invoke-static {v5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v5

    move-object v4, v5

    .line 61
    invoke-virtual {v4, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    nop

    .line 66
    invoke-virtual {v4, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3

    .line 67
    .local v3, "rawHmac":[B
    invoke-static {v3}, Lcom/platform/usercenter/tools/algorithm/HmacHelper;->toHex([B)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 62
    .end local v3    # "rawHmac":[B
    :catch_1
    move-exception v5

    .line 63
    .local v5, "e":Ljava/lang/Exception;
    return-object v3
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # [B

    .line 141
    if-nez p0, :cond_0

    .line 142
    const/4 v0, 0x0

    return-object v0

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 144
    .local v0, "output":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 145
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 147
    .local v2, "current":I
    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    .line 148
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .end local v2    # "current":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
