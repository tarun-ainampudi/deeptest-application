.class public Lcom/platform/usercenter/tools/algorithm/MD5Util;
.super Ljava/lang/Object;
.source "MD5Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertHashToString([B)Ljava/lang/String;
    .locals 5
    .param p0, "hashBytes"    # [B

    .line 52
    if-nez p0, :cond_0

    .line 53
    const-string v0, ""

    return-object v0

    .line 55
    :cond_0
    const-string v0, ""

    .line 56
    .local v0, "returnVal":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static generateMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    .line 28
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 29
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 30
    .local v1, "buffer":[B
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 31
    .local v2, "digest":Ljava/security/MessageDigest;
    const/4 v3, 0x0

    move v4, v3

    .line 32
    .local v4, "numRead":I
    :cond_0
    :goto_0
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 33
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v4, v5

    .line 34
    if-lez v4, :cond_0

    .line 35
    invoke-virtual {v2, v1, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 38
    .local v3, "md5Bytes":[B
    invoke-static {v3}, Lcom/platform/usercenter/tools/algorithm/MD5Util;->convertHashToString([B)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    nop

    .line 44
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    goto :goto_1

    .line 45
    :catch_0
    move-exception v6

    .line 46
    :goto_1
    return-object v5

    .line 42
    .end local v1    # "buffer":[B
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "md5Bytes":[B
    .end local v4    # "numRead":I
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 39
    :catch_1
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    if-eqz v0, :cond_2

    .line 44
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 46
    goto :goto_2

    .line 45
    :catch_2
    move-exception v3

    .line 46
    :cond_2
    :goto_2
    return-object v2

    .line 42
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    if-eqz v0, :cond_3

    .line 44
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 46
    goto :goto_4

    .line 45
    :catch_3
    move-exception v2

    .line 46
    :cond_3
    :goto_4
    throw v1
.end method

.method public static getMD5([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .line 85
    if-eqz p0, :cond_3

    array-length v0, p0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 88
    :cond_0
    const-string v0, ""

    .line 91
    .local v0, "md5Str":Ljava/lang/String;
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 92
    .local v1, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 93
    .local v2, "md5Bytes":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 95
    .local v3, "hexValue":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "m":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 96
    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    .line 97
    .local v5, "val":I
    const/16 v6, 0x10

    if-ge v5, v6, :cond_1

    .line 98
    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    .end local v5    # "val":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    .end local v4    # "m":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 105
    .end local v1    # "md5":Ljava/security/MessageDigest;
    .end local v2    # "md5Bytes":[B
    .end local v3    # "hexValue":Ljava/lang/StringBuffer;
    goto :goto_1

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v1}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 106
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    return-object v0

    .line 86
    .end local v0    # "md5Str":Ljava/lang/String;
    :cond_3
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static md5Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 68
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 69
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 70
    .local v1, "md5bytes":[B
    if-eqz v1, :cond_1

    array-length v2, v1

    if-gtz v2, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {v1}, Lcom/platform/usercenter/tools/datastructure/ByteString;->of([B)Lcom/platform/usercenter/tools/datastructure/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/platform/usercenter/tools/datastructure/ByteString;->hex()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 71
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 76
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    .end local v1    # "md5bytes":[B
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 74
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 75
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
