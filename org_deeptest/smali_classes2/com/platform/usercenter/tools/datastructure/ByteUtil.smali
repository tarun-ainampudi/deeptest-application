.class public final Lcom/platform/usercenter/tools/datastructure/ByteUtil;
.super Ljava/lang/Object;
.source "ByteUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getUTF8Bytes(Ljava/lang/String;)[B
    .locals 8
    .param p0, "string"    # Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 41
    new-array v0, v0, [B

    return-object v0

    .line 44
    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 45
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 53
    .local v3, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 55
    .local v4, "jdata":[B
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 56
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 57
    array-length v5, v4

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    new-array v5, v5, [B

    .line 58
    .local v5, "buff":[B
    array-length v7, v5

    invoke-static {v4, v6, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    return-object v5

    .line 60
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .end local v4    # "jdata":[B
    .end local v5    # "buff":[B
    :catch_1
    move-exception v2

    .line 61
    .local v2, "ex":Ljava/io/IOException;
    new-array v0, v0, [B

    return-object v0
.end method

.method public static isNullOrEmpty([B)Z
    .locals 1
    .param p0, "buf"    # [B

    .line 27
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
