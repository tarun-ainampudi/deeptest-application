.class abstract Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;
.super Ljava/lang/Object;
.source "AesEncryptUtils.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryEncoder;
.implements Lorg/apache/commons/codec/BinaryDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/deeptesting/utils/AesEncryptUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseCoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;
    }
.end annotation


# static fields
.field private static final I_61:I = 0x3d


# instance fields
.field private final mChunkSeparatorLength:I

.field private final mEncodedBlockSize:I

.field final mLineLength:I

.field final mPad:B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mUnencodedBlockSize:I


# direct methods
.method constructor <init>(IIII)V
    .locals 6
    .param p1, "unencodedBlockSize"    # I
    .param p2, "encodedBlockSize"    # I
    .param p3, "lineLength"    # I
    .param p4, "chunkSeparatorLength"    # I

    .line 520
    const/16 v5, 0x3d

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;-><init>(IIIIB)V

    .line 521
    return-void
.end method

.method constructor <init>(IIIIB)V
    .locals 2
    .param p1, "unencodedBlockSize"    # I
    .param p2, "encodedBlockSize"    # I
    .param p3, "lineLength"    # I
    .param p4, "chunkSeparatorLength"    # I
    .param p5, "pad"    # B

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput p1, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;->mUnencodedBlockSize:I

    .line 525
    iput p2, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;->mEncodedBlockSize:I

    .line 526
    const/4 v0, 0x0

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 527
    .local v1, "useChunking":Z
    :goto_0
    if-eqz v1, :cond_1

    div-int v0, p3, p2

    mul-int/2addr v0, p2

    nop

    :cond_1
    iput v0, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;->mLineLength:I

    .line 528
    iput p4, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;->mChunkSeparatorLength:I

    .line 530
    iput-byte p5, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;->mPad:B

    .line 531
    return-void
.end method

