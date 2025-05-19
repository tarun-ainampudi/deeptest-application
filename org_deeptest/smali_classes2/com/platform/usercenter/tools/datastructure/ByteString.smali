.class public Lcom/platform/usercenter/tools/datastructure/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/platform/usercenter/tools/datastructure/ByteString;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/platform/usercenter/tools/datastructure/ByteString;

.field static final HEX_DIGITS:[C

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final data:[B

.field transient hashCode:I

.field transient utf8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/platform/usercenter/tools/datastructure/ByteString;->HEX_DIGITS:[C

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/platform/usercenter/tools/datastructure/ByteString;->of([B)Lcom/platform/usercenter/tools/datastructure/ByteString;

    move-result-object v0

    sput-object v0, Lcom/platform/usercenter/tools/datastructure/ByteString;->EMPTY:Lcom/platform/usercenter/tools/datastructure/ByteString;

    return-void

    nop

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

.method constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    .line 58
    return-void
.end method

.method public static decodeHex(Ljava/lang/String;)Lcom/platform/usercenter/tools/datastructure/ByteString;
    .locals 5
    .param p0, "hex"    # Ljava/lang/String;

    .line 100
    if-eqz p0, :cond_2

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 105
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 106
    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/platform/usercenter/tools/datastructure/ByteString;->decodeHexDigit(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    .line 107
    .local v2, "d1":I
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/platform/usercenter/tools/datastructure/ByteString;->decodeHexDigit(C)I

    move-result v3

    .line 108
    .local v3, "d2":I
    add-int v4, v2, v3

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 105
    .end local v2    # "d1":I
    .end local v3    # "d2":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Lcom/platform/usercenter/tools/datastructure/ByteString;->of([B)Lcom/platform/usercenter/tools/datastructure/ByteString;

    move-result-object v1

    return-object v1

    .line 102
    .end local v0    # "result":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hex == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeHexDigit(C)I
    .locals 3
    .param p0, "c"    # C

    .line 114
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    return v0

    .line 115
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 116
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 117
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private digest(Ljava/lang/String;)Lcom/platform/usercenter/tools/datastructure/ByteString;
    .locals 2
    .param p1, "digest"    # Ljava/lang/String;

    .line 77
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v1, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/tools/datastructure/ByteString;->of([B)Lcom/platform/usercenter/tools/datastructure/ByteString;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static varargs of([B)Lcom/platform/usercenter/tools/datastructure/ByteString;
    .locals 2
    .param p0, "data"    # [B

    .line 64
    if-eqz p0, :cond_0

    .line 65
    new-instance v0, Lcom/platform/usercenter/tools/datastructure/ByteString;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v0, v1}, Lcom/platform/usercenter/tools/datastructure/ByteString;-><init>([B)V

    return-object v0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static read(Ljava/io/InputStream;I)Lcom/platform/usercenter/tools/datastructure/ByteString;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    if-eqz p0, :cond_3

    .line 128
    if-ltz p1, :cond_2

    .line 130
    new-array v0, p1, [B

    .line 131
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "offset":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 132
    sub-int v2, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 133
    .local v2, "read":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 131
    add-int/2addr v1, v2

    goto :goto_0

    .line 133
    :cond_0
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 135
    .end local v1    # "offset":I
    .end local v2    # "read":I
    :cond_1
    new-instance v1, Lcom/platform/usercenter/tools/datastructure/ByteString;

    invoke-direct {v1, v0}, Lcom/platform/usercenter/tools/datastructure/ByteString;-><init>([B)V

    return-object v1

    .line 128
    .end local v0    # "result":[B
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 275
    .local v0, "dataLength":I
    invoke-static {p1, v0}, Lcom/platform/usercenter/tools/datastructure/ByteString;->read(Ljava/io/InputStream;I)Lcom/platform/usercenter/tools/datastructure/ByteString;

    move-result-object v1

    .line 277
    .local v1, "byteString":Lcom/platform/usercenter/tools/datastructure/ByteString;
    :try_start_0
    const-class v2, Lcom/platform/usercenter/tools/datastructure/ByteString;

    const-string v3, "data"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 278
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 279
    iget-object v3, v1, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v2    # "field":Ljava/lang/reflect/Field;
    nop

    .line 285
    return-void

    .line 282
    :catch_0
    move-exception v2

    .line 283
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 280
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 281
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 289
    iget-object v0, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 290
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/platform/usercenter/tools/datastructure/ByteString;)I
    .locals 8
    .param p1, "byteString"    # Lcom/platform/usercenter/tools/datastructure/ByteString;

    .line 248
    invoke-virtual {p0}, Lcom/platform/usercenter/tools/datastructure/ByteString;->size()I

    move-result v0

    .line 249
    .local v0, "sizeA":I
    invoke-virtual {p1}, Lcom/platform/usercenter/tools/datastructure/ByteString;->size()I

    move-result v1

    .line 250
    .local v1, "sizeB":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "size":I
    :goto_0
    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ge v2, v3, :cond_2

    .line 251
    invoke-virtual {p0, v2}, Lcom/platform/usercenter/tools/datastructure/ByteString;->getByte(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    .line 252
    .local v6, "byteA":I
    invoke-virtual {p1, v2}, Lcom/platform/usercenter/tools/datastructure/ByteString;->getByte(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 253
    .local v7, "byteB":I
    if-ne v6, v7, :cond_0

    .line 250
    .end local v6    # "byteA":I
    .end local v7    # "byteB":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    .restart local v6    # "byteA":I
    .restart local v7    # "byteB":I
    :cond_0
    if-ge v6, v7, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    return v4

    .line 256
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v6    # "byteA":I
    .end local v7    # "byteB":I
    :cond_2
    if-ne v0, v1, :cond_3

    const/4 v2, 0x0

    return v2

    .line 257
    :cond_3
    if-ge v0, v1, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    return v4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 42
    check-cast p1, Lcom/platform/usercenter/tools/datastructure/ByteString;

    invoke-virtual {p0, p1}, Lcom/platform/usercenter/tools/datastructure/ByteString;->compareTo(Lcom/platform/usercenter/tools/datastructure/ByteString;)I

    move-result p1

    return p1
.end method

.method public getByte(I)B
    .locals 1
    .param p1, "pos"    # I

    .line 223
    iget-object v0, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 242
    iget v0, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->hashCode:I

    .line 243
    .local v0, "result":I
    if-eqz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    iput v1, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->hashCode:I

    :goto_0
    return v1
.end method

.method public hex()Ljava/lang/String;
    .locals 9

    .line 87
    iget-object v0, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 88
    .local v0, "result":[C
    const/4 v1, 0x0

    .line 89
    .local v1, "c":I
    iget-object v2, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v2, v4

    .line 90
    .local v5, "b":B
    add-int/lit8 v6, v1, 0x1

    .local v6, "c":I
    sget-object v7, Lcom/platform/usercenter/tools/datastructure/ByteString;->HEX_DIGITS:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v1

    .line 91
    .end local v1    # "c":I
    add-int/lit8 v1, v6, 0x1

    .restart local v1    # "c":I
    sget-object v7, Lcom/platform/usercenter/tools/datastructure/ByteString;->HEX_DIGITS:[C

    and-int/lit8 v8, v5, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 89
    .end local v5    # "b":B
    .end local v6    # "c":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public md5()Lcom/platform/usercenter/tools/datastructure/ByteString;
    .locals 1

    .line 72
    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lcom/platform/usercenter/tools/datastructure/ByteString;->digest(Ljava/lang/String;)Lcom/platform/usercenter/tools/datastructure/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    array-length v0, v0

    return v0
.end method

.method public substring(I)Lcom/platform/usercenter/tools/datastructure/ByteString;
    .locals 1
    .param p1, "beginIndex"    # I

    .line 193
    iget-object v0, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/platform/usercenter/tools/datastructure/ByteString;->substring(II)Lcom/platform/usercenter/tools/datastructure/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lcom/platform/usercenter/tools/datastructure/ByteString;
    .locals 4
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 202
    if-ltz p1, :cond_3

    .line 203
    iget-object v0, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    array-length v0, v0

    if-gt p2, v0, :cond_2

    .line 207
    sub-int v0, p2, p1

    .line 208
    .local v0, "subLen":I
    if-ltz v0, :cond_1

    .line 210
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    array-length v1, v1

    if-ne p2, v1, :cond_0

    .line 211
    return-object p0

    .line 214
    :cond_0
    new-array v1, v0, [B

    .line 215
    .local v1, "copy":[B
    iget-object v2, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    const/4 v3, 0x0

    invoke-static {v2, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    new-instance v2, Lcom/platform/usercenter/tools/datastructure/ByteString;

    invoke-direct {v2, v1}, Lcom/platform/usercenter/tools/datastructure/ByteString;-><init>([B)V

    return-object v2

    .line 208
    .end local v1    # "copy":[B
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "endIndex < beginIndex"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    .end local v0    # "subLen":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "beginIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toAsciiLowercase()Lcom/platform/usercenter/tools/datastructure/ByteString;
    .locals 7

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 146
    iget-object v1, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    aget-byte v1, v1, v0

    .line 147
    .local v1, "c":B
    const/16 v2, 0x41

    if-lt v1, v2, :cond_4

    const/16 v3, 0x5a

    if-le v1, v3, :cond_0

    .end local v1    # "c":B
    goto :goto_3

    .line 151
    .restart local v1    # "c":B
    :cond_0
    iget-object v4, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 152
    .local v4, "lowercase":[B
    add-int/lit8 v5, v0, 0x1

    .local v5, "i":I
    add-int/lit8 v6, v1, 0x20

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    .line 153
    .end local v0    # "i":I
    :goto_1
    array-length v0, v4

    if-ge v5, v0, :cond_3

    .line 154
    aget-byte v1, v4, v5

    .line 155
    if-lt v1, v2, :cond_2

    if-le v1, v3, :cond_1

    goto :goto_2

    .line 156
    :cond_1
    add-int/lit8 v0, v1, 0x20

    int-to-byte v0, v0

    aput-byte v0, v4, v5

    .line 153
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 158
    :cond_3
    new-instance v0, Lcom/platform/usercenter/tools/datastructure/ByteString;

    invoke-direct {v0, v4}, Lcom/platform/usercenter/tools/datastructure/ByteString;-><init>([B)V

    return-object v0

    .line 145
    .end local v1    # "c":B
    .end local v4    # "lowercase":[B
    .end local v5    # "i":I
    .restart local v0    # "i":I
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "i":I
    :cond_5
    return-object p0
.end method

.method public toAsciiUppercase()Lcom/platform/usercenter/tools/datastructure/ByteString;
    .locals 7

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 171
    iget-object v1, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    aget-byte v1, v1, v0

    .line 172
    .local v1, "c":B
    const/16 v2, 0x61

    if-lt v1, v2, :cond_4

    const/16 v3, 0x7a

    if-le v1, v3, :cond_0

    .end local v1    # "c":B
    goto :goto_3

    .line 176
    .restart local v1    # "c":B
    :cond_0
    iget-object v4, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 177
    .local v4, "lowercase":[B
    add-int/lit8 v5, v0, 0x1

    .local v5, "i":I
    add-int/lit8 v6, v1, -0x20

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    .line 178
    .end local v0    # "i":I
    :goto_1
    array-length v0, v4

    if-ge v5, v0, :cond_3

    .line 179
    aget-byte v1, v4, v5

    .line 180
    if-lt v1, v2, :cond_2

    if-le v1, v3, :cond_1

    goto :goto_2

    .line 181
    :cond_1
    add-int/lit8 v0, v1, -0x20

    int-to-byte v0, v0

    aput-byte v0, v4, v5

    .line 178
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 183
    :cond_3
    new-instance v0, Lcom/platform/usercenter/tools/datastructure/ByteString;

    invoke-direct {v0, v4}, Lcom/platform/usercenter/tools/datastructure/ByteString;-><init>([B)V

    return-object v0

    .line 170
    .end local v1    # "c":B
    .end local v4    # "lowercase":[B
    .end local v5    # "i":I
    .restart local v0    # "i":I
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "i":I
    :cond_5
    return-object p0
.end method

.method public toByteArray()[B
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 262
    iget-object v0, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    array-length v0, v0

    if-nez v0, :cond_0

    .line 263
    const-string v0, "ByteString[size=0]"

    return-object v0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    array-length v0, v0

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-gt v0, v1, :cond_1

    .line 267
    const-string v0, "ByteString[size=%s data=%s]"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0}, Lcom/platform/usercenter/tools/datastructure/ByteString;->hex()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 270
    :cond_1
    const-string v0, "ByteString[size=%s md5=%s]"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/platform/usercenter/tools/datastructure/ByteString;->data:[B

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0}, Lcom/platform/usercenter/tools/datastructure/ByteString;->md5()Lcom/platform/usercenter/tools/datastructure/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/platform/usercenter/tools/datastructure/ByteString;->hex()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
