.class public Lcom/heytap/shield/utils/CertUtils;
.super Ljava/lang/Object;
.source "CertUtils.java"


# static fields
.field private static final ALGORITHM_MD5:Ljava/lang/String; = "MD5"

.field private static final ALGORITHM_SHA1:Ljava/lang/String; = "SHA1"

.field private static final ALGORITHM_SHA256:Ljava/lang/String; = "SHA256"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/heytap/shield/utils/CertUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/heytap/shield/utils/CertUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byte2HexFormatted([B)Ljava/lang/String;
    .locals 8
    .param p0, "arr"    # [B

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 364
    .local v0, "str":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 365
    aget-byte v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "h":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 367
    .local v4, "l":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 368
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 370
    :cond_0
    if-le v4, v2, :cond_1

    .line 371
    add-int/lit8 v6, v4, -0x2

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 373
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    array-length v6, p0

    sub-int/2addr v6, v5

    if-ge v1, v6, :cond_2

    .line 375
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    .end local v3    # "h":Ljava/lang/String;
    .end local v4    # "l":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static covertByteDigest(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certSHA1"    # Ljava/lang/String;

    .line 273
    invoke-static {p1}, Lcom/heytap/shield/utils/CertUtils;->replaceColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 275
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/shield/utils/CertUtils;->getByteSHA256(Ljava/lang/String;)[B

    move-result-object v0

    .line 276
    .local v0, "bytes":[B
    sget-object v1, Lcom/heytap/shield/utils/CertUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes size -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    return-object v0

    .line 278
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 280
    sget-object v1, Lcom/heytap/shield/utils/CertUtils;->TAG:Ljava/lang/String;

    const-string v2, "you should use correct algorithm"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public static covertByteDigestNoSha1(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certSHA1"    # Ljava/lang/String;

    .line 286
    invoke-static {p1}, Lcom/heytap/shield/utils/CertUtils;->replaceColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "digestNoSha1":Ljava/lang/String;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1
.end method

.method public static covertDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certSHA1"    # Ljava/lang/String;

    .line 292
    invoke-static {p1}, Lcom/heytap/shield/utils/CertUtils;->replaceColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 294
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/shield/utils/CertUtils;->getByteSHA256(Ljava/lang/String;)[B

    move-result-object v0

    .line 295
    .local v0, "bytes":[B
    sget-object v1, Lcom/heytap/shield/utils/CertUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes size -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 297
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 299
    sget-object v1, Lcom/heytap/shield/utils/CertUtils;->TAG:Ljava/lang/String;

    const-string v2, "you should use correct algorithm"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    const-string v0, ""

    return-object v0
.end method

.method public static getByteSHA256(Ljava/lang/String;)[B
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 52
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 53
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 54
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1
.end method

.method private static getCertAlgorithm([BLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "cert"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 307
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 310
    .local v0, "input":Ljava/io/InputStream;
    const/4 v1, 0x0

    move-object v2, v1

    .line 313
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    :try_start_0
    const-string v3, "X509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 316
    goto :goto_0

    .line 314
    :catch_0
    move-exception v3

    .line 315
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 319
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 322
    .local v1, "c":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_0

    .line 323
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v3

    goto :goto_1

    .line 325
    :catch_1
    move-exception v3

    .line 326
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 327
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    nop

    .line 329
    :goto_2
    const-string v3, ""

    .line 333
    .local v3, "hexString":Ljava/lang/String;
    :try_start_2
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 335
    .local v4, "md":Ljava/security/MessageDigest;
    if-eqz v1, :cond_1

    .line 338
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 341
    .local v5, "publicKey":[B
    invoke-static {v5}, Lcom/heytap/shield/utils/CertUtils;->byte2HexFormatted([B)Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v6

    .line 348
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "publicKey":[B
    :cond_1
    :goto_3
    goto :goto_4

    .line 346
    :catch_2
    move-exception v4

    .line 347
    .local v4, "e":Ljava/security/cert/CertificateEncodingException;
    invoke-virtual {v4}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    goto :goto_4

    .line 344
    .end local v4    # "e":Ljava/security/cert/CertificateEncodingException;
    :catch_3
    move-exception v4

    .line 345
    .local v4, "e1":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .end local v4    # "e1":Ljava/security/NoSuchAlgorithmException;
    goto :goto_3

    .line 349
    :goto_4
    return-object v3
.end method

.method public static getCertificateHistorySHA1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "digest"    # Ljava/lang/String;

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    .line 119
    const-string v0, "SHA1"

    invoke-static {p0, v0, p1, p2}, Lcom/heytap/shield/utils/CertUtils;->getCertificateOtherWithAlgorithm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 121
    :cond_0
    const-string v0, "SHA1"

    invoke-static {p0, v0, p1, p2}, Lcom/heytap/shield/utils/CertUtils;->getCertificateHistoryWithAlgorithm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static getCertificateHistoryWithAlgorithm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "verifyHash"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 186
    invoke-static {p0, p2}, Lcom/heytap/shield/utils/CertUtils;->getPackageSigningInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/SigningInfo;

    move-result-object v0

    .line 187
    .local v0, "info":Landroid/content/pm/SigningInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 188
    return v1

    .line 190
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->hasPastSigningCertificates()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object v2

    .line 192
    .local v2, "signatures":[Landroid/content/pm/Signature;
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 193
    aget-object v5, v2, v3

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-static {v5, p1}, Lcom/heytap/shield/utils/CertUtils;->getCertAlgorithm([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "certSHA1":Ljava/lang/String;
    invoke-static {p2, v5}, Lcom/heytap/shield/utils/CertUtils;->covertDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 195
    .local v6, "digest":Ljava/lang/String;
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 196
    return v4

    .line 192
    .end local v5    # "certSHA1":Ljava/lang/String;
    .end local v6    # "digest":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 200
    .end local v2    # "signatures":[Landroid/content/pm/Signature;
    .end local v3    # "i":I
    :cond_2
    return v1
.end method

.method public static getCertificateMd5WithoutColon(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 107
    const-string v0, "MD5"

    invoke-static {p0, v0, p1}, Lcom/heytap/shield/utils/CertUtils;->getCertificateWithAlgorithm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/shield/utils/CertUtils;->replaceColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCertificateOtherWithAlgorithm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "verifyHash"    # Ljava/lang/String;

    .line 205
    invoke-static {p0, p2}, Lcom/heytap/shield/utils/CertUtils;->getPackageSignatures(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 206
    .local v0, "signatures":[Landroid/content/pm/Signature;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 207
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 208
    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3, p1}, Lcom/heytap/shield/utils/CertUtils;->getCertAlgorithm([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "certSHA1":Ljava/lang/String;
    invoke-static {p2, v3}, Lcom/heytap/shield/utils/CertUtils;->covertDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "digest":Ljava/lang/String;
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 211
    return v2

    .line 207
    .end local v3    # "certSHA1":Ljava/lang/String;
    .end local v4    # "digest":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 216
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static getCertificateSHA1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 85
    const-string v0, "SHA1"

    invoke-static {p0, v0, p1}, Lcom/heytap/shield/utils/CertUtils;->getCertificateWithAlgorithm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCertificateSHA256(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 96
    const-string v0, "SHA256"

    invoke-static {p0, v0, p1}, Lcom/heytap/shield/utils/CertUtils;->getCertificateWithAlgorithm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCertificateWithAlgorithm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    .line 143
    .local v0, "signatures":[Landroid/content/pm/Signature;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-ge v1, v3, :cond_1

    .line 144
    invoke-static {p0, p2}, Lcom/heytap/shield/utils/CertUtils;->getPackageSignatures(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 146
    aget-object v1, v0, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/heytap/shield/utils/CertUtils;->getCertAlgorithm([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 148
    :cond_0
    const-string v1, ""

    return-object v1

    .line 152
    :cond_1
    invoke-static {p0, p2}, Lcom/heytap/shield/utils/CertUtils;->getPackageSigningInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/SigningInfo;

    move-result-object v1

    .line 153
    .local v1, "info":Landroid/content/pm/SigningInfo;
    if-nez v1, :cond_2

    .line 154
    const-string v2, ""

    return-object v2

    .line 156
    :cond_2
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v0

    .line 157
    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 158
    aget-object v2, v0, v2

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-static {v2, p1}, Lcom/heytap/shield/utils/CertUtils;->getCertAlgorithm([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 160
    :cond_3
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 161
    const-string v3, "has multiple signers"

    invoke-static {v3}, Lcom/heytap/shield/utils/PLog;->i(Ljava/lang/String;)V

    .line 162
    array-length v3, v0

    new-array v3, v3, [Ljava/lang/String;

    .line 163
    .local v3, "cert":[Ljava/lang/String;
    move v5, v2

    .local v5, "i":I
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_4

    .line 164
    aget-object v6, v0, v5

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-static {v6, p1}, Lcom/heytap/shield/utils/CertUtils;->getCertAlgorithm([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 163
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 166
    .end local v5    # "i":I
    :cond_4
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v5, "builder":Ljava/lang/StringBuilder;
    nop

    .local v2, "i":I
    :goto_1
    array-length v6, v3

    if-ge v2, v6, :cond_6

    .line 169
    array-length v6, v3

    sub-int/2addr v6, v4

    if-eq v2, v6, :cond_5

    .line 170
    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 172
    :cond_5
    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 175
    .end local v2    # "i":I
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 177
    .end local v3    # "cert":[Ljava/lang/String;
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    :cond_7
    aget-object v2, v0, v2

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-static {v2, p1}, Lcom/heytap/shield/utils/CertUtils;->getCertAlgorithm([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getPackageSignatures(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 255
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x40

    .line 257
    .local v1, "flags":I
    const/4 v2, 0x0

    move-object v3, v2

    .line 261
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 264
    goto :goto_0

    .line 262
    :catch_0
    move-exception v4

    .line 263
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 266
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-nez v3, :cond_0

    .line 267
    return-object v2

    .line 269
    :cond_0
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    return-object v2
.end method

.method private static getPackageSigningInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/SigningInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 228
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/high16 v1, 0x8000000

    .line 230
    .local v1, "flags":I
    const/4 v2, 0x0

    move-object v3, v2

    .line 234
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 237
    goto :goto_0

    .line 235
    :catch_0
    move-exception v4

    .line 236
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 239
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-nez v3, :cond_0

    .line 240
    return-object v2

    .line 244
    :cond_0
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    return-object v2
.end method

.method public static getSignaturesSHA256(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 126
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 127
    .local v0, "signatures":[Landroid/content/pm/Signature;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 128
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    const-string v2, "SHA256"

    invoke-static {v1, v2}, Lcom/heytap/shield/utils/CertUtils;->getCertAlgorithm([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 130
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method public static getStringSHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 58
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 59
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v1, "stringBuffer":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 62
    .local v2, "bits":[B
    const/16 v3, 0x100

    .line 63
    .local v3, "bitLength":I
    const/16 v4, 0x10

    .line 64
    .local v4, "hexadecimal":I
    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-byte v7, v2, v6

    .line 65
    .local v7, "bit":I
    move v8, v7

    .line 66
    .local v8, "a":I
    if-gez v8, :cond_0

    .line 67
    add-int/2addr v8, v3

    .line 69
    :cond_0
    if-ge v8, v4, :cond_1

    .line 70
    const-string v9, "0"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .end local v7    # "bit":I
    .end local v8    # "a":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static parseByte2Bit(BI)B
    .locals 2
    .param p0, "b"    # B
    .param p1, "position"    # I

    .line 382
    const/4 v0, 0x1

    .line 383
    .local v0, "a":I
    shr-int v1, p0, p1

    and-int/2addr v1, v0

    int-to-byte v1, v1

    return v1
.end method

.method public static parseByte2String(B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # B

    .line 387
    const/16 v0, 0xff

    .line 388
    .local v0, "byteMax":I
    const/16 v1, 0x100

    .line 389
    .local v1, "int256":I
    and-int v2, p0, v0

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static replaceColon(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;

    .line 353
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 356
    :cond_0
    return-object p0
.end method
