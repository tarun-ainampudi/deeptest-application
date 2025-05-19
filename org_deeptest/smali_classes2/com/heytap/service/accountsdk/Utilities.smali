.class Lcom/heytap/service/accountsdk/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field private static final HEXADECIMAL:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 207
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/heytap/service/accountsdk/Utilities;->HEXADECIMAL:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 7
    .param p0, "binaryData"    # [B

    .line 211
    array-length v0, p0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 212
    const/4 v0, 0x0

    return-object v0

    .line 215
    :cond_0
    const/16 v0, 0x20

    new-array v0, v0, [C

    .line 216
    .local v0, "buffer":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 217
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    .line 218
    .local v3, "low":I
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    .line 219
    .local v4, "high":I
    mul-int/lit8 v5, v2, 0x2

    sget-object v6, Lcom/heytap/service/accountsdk/Utilities;->HEXADECIMAL:[C

    aget-char v6, v6, v4

    aput-char v6, v0, v5

    .line 220
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Lcom/heytap/service/accountsdk/Utilities;->HEXADECIMAL:[C

    aget-char v6, v6, v3

    aput-char v6, v0, v5

    .line 216
    .end local v3    # "low":I
    .end local v4    # "high":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    .end local v2    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static escapeSpecialCharForUrlSegments(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "src"    # Ljava/lang/String;

    .line 32
    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    const-string v2, "%5B"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    const-string v2, "%5D"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    const-string v2, "%7C"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 155
    invoke-static {p0}, Lcom/heytap/service/accountsdk/Utilities;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    return v0

    .line 158
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static getDouble(Ljava/lang/String;)D
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .line 144
    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    .line 145
    return-wide v0

    .line 148
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-wide v0
.end method

.method public static getFloat(Ljava/lang/String;)F
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 134
    return v0

    .line 137
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v0
.end method

.method public static getInt(ILjava/lang/String;)I
    .locals 1
    .param p0, "radix"    # I
    .param p1, "value"    # Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/heytap/service/accountsdk/Utilities;->getInt(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInt(ILjava/lang/String;I)I
    .locals 2
    .param p0, "radix"    # I
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "faultValue"    # I

    .line 109
    if-nez p1, :cond_0

    .line 110
    return p2

    .line 118
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    return v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 172
    const/16 v0, 0xa

    invoke-static {v0, p0}, Lcom/heytap/service/accountsdk/Utilities;->getInt(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "faultValue"    # I

    .line 129
    const/16 v0, 0xa

    invoke-static {v0, p0, p1}, Lcom/heytap/service/accountsdk/Utilities;->getInt(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .line 176
    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    .line 177
    return-wide v0

    .line 180
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    .line 181
    :catch_0
    move-exception v2

    .line 182
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-wide v0
.end method

.method public static getMD5([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .line 187
    const-string v0, ""

    .line 191
    .local v0, "md5Str":Ljava/lang/String;
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 193
    .local v1, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 194
    .local v2, "md5Bytes":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    .local v3, "hexValue":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "m":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 197
    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    .line 198
    .local v5, "val":I
    const/16 v6, 0x10

    if-ge v5, v6, :cond_0

    .line 199
    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    .end local v5    # "val":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 202
    .end local v4    # "m":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 203
    .end local v1    # "md5":Ljava/security/MessageDigest;
    .end local v2    # "md5Bytes":[B
    .end local v3    # "hexValue":Ljava/lang/StringBuffer;
    goto :goto_1

    :catch_0
    move-exception v1

    .line 204
    :goto_1
    return-object v0
.end method

.method public static getUTF8Bytes(Ljava/lang/String;)[B
    .locals 8
    .param p0, "string"    # Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 50
    new-array v0, v0, [B

    return-object v0

    .line 53
    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 54
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 61
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 62
    .local v3, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 64
    .local v4, "jdata":[B
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 65
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 66
    array-length v5, v4

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    new-array v5, v5, [B

    .line 67
    .local v5, "buff":[B
    array-length v7, v5

    invoke-static {v4, v6, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    return-object v5

    .line 69
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .end local v4    # "jdata":[B
    .end local v5    # "buff":[B
    :catch_1
    move-exception v2

    .line 70
    .local v2, "ex":Ljava/io/IOException;
    new-array v0, v0, [B

    return-object v0
.end method

.method public static getUTF8String([B)Ljava/lang/String;
    .locals 2
    .param p0, "b"    # [B

    .line 86
    if-nez p0, :cond_0

    .line 87
    const-string v0, ""

    return-object v0

    .line 88
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/heytap/service/accountsdk/Utilities;->getUTF8String([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUTF8String([BII)Ljava/lang/String;
    .locals 2
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 97
    if-nez p0, :cond_0

    .line 98
    const-string v0, ""

    return-object v0

    .line 101
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    return-object v1
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .line 36
    if-eqz p0, :cond_1

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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
