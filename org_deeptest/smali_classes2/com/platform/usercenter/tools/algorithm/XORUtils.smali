.class public Lcom/platform/usercenter/tools/algorithm/XORUtils;
.super Ljava/lang/Object;
.source "XORUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encrypt(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # I

    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const-string v0, ""

    return-object v0

    .line 27
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 28
    .local v0, "dataBytes":[B
    array-length v1, v0

    .line 29
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 30
    aget-byte v3, v0, v2

    xor-int/2addr v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 29
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 34
    .local v2, "dest":Ljava/lang/String;
    return-object v2
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 5
    .param p1, "bytes"    # [B

    .line 63
    array-length v0, p1

    .line 64
    .local v0, "len":I
    const/16 v1, 0x12

    .line 65
    .local v1, "key":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_0

    .line 66
    aget-byte v3, p1, v2

    add-int/lit8 v4, v2, -0x1

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 65
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 68
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    aget-byte v3, p1, v2

    xor-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 69
    return-object p1
.end method

.method public encrypt([B)[B
    .locals 4
    .param p1, "bytes"    # [B

    .line 44
    if-nez p1, :cond_0

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_0
    array-length v0, p1

    .line 48
    .local v0, "len":I
    const/16 v1, 0x12

    .line 49
    .local v1, "key":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 50
    aget-byte v3, p1, v2

    xor-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 51
    aget-byte v1, p1, v2

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    .end local v2    # "i":I
    :cond_1
    return-object p1
.end method
