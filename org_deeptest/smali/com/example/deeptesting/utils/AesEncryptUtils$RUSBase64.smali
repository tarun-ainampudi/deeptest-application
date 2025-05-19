.class Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;
.super Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;
.source "AesEncryptUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/deeptesting/utils/AesEncryptUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RUSBase64"
.end annotation


# static fields
.field private static final CHUNK_SEPARATOR:[B

.field private static final DECODE_TABLE:[B

.field private static final I_3:I = 0x3

.field private static final I_4:I = 0x4

.field private static final I_76:I = 0x4c

.field private static final STANDARD_ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# instance fields
.field private final mDecodeSize:I

.field private final mDecodeTable:[B

.field private final mEncodeSize:I

.field private final mEncodeTable:[B

.field private final mLineSeparator:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 244
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->CHUNK_SEPARATOR:[B

    .line 245
    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->STANDARD_ENCODE_TABLE:[B

    .line 252
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->URL_SAFE_ENCODE_TABLE:[B

    .line 260
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->DECODE_TABLE:[B

    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_3
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .line 284
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;-><init>(I)V

    .line 285
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "lineLength"    # I

    .line 292
    sget-object v0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;-><init>(I[B)V

    .line 293
    return-void
.end method

.method constructor <init>(I[B)V
    .locals 1
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B

    .line 296
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;-><init>(I[BZ)V

    .line 297
    return-void
.end method

.method constructor <init>(I[BZ)V
    .locals 4
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B
    .param p3, "urlSafe"    # Z

    .line 300
    const/4 v0, 0x0

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p2

    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x3

    invoke-direct {p0, v3, v2, p1, v1}, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;-><init>(IIII)V

    .line 278
    sget-object v1, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->DECODE_TABLE:[B

    iput-object v1, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mDecodeTable:[B

    .line 302
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 303
    invoke-virtual {p0, p2}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->containsAlphabetOrPad([B)Z

    move-result v3

    if-nez v3, :cond_2

    .line 312
    if-lez p1, :cond_1

    .line 313
    array-length v1, p2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mEncodeSize:I

    .line 314
    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mLineSeparator:[B

    .line 315
    iget-object v1, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mLineSeparator:[B

    array-length v2, p2

    invoke-static {p2, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 317
    :cond_1
    iput v2, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mEncodeSize:I

    .line 318
    iput-object v1, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mLineSeparator:[B

    goto :goto_2

    .line 304
    :cond_2
    move-object v0, v1

    .line 306
    .local v0, "sep":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 309
    goto :goto_1

    .line 307
    :catch_0
    move-exception v1

    .line 308
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 310
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lineSeparator must not contain base64 characters: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    .end local v0    # "sep":Ljava/lang/String;
    :cond_3
    iput v2, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mEncodeSize:I

    .line 322
    iput-object v1, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mLineSeparator:[B

    .line 324
    :goto_2
    iget v0, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mEncodeSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mDecodeSize:I

    .line 325
    if-eqz p3, :cond_4

    sget-object v0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->URL_SAFE_ENCODE_TABLE:[B

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->STANDARD_ENCODE_TABLE:[B

    :goto_3
    iput-object v0, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mEncodeTable:[B

    .line 326
    return-void
.end method

.method constructor <init>(Z)V
    .locals 2
    .param p1, "urlSafe"    # Z

    .line 288
    sget-object v0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->CHUNK_SEPARATOR:[B

    const/16 v1, 0x4c

    invoke-direct {p0, v1, v0, p1}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;-><init>(I[BZ)V

    .line 289
    return-void
.end method

.method static decodeBase64([B)[B
    .locals 1
    .param p0, "base64Data"    # [B

    .line 501
    new-instance v0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;

    invoke-direct {v0}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;-><init>()V

    invoke-virtual {v0, p0}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method static encodeBase64([BZ)[B
    .locals 1
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z

    .line 477
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method static encodeBase64([BZZ)[B
    .locals 2
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z
    .param p2, "urlSafe"    # Z

    .line 481
    const v0, 0x7fffffff

    .line 482
    .local v0, "i2147483647":I
    invoke-static {p0, p1, p2, v0}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->encodeBase64([BZZI)[B

    move-result-object v1

    return-object v1
.end method

.method static encodeBase64([BZZI)[B
    .locals 6
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z
    .param p2, "urlSafe"    # Z
    .param p3, "maxResultSize"    # I

    .line 486
    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 490
    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;

    invoke-direct {v0, p2}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;-><init>(Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;

    const/4 v1, 0x0

    sget-object v2, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->CHUNK_SEPARATOR:[B

    invoke-direct {v0, v1, v2, p2}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;-><init>(I[BZ)V

    .line 491
    .local v0, "b64":Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;
    :goto_0
    invoke-virtual {v0, p0}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->getEncodedLength([B)J

    move-result-wide v1

    .line 492
    .local v1, "len":J
    int-to-long v3, p3

    cmp-long v3, v1, v3

    if-gtz v3, :cond_2

    .line 497
    invoke-virtual {v0, p0}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->encode([B)[B

    move-result-object v3

    return-object v3

    .line 493
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input array too big, the output array would be bigger ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ") than the specified maximum size of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 487
    .end local v0    # "b64":Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;
    .end local v1    # "len":J
    :cond_3
    :goto_1
    return-object p0
.end method

.method static encodeBase64String([B)Ljava/lang/String;
    .locals 3
    .param p0, "binaryData"    # [B

    .line 469
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->encodeBase64([BZ)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 473
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    const/4 v0, 0x0

    return-object v0
.end method

.method static isBase64(B)Z
    .locals 3
    .param p0, "octet"    # B

    .line 452
    const/16 v0, 0x3d

    .line 453
    .local v0, "i61":I
    if-eq p0, v0, :cond_1

    if-ltz p0, :cond_0

    sget-object v1, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->DECODE_TABLE:[B

    array-length v1, v1

    if-ge p0, v1, :cond_0

    sget-object v1, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->DECODE_TABLE:[B

    aget-byte v1, v1, p0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method static isBase64([B)Z
    .locals 3
    .param p0, "arrayOctet"    # [B

    .line 458
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 459
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->isBase64(B)Z

    move-result v2

    if-nez v2, :cond_0

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->isWhiteSpace(B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 460
    return v0

    .line 458
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 463
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method decode([BIILcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;)V
    .locals 7
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I
    .param p4, "content"    # Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;

    .line 399
    iget-boolean v0, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mEof:Z

    if-eqz v0, :cond_0

    .line 400
    return-void

    .line 402
    :cond_0
    const/4 v0, 0x1

    if-gez p3, :cond_1

    .line 403
    iput-boolean v0, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mEof:Z

    .line 405
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_4

    .line 406
    iget v2, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mDecodeSize:I

    invoke-virtual {p0, v2, p4}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->ensureBufferSize(ILcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;)[B

    move-result-object v2

    .line 407
    .local v2, "buffer":[B
    add-int/lit8 v3, p2, 0x1

    .local v3, "inPos":I
    aget-byte p2, p1, p2

    .line 408
    .local p2, "b":B
    iget-byte v4, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mPad:B

    if-ne p2, v4, :cond_2

    .line 409
    iput-boolean v0, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mEof:Z

    .line 410
    nop

    .line 429
    move p2, v3

    goto :goto_1

    .line 412
    :cond_2
    if-ltz p2, :cond_3

    sget-object v4, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->DECODE_TABLE:[B

    array-length v4, v4

    if-ge p2, v4, :cond_3

    .line 413
    sget-object v4, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->DECODE_TABLE:[B

    aget-byte v4, v4, p2

    .line 414
    .local v4, "result":I
    if-ltz v4, :cond_3

    .line 415
    iget v5, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mModulus:I

    add-int/2addr v5, v0

    rem-int/lit8 v5, v5, 0x4

    iput v5, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mModulus:I

    .line 416
    iget v5, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mIbitWorkArea:I

    shl-int/lit8 v5, v5, 0x6

    add-int/2addr v5, v4

    iput v5, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mIbitWorkArea:I

    .line 417
    iget v5, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mModulus:I

    if-nez v5, :cond_3

    .line 418
    iget v5, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    iget v6, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mIbitWorkArea:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 419
    iget v5, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    iget v6, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mIbitWorkArea:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 420
    iget v5, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    iget v6, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mIbitWorkArea:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 405
    .end local v2    # "buffer":[B
    .end local v4    # "result":I
    .end local p2    # "b":B
    :cond_3
    add-int/lit8 v1, v1, 0x1

    move p2, v3

    goto :goto_0

    .line 429
    .end local v1    # "i":I
    .end local v3    # "inPos":I
    .local p2, "inPos":I
    :cond_4
    :goto_1
    iget-boolean v0, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mEof:Z

    if-eqz v0, :cond_5

    iget v0, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mModulus:I

    if-eqz v0, :cond_5

    .line 430
    iget v0, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mDecodeSize:I

    invoke-virtual {p0, v0, p4}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->ensureBufferSize(ILcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;)[B

    move-result-object v0

    .line 431
    .local v0, "buffer":[B
    const/4 v1, 0x3

    .line 432
    .local v1, "i3":I
    iget v2, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mModulus:I

    packed-switch v2, :pswitch_data_0

    .line 446
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Impossible modulus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mModulus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 440
    :pswitch_0
    const/4 v2, 0x2

    .line 441
    .local v2, "i2":I
    iget v3, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mIbitWorkArea:I

    shr-int/2addr v3, v2

    iput v3, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mIbitWorkArea:I

    .line 442
    iget v3, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    iget v4, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mIbitWorkArea:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 443
    iget v3, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    iget v4, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mIbitWorkArea:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 444
    goto :goto_2

    .line 436
    .end local v2    # "i2":I
    :pswitch_1
    iget v2, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mIbitWorkArea:I

    shr-int/lit8 v2, v2, 0x4

    iput v2, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mIbitWorkArea:I

    .line 437
    iget v2, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    iget v3, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mIbitWorkArea:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 438
    goto :goto_2

    .line 434
    :pswitch_2
    nop

    .line 449
    .end local v0    # "buffer":[B
    .end local v1    # "i3":I
    :cond_5
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method encode([BIILcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;)V
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I
    .param p4, "content"    # Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;

    .line 330
    iget-boolean v0, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mEof:Z

    if-eqz v0, :cond_0

    .line 331
    return-void

    .line 334
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p3, :cond_4

    .line 335
    iput-boolean v1, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mEof:Z

    .line 336
    iget v1, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mModulus:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mLineLength:I

    if-nez v1, :cond_1

    .line 337
    return-void

    .line 339
    :cond_1
    iget v1, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mEncodeSize:I

    invoke-virtual {p0, v1, p4}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->ensureBufferSize(ILcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;)[B

    move-result-object v1

    .line 340
    .local v1, "buffer":[B
    iget v2, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    .line 341
    .local v2, "savedPos":I
    iget v3, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mModulus:I

    packed-switch v3, :pswitch_data_0

    .line 364
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Impossible modulus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mModulus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :pswitch_0
    iget v3, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    iget-object v4, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mEncodeTable:[B

    iget v5, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mIbitWorkArea:I

    shr-int/lit8 v5, v5, 0xa

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 356
    iget v3, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    iget-object v4, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mEncodeTable:[B

    iget v5, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mIbitWorkArea:I

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 357
    iget v3, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    iget-object v4, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mEncodeTable:[B

    iget v5, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mIbitWorkArea:I

    shl-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 359
    iget-object v3, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mEncodeTable:[B

    sget-object v4, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->STANDARD_ENCODE_TABLE:[B

    if-ne v3, v4, :cond_2

    .line 360
    iget v3, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    iget-byte v4, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mPad:B

    aput-byte v4, v1, v3

    goto :goto_0

    .line 345
    :pswitch_1
    iget v3, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    iget-object v4, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mEncodeTable:[B

    iget v5, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mIbitWorkArea:I

    shr-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 347
    iget v3, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    iget-object v4, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mEncodeTable:[B

    iget v5, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mIbitWorkArea:I

    shl-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 349
    iget-object v3, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mEncodeTable:[B

    sget-object v4, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->STANDARD_ENCODE_TABLE:[B

    if-ne v3, v4, :cond_2

    .line 350
    iget v3, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    iget-byte v4, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mPad:B

    aput-byte v4, v1, v3

    .line 351
    iget v3, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    iget-byte v4, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mPad:B

    aput-byte v4, v1, v3

    goto :goto_0

    .line 343
    :pswitch_2
    nop

    .line 366
    :cond_2
    :goto_0
    iget v3, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mCurrentLinePos:I

    iget v4, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    sub-int/2addr v4, v2

    add-int/2addr v3, v4

    iput v3, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mCurrentLinePos:I

    .line 368
    iget v3, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mLineLength:I

    if-lez v3, :cond_3

    iget v3, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mCurrentLinePos:I

    if-lez v3, :cond_3

    .line 369
    iget-object v3, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mLineSeparator:[B

    iget v4, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    iget-object v5, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mLineSeparator:[B

    array-length v5, v5

    invoke-static {v3, v0, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    iget v0, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    iget-object v3, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mLineSeparator:[B

    array-length v3, v3

    add-int/2addr v0, v3

    iput v0, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    .line 372
    .end local v1    # "buffer":[B
    .end local v2    # "savedPos":I
    :cond_3
    goto/16 :goto_2

    .line 373
    :cond_4
    move v2, p2

    move p2, v0

    .local v2, "inPos":I
    .local p2, "i":I
    :goto_1
    if-ge p2, p3, :cond_7

    .line 374
    iget v3, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mEncodeSize:I

    invoke-virtual {p0, v3, p4}, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->ensureBufferSize(ILcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;)[B

    move-result-object v3

    .line 375
    .local v3, "buffer":[B
    iget v4, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mModulus:I

    add-int/2addr v4, v1

    rem-int/lit8 v4, v4, 0x3

    iput v4, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mModulus:I

    .line 376
    add-int/lit8 v4, v2, 0x1

    .local v4, "inPos":I
    aget-byte v2, p1, v2

    .line 377
    .local v2, "b":I
    if-gez v2, :cond_5

    .line 378
    const/16 v5, 0x100

    .line 379
    .local v5, "i256":I
    add-int/2addr v2, v5

    .line 381
    .end local v5    # "i256":I
    :cond_5
    iget v5, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mIbitWorkArea:I

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v2

    iput v5, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mIbitWorkArea:I

    .line 382
    iget v5, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mModulus:I

    if-nez v5, :cond_6

    .line 383
    iget v5, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    iget-object v6, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mEncodeTable:[B

    iget v7, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mIbitWorkArea:I

    shr-int/lit8 v7, v7, 0x12

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v3, v5

    .line 384
    iget v5, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    iget-object v6, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mEncodeTable:[B

    iget v7, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mIbitWorkArea:I

    shr-int/lit8 v7, v7, 0xc

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v3, v5

    .line 385
    iget v5, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    iget-object v6, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mEncodeTable:[B

    iget v7, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mIbitWorkArea:I

    shr-int/lit8 v7, v7, 0x6

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v3, v5

    .line 386
    iget v5, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    iget-object v6, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mEncodeTable:[B

    iget v7, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mIbitWorkArea:I

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v3, v5

    .line 387
    iget v5, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mCurrentLinePos:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mCurrentLinePos:I

    .line 388
    iget v5, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mLineLength:I

    if-lez v5, :cond_6

    iget v5, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mLineLength:I

    iget v6, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mCurrentLinePos:I

    if-gt v5, v6, :cond_6

    .line 389
    iget-object v5, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mLineSeparator:[B

    iget v6, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    iget-object v7, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mLineSeparator:[B

    array-length v7, v7

    invoke-static {v5, v0, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    iget v5, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    iget-object v6, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mLineSeparator:[B

    array-length v6, v6

    add-int/2addr v5, v6

    iput v5, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    .line 391
    iput v0, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mCurrentLinePos:I

    .line 373
    .end local v2    # "b":I
    .end local v3    # "buffer":[B
    :cond_6
    add-int/lit8 p2, p2, 0x1

    move v2, v4

    goto/16 :goto_1

    .line 396
    .end local v4    # "inPos":I
    .end local p2    # "i":I
    .local v2, "inPos":I
    :cond_7
    move p2, v2

    .end local v2    # "inPos":I
    .local p2, "inPos":I
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected isInAlphabet(B)Z
    .locals 2
    .param p1, "octet"    # B

    .line 505
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mDecodeTable:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$RUSBase64;->mDecodeTable:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
