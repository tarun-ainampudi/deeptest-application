.class public Lcom/platform/usercenter/tools/security/RsaCoder;
.super Ljava/lang/Object;
.source "RsaCoder.java"


# static fields
.field public static final Key:Ljava/lang/String;

.field private static final RSA_ALGORITHM:Ljava/lang/String; = "RSA"

.field public static final SIGN_ALGORITHMS:Ljava/lang/String; = "SHA1WithRSA"

.field private static final algorithm:Ljava/lang/String; = "RSA/NONE/PKCS1Padding"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    invoke-static {}, Lcom/platform/usercenter/tools/security/RsaCoder;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/platform/usercenter/tools/security/RsaCoder;->Key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static base64Decode([B)[B
    .locals 1
    .param p0, "bytes"    # [B

    .line 258
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .line 207
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 209
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 210
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "sTemp":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 214
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v2    # "i":I
    .end local v3    # "sTemp":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static crypt([BLjavax/crypto/Cipher;)[B
    .locals 12
    .param p0, "in"    # [B
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v6

    .line 65
    .local v6, "blockSize":I
    invoke-virtual {p1, v6}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v7

    .line 66
    .local v7, "outputSize":I
    array-length v0, p0

    .line 67
    .local v0, "in_length":I
    rem-int v1, v0, v6

    if-nez v1, :cond_0

    div-int v1, v0, v6

    goto :goto_0

    :cond_0
    div-int v1, v0, v6

    add-int/lit8 v1, v1, 0x1

    :goto_0
    move v8, v1

    .line 69
    .local v8, "encryptedChunkNum":I
    mul-int v1, v8, v7

    new-array v9, v1, [B

    .line 70
    .local v9, "result":[B
    const/4 v1, 0x0

    move v10, v0

    .end local v0    # "in_length":I
    .local v1, "i":I
    .local v10, "in_length":I
    :goto_1
    move v11, v1

    .line 71
    .end local v1    # "i":I
    .local v11, "i":I
    if-lt v10, v6, :cond_1

    .line 72
    mul-int v2, v11, v6

    mul-int v5, v11, v7

    move-object v0, p1

    move-object v1, p0

    move v3, v6

    move-object v4, v9

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    .line 73
    sub-int/2addr v10, v6

    .line 74
    add-int/lit8 v1, v11, 0x1

    goto :goto_1

    .line 76
    :cond_1
    if-lez v10, :cond_2

    .line 77
    mul-int v2, v11, v6

    mul-int v5, v11, v7

    move-object v0, p1

    move-object v1, p0

    move v3, v10

    move-object v4, v9

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    .line 79
    :cond_2
    return-object v9
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 90
    return-object v0

    .line 93
    :cond_0
    :try_start_0
    const-string v1, "RSA/NONE/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 95
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const-string v2, "RSA"

    invoke-static {v2, p1}, Lcom/platform/usercenter/tools/security/RsaCoder;->getPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v2

    .line 96
    .local v2, "privateKey":Ljava/security/PrivateKey;
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 98
    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 99
    .local v3, "plaintext":[B
    invoke-static {v3, v1}, Lcom/platform/usercenter/tools/security/RsaCoder;->crypt([BLjavax/crypto/Cipher;)[B

    move-result-object v4

    .line 100
    .local v4, "output":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 101
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 102
    .end local v5    # "s":Ljava/lang/String;
    .local v0, "s":Ljava/lang/String;
    return-object v0

    .line 103
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "privateKey":Ljava/security/PrivateKey;
    .end local v3    # "plaintext":[B
    .end local v4    # "output":[B
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 106
    return-object v0
.end method

.method public static decryptByPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "publicKeyStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 264
    invoke-static {p1}, Lcom/platform/usercenter/tools/security/RsaCoder;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    .line 265
    .local v0, "publicKey":Ljava/security/PublicKey;
    const-string v1, "RSA/NONE/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 266
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 267
    move-object v2, v0

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v2}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    .line 268
    .local v2, "splitLength":I
    invoke-static {p0}, Lcom/platform/usercenter/tools/security/RsaCoder;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 269
    .local v3, "contentBytes":[B
    invoke-static {v3, v2}, Lcom/platform/usercenter/tools/security/RsaCoder;->splitBytes([BI)[[B

    move-result-object v4

    .line 270
    .local v4, "arrays":[[B
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 271
    .local v5, "sb":Ljava/lang/StringBuffer;
    array-length v6, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    aget-object v8, v4, v7

    .line 272
    .local v8, "array":[B
    new-instance v9, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    .end local v8    # "array":[B
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "sign"    # Ljava/lang/String;
    .param p2, "publicKey"    # Ljava/lang/String;

    .line 167
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 168
    .local v0, "keyFactory":Ljava/security/KeyFactory;
    const/4 v1, 0x2

    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 169
    .local v2, "encodedKey":[B
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    .line 171
    .local v3, "pubKey":Ljava/security/PublicKey;
    const-string v4, "SHA1WithRSA"

    .line 172
    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    .line 174
    .local v4, "signature":Ljava/security/Signature;
    invoke-virtual {v4, v3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 175
    const-string v5, "utf-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/Signature;->update([B)V

    .line 177
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .local v1, "bverify":Z
    return v1

    .line 180
    .end local v0    # "keyFactory":Ljava/security/KeyFactory;
    .end local v1    # "bverify":Z
    .end local v2    # "encodedKey":[B
    .end local v3    # "pubKey":Ljava/security/PublicKey;
    .end local v4    # "signature":Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 118
    :try_start_0
    const-string v0, "RSA/NONE/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 119
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const-string v1, "RSA"

    invoke-static {v1, p1}, Lcom/platform/usercenter/tools/security/RsaCoder;->getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    .line 120
    .local v1, "pubkey":Ljava/security/PublicKey;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 121
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 122
    .local v2, "plaintext":[B
    invoke-static {v2, v0}, Lcom/platform/usercenter/tools/security/RsaCoder;->crypt([BLjavax/crypto/Cipher;)[B

    move-result-object v3

    .line 123
    .local v3, "output":[B
    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .local v4, "s":Ljava/lang/String;
    return-object v4

    .line 125
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "pubkey":Ljava/security/PublicKey;
    .end local v2    # "plaintext":[B
    .end local v3    # "output":[B
    .end local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 128
    const/4 v1, 0x0

    return-object v1
.end method

.method public static encryptByPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "publicKeyStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 191
    invoke-static {p1}, Lcom/platform/usercenter/tools/security/RsaCoder;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    .line 193
    .local v0, "publicKey":Ljava/security/PublicKey;
    const-string v1, "RSA/NONE/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 194
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 195
    move-object v2, v0

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v2}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, -0xb

    .line 196
    .local v2, "splitLength":I
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v2}, Lcom/platform/usercenter/tools/security/RsaCoder;->splitBytes([BI)[[B

    move-result-object v3

    .line 197
    .local v3, "arrays":[[B
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 198
    .local v4, "sb":Ljava/lang/StringBuffer;
    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v3, v6

    .line 199
    .local v7, "array":[B
    invoke-virtual {v1, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    invoke-static {v8}, Lcom/platform/usercenter/tools/security/RsaCoder;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    .end local v7    # "array":[B
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getKey()Ljava/lang/String;
    .locals 1

    .line 32
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDpgSW5VkZ6/xvh+wMXezrOokNdiupuvuMj4RVJy44byWDupl4H37z907A26RVdFzMeyLUQB4rsDIaXdxCODlljWW+/K96uF5MsDtOFUBw7VlOclIjcYTv/YDQEul8JoXoOuy1Yf3b5sbTpTuVTcl97tAuLJ8PoGe2K7N3B1eUQqQIDAQAB"

    return-object v0
.end method

.method public static getKeyString(Ljava/security/Key;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 57
    .local v0, "keyBytes":[B
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "s":Ljava/lang/String;
    return-object v1
.end method

.method public static getPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 49
    .local v0, "keyBytes":[B
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 50
    .local v1, "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 51
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 52
    .local v3, "privateKey":Ljava/security/PrivateKey;
    return-object v3
.end method

.method public static getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "publicKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/tools/security/RsaCoder;->base64Decode([B)[B

    move-result-object v0

    .line 251
    .local v0, "keyBytes":[B
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 252
    .local v1, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 253
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    return-object v3
.end method

.method private static getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "bysKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 41
    .local v0, "decodedKey":[B
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 42
    .local v1, "x509":Ljava/security/spec/X509EncodedKeySpec;
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 43
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    return-object v3
.end method

.method public static hexString2Bytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "hex"    # Ljava/lang/String;

    .line 279
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 280
    .local v0, "len":I
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 281
    new-array v1, v0, [B

    .line 282
    .local v1, "result":[B
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 283
    .local v2, "achar":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 284
    mul-int/lit8 v4, v3, 0x2

    .line 285
    .local v4, "pos":I
    aget-char v5, v2, v4

    invoke-static {v5}, Lcom/platform/usercenter/tools/security/RsaCoder;->toByte(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v4, 0x1

    aget-char v6, v2, v6

    invoke-static {v6}, Lcom/platform/usercenter/tools/security/RsaCoder;->toByte(C)B

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    .line 283
    .end local v4    # "pos":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 287
    .end local v3    # "i":I
    :cond_0
    return-object v1
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "privateKey"    # Ljava/lang/String;

    .line 136
    const-string v0, "utf-8"

    .line 138
    .local v0, "charset":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 140
    .local v1, "priPKCS8":Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 141
    .local v3, "keyf":Ljava/security/KeyFactory;
    invoke-virtual {v3, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v4

    .line 142
    .local v4, "priKey":Ljava/security/PrivateKey;
    const-string v5, "SHA1WithRSA"

    .line 143
    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 145
    .local v5, "signature":Ljava/security/Signature;
    invoke-virtual {v5, v4}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 146
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/Signature;->update([B)V

    .line 148
    invoke-virtual {v5}, Ljava/security/Signature;->sign()[B

    move-result-object v6

    .line 150
    .local v6, "signed":[B
    invoke-static {v6, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 151
    .end local v1    # "priPKCS8":Ljava/security/spec/PKCS8EncodedKeySpec;
    .end local v3    # "keyf":Ljava/security/KeyFactory;
    .end local v4    # "priKey":Ljava/security/PrivateKey;
    .end local v5    # "signature":Ljava/security/Signature;
    .end local v6    # "signed":[B
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 155
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static splitBytes([BI)[[B
    .locals 8
    .param p0, "bytes"    # [B
    .param p1, "splitLength"    # I

    .line 224
    array-length v0, p0

    rem-int/2addr v0, p1

    .line 225
    .local v0, "y":I
    if-eqz v0, :cond_0

    .line 226
    array-length v1, p0

    div-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_0
    array-length v1, p0

    div-int/2addr v1, p1

    .line 230
    .local v1, "x":I
    :goto_0
    new-array v2, v1, [[B

    .line 232
    .local v2, "arrays":[[B
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 234
    add-int/lit8 v5, v1, -0x1

    if-ne v4, v5, :cond_1

    array-length v5, p0

    rem-int/2addr v5, p1

    if-eqz v5, :cond_1

    .line 235
    array-length v5, p0

    rem-int/2addr v5, p1

    new-array v5, v5, [B

    .line 236
    .local v5, "array":[B
    mul-int v6, v4, p1

    array-length v7, p0

    rem-int/2addr v7, p1

    invoke-static {p0, v6, v5, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 238
    .end local v5    # "array":[B
    :cond_1
    new-array v5, p1, [B

    .line 239
    .restart local v5    # "array":[B
    mul-int v6, v4, p1

    invoke-static {p0, v6, v5, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    :goto_2
    aput-object v5, v2, v4

    .line 232
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 243
    .end local v4    # "i":I
    .end local v5    # "array":[B
    :cond_2
    return-object v2
.end method

.method private static toByte(C)B
    .locals 1
    .param p0, "c"    # C

    .line 292
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    int-to-byte v0, v0

    .line 293
    .local v0, "b":B
    return v0
.end method