.method static isWhiteSpace(B)Z
    .locals 5
    .param p0, "byteToCheck"    # B

    .line 576
    const/16 v0, 0x9

    .line 577
    .local v0, "i9":I
    const/16 v1, 0xa

    .line 578
    .local v1, "i10":I
    const/16 v2, 0xd

    .line 579
    .local v2, "i13":I
    const/16 v3, 0x20

    .line 580
    .local v3, "i32":I
    const/16 v4, 0xd

    if-eq p0, v4, :cond_0

    const/16 v4, 0x20

    if-eq p0, v4, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 587
    const/4 v4, 0x0

    return v4

    .line 585
    :cond_0
    :pswitch_0
    const/4 v4, 0x1

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private resizeBuffer(Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;)[B
    .locals 4
    .param p1, "content"    # Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;

    .line 543
    iget-object v0, p1, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mBuffer:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;->getDefaultBufferSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p1, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mBuffer:[B

    .line 545
    iput v1, p1, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    .line 546
    iput v1, p1, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mReadPos:I

    goto :goto_0

    .line 548
    :cond_0
    iget-object v0, p1, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mBuffer:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 549
    .local v0, "b":[B
    iget-object v2, p1, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mBuffer:[B

    iget-object v3, p1, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mBuffer:[B

    array-length v3, v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 550
    iput-object v0, p1, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mBuffer:[B

    .line 552
    .end local v0    # "b":[B
    :goto_0
    iget-object v0, p1, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mBuffer:[B

    return-object v0
.end method


# virtual methods
.method available(Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;)I
    .locals 2
    .param p1, "content"    # Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;

    .line 534
    iget-object v0, p1, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mBuffer:[B

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    iget v1, p1, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mReadPos:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method containsAlphabetOrPad([B)Z
    .locals 5
    .param p1, "arrayOctet"    # [B

    .line 622
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 623
    return v0

    .line 625
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-byte v3, p1, v2

    .line 626
    .local v3, "element":B
    iget-byte v4, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;->mPad:B

    if-eq v4, v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;->isInAlphabet(B)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 625
    .end local v3    # "element":B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 627
    .restart local v3    # "element":B
    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 630
    .end local v3    # "element":B
    :cond_3
    return v0
.end method

.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 663
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract decode([BIILcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;)V
.end method

.method public decode([B)[B
    .locals 4
    .param p1, "pArray"    # [B

    .line 591
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 594
    :cond_0
    new-instance v0, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;

    invoke-direct {v0}, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;-><init>()V

    .line 595
    .local v0, "context":Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;->decode([BIILcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;)V

    .line 596
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;->decode([BIILcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;)V

    .line 597
    iget v1, v0, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    new-array v1, v1, [B

    .line 598
    .local v1, "result":[B
    array-length v3, v1

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;->readResults([BIILcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;)I

    .line 599
    return-object v1

    .line 592
    .end local v0    # "context":Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;
    .end local v1    # "result":[B
    :cond_1
    :goto_0
    return-object p1
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 668
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract encode([BIILcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;)V
.end method

.method public encode([B)[B
    .locals 4
    .param p1, "pArray"    # [B

    .line 603
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 606
    :cond_0
    new-instance v0, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;

    invoke-direct {v0}, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;-><init>()V

    .line 607
    .local v0, "context":Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;->encode([BIILcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;)V

    .line 608
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;->encode([BIILcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;)V

    .line 609
    iget v1, v0, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    iget v3, v0, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mReadPos:I

    sub-int/2addr v1, v3

    new-array v1, v1, [B

    .line 610
    .local v1, "buf":[B
    array-length v3, v1

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;->readResults([BIILcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;)I

    .line 611
    return-object v1

    .line 604
    .end local v0    # "context":Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;
    .end local v1    # "buf":[B
    :cond_1
    :goto_0
    return-object p1
.end method

.method ensureBufferSize(ILcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;)[B
    .locals 2
    .param p1, "size"    # I
    .param p2, "content"    # Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;

    .line 556
    iget-object v0, p2, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mBuffer:[B

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mBuffer:[B

    array-length v0, v0

    iget v1, p2, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 559
    :cond_0
    iget-object v0, p2, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mBuffer:[B

    return-object v0

    .line 557
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;->resizeBuffer(Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;)[B

    move-result-object v0

    return-object v0
.end method

.method getDefaultBufferSize()I
    .locals 1

    .line 538
    const/16 v0, 0x2000

    .line 539
    .local v0, "i8192":I
    return v0
.end method

.method getEncodedLength([B)J
    .locals 6
    .param p1, "pArray"    # [B

    .line 634
    array-length v0, p1

    iget v1, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;->mUnencodedBlockSize:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iget v4, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;->mUnencodedBlockSize:I

    int-to-long v4, v4

    div-long/2addr v0, v4

    iget v4, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;->mEncodedBlockSize:I

    int-to-long v4, v4

    mul-long/2addr v0, v4

    .line 635
    .local v0, "len":J
    iget v4, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;->mLineLength:I

    if-lez v4, :cond_0

    .line 636
    iget v4, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;->mLineLength:I

    int-to-long v4, v4

    add-long/2addr v4, v0

    sub-long/2addr v4, v2

    iget v2, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;->mLineLength:I

    int-to-long v2, v2

    div-long/2addr v4, v2

    iget v2, p0, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;->mChunkSeparatorLength:I

    int-to-long v2, v2

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 638
    :cond_0
    return-wide v0
.end method

.method protected abstract isInAlphabet(B)Z
.end method

.method readResults([BIILcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "bPos"    # I
    .param p3, "bAvail"    # I
    .param p4, "content"    # Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;

    .line 563
    iget-object v0, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mBuffer:[B

    if-eqz v0, :cond_1

    .line 564
    invoke-virtual {p0, p4}, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder;->available(Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 565
    .local v0, "len":I
    iget-object v1, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mBuffer:[B

    iget v2, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mReadPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    iget v1, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mReadPos:I

    add-int/2addr v1, v0

    iput v1, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mReadPos:I

    .line 567
    iget v1, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mReadPos:I

    iget v2, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mPos:I

    if-lt v1, v2, :cond_0

    .line 568
    const/4 v1, 0x0

    iput-object v1, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mBuffer:[B

    .line 570
    :cond_0
    return v0

    .line 572
    .end local v0    # "len":I
    :cond_1
    iget-boolean v0, p4, Lcom/example/deeptesting/utils/AesEncryptUtils$BaseCoder$BaseContent;->mEof:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
