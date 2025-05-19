.class public Lcom/example/deeptesting/utils/AesEncryptUtils;
.super Ljava/lang/Object;
.source "AesEncryptUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;,
        Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;,
        Lcom/example/deeptesting/utils/AesEncryptUtils$JsonResponse;,
        Lcom/example/deeptesting/utils/AesEncryptUtils$JsonRequest;
    }
.end annotation


# static fields
.field private static final ALGORITHM_STR:Ljava/lang/String; = "AES/CTR/NoPadding"

.field private static final INT_HEX:I = 0xff

.field private static final INT_HEX_SHIFT:I = 0x4

.field private static final KEY_LENGTH:I = 0x100

.field public static final TAG:Ljava/lang/String; = "AesEncryptUtils"

.field private static sAesKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/example/deeptesting/utils/AesEncryptUtils;->sAesKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aesDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "base64Data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 157
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->decodeBase64([B)[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 158
    .local v0, "secketKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->decodeBase64([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/example/deeptesting/utils/AesEncryptUtils;->calBufMd5([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/example/deeptesting/utils/AesEncryptUtils;->hexToBin(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 159
    .local v1, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const-string v2, "AES/CTR/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 160
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 162
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 163
    .local v3, "decryptBytes":[B
    new-instance v4, Ljava/lang/String;

    invoke-static {v3}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->decodeBase64([B)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 164
    .end local v0    # "secketKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v1    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "decryptBytes":[B
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static aesEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 178
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->decodeBase64([B)[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 179
    .local v0, "secketKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->decodeBase64([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/example/deeptesting/utils/AesEncryptUtils;->calBufMd5([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/example/deeptesting/utils/AesEncryptUtils;->hexToBin(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 180
    .local v1, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const-string v2, "AES/CTR/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 181
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 183
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 184
    .end local v0    # "secketKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v1    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static calBufMd5([B)Ljava/lang/String;
    .locals 8
    .param p0, "buf"    # [B

    .line 202
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 203
    return-object v0

    .line 205
    :cond_0
    nop

    .line 207
    .local v0, "retStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 208
    .local v1, "md5":Ljava/security/MessageDigest;
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    move-object v1, v2

    .line 209
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 210
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 211
    .local v2, "result":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .local v3, "sb":Ljava/lang/StringBuilder;
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-byte v6, v2, v5

    .line 213
    .local v6, "b":B
    and-int/lit16 v7, v6, 0xff

    shr-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_1

    .line 214
    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v7, v6, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 216
    :cond_1
    and-int/lit16 v7, v6, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .end local v6    # "b":B
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 222
    .end local v1    # "md5":Ljava/security/MessageDigest;
    .end local v2    # "result":[B
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 220
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AesEncryptUtils"

    const-string v3, "md5 digest error when calc buf md5"

    invoke-static {v2, v3}, Lcom/example/deeptesting/utils/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method public static decryptJsonFromServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "cipher"    # Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    move-object v1, v0

    .line 137
    .local v1, "jsonResponse":Lcom/example/deeptesting/utils/AesEncryptUtils$JsonResponse;
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/example/deeptesting/utils/AesEncryptUtils$JsonResponse;

    invoke-virtual {v2, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/example/deeptesting/utils/AesEncryptUtils$JsonResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 140
    goto :goto_0

    .line 138
    :catch_0
    move-exception v2

    .line 139
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AesEncryptUtils"

    const-string v4, "parse json response error"

    invoke-static {v3, v4}, Lcom/example/deeptesting/utils/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/example/deeptesting/utils/AesEncryptUtils$JsonResponse;->mResps:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    iget-object v0, v1, Lcom/example/deeptesting/utils/AesEncryptUtils$JsonResponse;->mResps:Ljava/lang/String;

    sget-object v2, Lcom/example/deeptesting/utils/AesEncryptUtils;->sAesKey:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/example/deeptesting/utils/AesEncryptUtils;->aesDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "text":Ljava/lang/String;
    return-object v0

    .line 142
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static encryptJsonForServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/example/deeptesting/utils/AesEncryptUtils;->sAesKey:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/example/deeptesting/utils/AesEncryptUtils;->aesEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "encryptText":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 120
    const-string v1, "AesEncryptUtils"

    const-string v2, "encryptText is null"

    invoke-static {v1, v2}, Lcom/example/deeptesting/utils/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v1, 0x0

    return-object v1

    .line 123
    :cond_0
    new-instance v1, Lcom/example/deeptesting/utils/AesEncryptUtils$JsonRequest;

    invoke-direct {v1, v0}, Lcom/example/deeptesting/utils/AesEncryptUtils$JsonRequest;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "jsonRequest":Lcom/example/deeptesting/utils/AesEncryptUtils$JsonRequest;
    invoke-static {v1}, Lcom/example/deeptesting/utils/Utils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "cipher":Ljava/lang/String;
    return-object v2
.end method

.method public static generateKey()V
    .locals 3

    .line 45
    sget-object v0, Lcom/example/deeptesting/utils/AesEncryptUtils;->sAesKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    return-void

    .line 50
    :cond_0
    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 51
    .local v0, "kg":Ljavax/crypto/KeyGenerator;
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 52
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 53
    .local v1, "sk":Ljavax/crypto/SecretKey;
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/example/deeptesting/utils/AesEncryptUtils;->sAesKey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0    # "kg":Ljavax/crypto/KeyGenerator;
    .end local v1    # "sk":Ljavax/crypto/SecretKey;
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static getAesKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 60
    invoke-static {p0}, Lcom/example/deeptesting/utils/AesEncryptUtils;->getPublicKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "pubKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const/4 v1, 0x0

    return-object v1

    .line 64
    :cond_0
    sget-object v1, Lcom/example/deeptesting/utils/AesEncryptUtils;->sAesKey:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/example/deeptesting/utils/AesEncryptUtils;->rsaEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPublicKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    move-object v2, v1

    .line 71
    .local v2, "publicKeyStringBytes":[B
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 72
    .local v3, "classLoader":Ljava/lang/ClassLoader;
    if-eqz v3, :cond_0

    .line 73
    const-string v4, "assets/lk_unlock.crt"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    move-object v0, v4

    .line 76
    :cond_0
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 77
    .local v4, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v4, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 78
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    .line 80
    .local v6, "publicKey":Ljava/security/PublicKey;
    invoke-interface {v6}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v7

    move-object v2, v7

    .line 81
    invoke-static {v2}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 91
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    nop

    .line 81
    :goto_1
    return-object v7

    .line 85
    .end local v3    # "classLoader":Ljava/lang/ClassLoader;
    .end local v4    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    .end local v6    # "publicKey":Ljava/security/PublicKey;
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 82
    :catch_1
    move-exception v3

    .line 83
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 87
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 89
    :catch_2
    move-exception v3

    .line 90
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 91
    :cond_2
    :goto_2
    nop

    .line 93
    :goto_3
    return-object v1

    .line 85
    :goto_4
    nop

    .line 86
    if-eqz v0, :cond_3

    .line 87
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    .line 89
    :catch_3
    move-exception v3

    .line 90
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 91
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_5
    nop

    .line 92
    :goto_6
    throw v1
.end method

.method public static hexToBin(Ljava/lang/String;)[B
    .locals 5
    .param p0, "hexString"    # Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 192
    .local v0, "len":I
    new-array v1, v0, [B

    .line 194
    .local v1, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 195
    mul-int/lit8 v3, v2, 0x2

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static rsaEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "publicKey"    # Ljava/lang/String;

    .line 98
    :try_start_0
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    const-string v1, "UTF-8"

    .line 99
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->decodeBase64([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 100
    .local v0, "x509EncodedKeySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 101
    .local v1, "keyf":Ljava/security/KeyFactory;
    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    .line 102
    .local v2, "pubKey":Ljava/security/interfaces/RSAPublicKey;
    const-string v3, "RSA/ECB/PKCS1Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 103
    .local v3, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 104
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    invoke-static {v4}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 105
    .end local v0    # "x509EncodedKeySpec":Ljava/security/spec/X509EncodedKeySpec;
    .end local v1    # "keyf":Ljava/security/KeyFactory;
    .end local v2    # "pubKey":Ljava/security/interfaces/RSAPublicKey;
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method
