.class public Lcom/platform/usercenter/tools/security/AESUtilTest;
.super Ljava/lang/Object;
.source "AESUtilTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/platform/usercenter/tools/security/AESUtilTest$SecretKeyNullPointException;
    }
.end annotation


# static fields
.field private static final AES_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final AES_ENCRYPT_MODE:Ljava/lang/String; = "AES/CTR/Nopadding"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    return-void
.end method

.method public static aesDecrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "encryptStr"    # Ljava/lang/String;
    .param p1, "decryptKey"    # Ljava/lang/String;
    .param p2, "iv"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/platform/usercenter/tools/security/AESUtilTest;->base64Decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/platform/usercenter/tools/security/AESUtilTest;->aesDecryptByBytes([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static aesDecryptByBytes([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "encryptBytes"    # [B
    .param p1, "decryptKey"    # Ljava/lang/String;
    .param p2, "iv"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 111
    .local v0, "kgen":Ljavax/crypto/KeyGenerator;
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 112
    .local v1, "random":Ljava/security/SecureRandom;
    const-string v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 113
    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 119
    const-string v2, "AES/CTR/Nopadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 120
    .local v2, "cipher":Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 121
    .local v3, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    const-string v6, "AES"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 122
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 124
    .local v4, "decryptBytes":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    return-object v5
.end method

.method private static aesDecryptByBytesWithPassKey([BLjava/lang/String;[B)Ljava/lang/String;
    .locals 5
    .param p0, "encryptBytes"    # [B
    .param p1, "decryptKey"    # Ljava/lang/String;
    .param p2, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    const-string v0, "AES/CTR/Nopadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 173
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 174
    .local v1, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 175
    .local v2, "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 176
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 178
    .local v3, "decryptBytes":[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    return-object v4

    .line 170
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v2    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v3    # "decryptBytes":[B
    :cond_1
    new-instance v0, Lcom/platform/usercenter/tools/security/AESUtilTest$SecretKeyNullPointException;

    const-string v1, "Secret Key is null"

    invoke-direct {v0, v1}, Lcom/platform/usercenter/tools/security/AESUtilTest$SecretKeyNullPointException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static aesDecryptWithPassKey(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .param p0, "encryptStr"    # Ljava/lang/String;
    .param p1, "decryptKey"    # Ljava/lang/String;
    .param p2, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/platform/usercenter/tools/security/AESUtilTest;->base64Decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/platform/usercenter/tools/security/AESUtilTest;->aesDecryptByBytesWithPassKey([BLjava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static aesEncrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "encryptKey"    # Ljava/lang/String;
    .param p2, "iv"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    invoke-static {p0, p1, p2}, Lcom/platform/usercenter/tools/security/AESUtilTest;->aesEncryptToBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/tools/security/AESUtilTest;->base64Encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aesEncryptToBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 7
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "encryptKey"    # Ljava/lang/String;
    .param p2, "iv"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 72
    .local v0, "kgen":Ljavax/crypto/KeyGenerator;
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 73
    .local v1, "random":Ljava/security/SecureRandom;
    const-string v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 75
    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 81
    const-string v2, "AES/CTR/Nopadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 82
    .local v2, "cipher":Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 83
    .local v3, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    const-string v6, "AES"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 85
    const-string v4, "utf-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    return-object v4
.end method

.method private static aesEncryptToBytesWithPassKey(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 5
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "encryptKey"    # Ljava/lang/String;
    .param p2, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x0

    return-object v0

    .line 207
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    const-string v0, "AES/CTR/Nopadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 211
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 212
    .local v1, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 213
    .local v2, "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 214
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    return-object v3

    .line 208
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v2    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :cond_1
    new-instance v0, Lcom/platform/usercenter/tools/security/AESUtilTest$SecretKeyNullPointException;

    const-string v1, "Secret Key is null"

    invoke-direct {v0, v1}, Lcom/platform/usercenter/tools/security/AESUtilTest$SecretKeyNullPointException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static aesEncryptWithPassKey(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "encryptKey"    # Ljava/lang/String;
    .param p2, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 182
    invoke-static {p0, p1, p2}, Lcom/platform/usercenter/tools/security/AESUtilTest;->aesEncryptToBytesWithPassKey(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/tools/security/AESUtilTest;->base64Encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static base64Decode(Ljava/lang/String;)[B
    .locals 1
    .param p0, "base64Code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static base64DecodeSafe(Ljava/lang/String;)[B
    .locals 1
    .param p0, "base64Code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static base64Encode([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .line 30
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static base64EncodeSafe([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .line 45
    const/16 v0, 0xa

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
