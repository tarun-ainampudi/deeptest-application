.class public Lcom/heytap/shield/utils/SignVerifyUtils;
.super Ljava/lang/Object;
.source "SignVerifyUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/heytap/shield/utils/SignVerifyUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertPublicKey([BLjava/lang/String;)Ljava/security/PublicKey;
    .locals 3
    .param p0, "rawBytes"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 84
    :try_start_0
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 85
    .local v0, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 86
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 87
    .end local v0    # "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertPublicKey get exception - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/heytap/shield/utils/PLog;->e(Ljava/lang/String;)V

    .line 91
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getPublicKeyInfos()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/heytap/shield/authcode/info/PublicKeyInfo;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "publicKeyInfos":Ljava/util/List;, "Ljava/util/List<Lcom/heytap/shield/authcode/info/PublicKeyInfo;>;"
    new-instance v1, Lcom/heytap/shield/authcode/info/PublicKeyInfo;

    invoke-direct {v1}, Lcom/heytap/shield/authcode/info/PublicKeyInfo;-><init>()V

    .line 76
    .local v1, "publicKeyInfo":Lcom/heytap/shield/authcode/info/PublicKeyInfo;
    const-string v2, "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEvE0DoqARwzQKOb/b0cx7B0BQ4Ux8mTdND8rX9KHproZAuOP/M049VdcJ53sjVujUF1URD4IGMtkId2QYwXoDHw=="

    invoke-virtual {v1, v2}, Lcom/heytap/shield/authcode/info/PublicKeyInfo;->setPublicKey(Ljava/lang/String;)V

    .line 77
    const-string v2, "OK"

    invoke-virtual {v1, v2}, Lcom/heytap/shield/authcode/info/PublicKeyInfo;->setStatus(Ljava/lang/String;)V

    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    return-object v0
.end method

.method public static isVerify(Landroid/content/Context;Ljava/lang/String;[BI[B[B[B[B)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "version"    # [B
    .param p3, "permissionLen"    # I
    .param p4, "business"    # [B
    .param p5, "expiration"    # [B
    .param p6, "permission"    # [B
    .param p7, "digest"    # [B

    .line 30
    move/from16 v1, p3

    invoke-static/range {p0 .. p1}, Lcom/heytap/shield/utils/CertUtils;->getCertificateSHA1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "targetDigestString":Ljava/lang/String;
    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lcom/heytap/shield/utils/CertUtils;->covertByteDigestNoSha1(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 33
    .local v4, "targetDigestBytes":[B
    array-length v0, v4

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    new-array v5, v0, [B

    .line 34
    .local v5, "targetSignerBytes":[B
    const/4 v0, 0x1

    const/4 v6, 0x0

    move-object/from16 v7, p2

    invoke-static {v7, v6, v5, v6, v0}, Lcom/heytap/shield/utils/SystemUtils;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    move-object/from16 v8, p4

    invoke-static {v8, v6, v5, v0, v0}, Lcom/heytap/shield/utils/SystemUtils;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    array-length v0, v4

    const/4 v9, 0x2

    invoke-static {v4, v6, v5, v9, v0}, Lcom/heytap/shield/utils/SystemUtils;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    array-length v0, v4

    add-int/2addr v0, v9

    const/4 v9, 0x4

    move-object/from16 v10, p5

    invoke-static {v10, v6, v5, v0, v9}, Lcom/heytap/shield/utils/SystemUtils;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    array-length v0, v4

    add-int/lit8 v0, v0, 0x6

    move-object/from16 v11, p6

    invoke-static {v11, v6, v5, v0, v1}, Lcom/heytap/shield/utils/SystemUtils;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    invoke-static/range {p3 .. p3}, Lcom/heytap/shield/utils/SystemUtils;->int2byte(I)[B

    move-result-object v0

    array-length v12, v4

    add-int/2addr v12, v1

    add-int/lit8 v12, v12, 0x6

    invoke-static {v0, v6, v5, v12, v9}, Lcom/heytap/shield/utils/SystemUtils;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    const/4 v9, 0x0

    .line 46
    .local v9, "signature":Ljava/security/Signature;
    move v12, v6

    .line 48
    .local v12, "isSignerSuccess":Z
    :try_start_0
    const-string v0, "SHA256withECDSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    move-object v9, v0

    .line 50
    invoke-static {}, Lcom/heytap/shield/utils/SignVerifyUtils;->getPublicKeyInfos()Ljava/util/List;

    move-result-object v0

    .line 51
    .local v0, "publicKeyInfos":Ljava/util/List;, "Ljava/util/List<Lcom/heytap/shield/authcode/info/PublicKeyInfo;>;"
    nop

    .local v6, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_3

    .line 52
    const-string v13, "OK"

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/heytap/shield/authcode/info/PublicKeyInfo;

    invoke-virtual {v14}, Lcom/heytap/shield/authcode/info/PublicKeyInfo;->getStatus()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 53
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/heytap/shield/authcode/info/PublicKeyInfo;

    invoke-virtual {v13}, Lcom/heytap/shield/authcode/info/PublicKeyInfo;->getPublicKey()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/heytap/shield/utils/Base64Utils;->base642Byte(Ljava/lang/String;)[B

    move-result-object v13

    const-string v14, "EC"

    invoke-static {v13, v14}, Lcom/heytap/shield/utils/SignVerifyUtils;->convertPublicKey([BLjava/lang/String;)Ljava/security/PublicKey;

    move-result-object v13

    .line 54
    .local v13, "publicKey":Ljava/security/PublicKey;
    if-nez v13, :cond_0

    .line 55
    goto :goto_1

    .line 57
    :cond_0
    invoke-virtual {v9, v13}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 58
    invoke-virtual {v9, v5}, Ljava/security/Signature;->update([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    move-object/from16 v14, p7

    :try_start_1
    invoke-virtual {v9, v14}, Ljava/security/Signature;->verify([B)Z

    move-result v15
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    move v12, v15

    .line 60
    if-eqz v12, :cond_2

    .line 61
    goto :goto_2

    .line 66
    .end local v0    # "publicKeyInfos":Ljava/util/List;, "Ljava/util/List<Lcom/heytap/shield/authcode/info/PublicKeyInfo;>;"
    .end local v6    # "i":I
    .end local v13    # "publicKey":Ljava/security/PublicKey;
    :catch_0
    move-exception v0

    goto :goto_3

    .line 51
    .restart local v0    # "publicKeyInfos":Ljava/util/List;, "Ljava/util/List<Lcom/heytap/shield/authcode/info/PublicKeyInfo;>;"
    .restart local v6    # "i":I
    :cond_1
    :goto_1
    move-object/from16 v14, p7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "publicKeyInfos":Ljava/util/List;, "Ljava/util/List<Lcom/heytap/shield/authcode/info/PublicKeyInfo;>;"
    .end local v6    # "i":I
    :cond_3
    move-object/from16 v14, p7

    :goto_2
    goto :goto_4

    .line 66
    :catch_1
    move-exception v0

    move-object/from16 v14, p7

    .line 67
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_3
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Verify signing get an exception is "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/heytap/shield/utils/PLog;->e(Ljava/lang/String;)V

    .line 70
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :goto_4
    return v12
.end method
