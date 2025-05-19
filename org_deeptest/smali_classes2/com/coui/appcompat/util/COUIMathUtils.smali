.class public Lcom/coui/appcompat/util/COUIMathUtils;
.super Ljava/lang/Object;
.source "COUIMathUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static floorDiv(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 42
    div-int v0, p0, p1

    .line 44
    .local v0, "r":I
    xor-int v1, p0, p1

    if-gez v1, :cond_0

    mul-int v1, v0, p1

    if-eq v1, p0, :cond_0

    .line 45
    add-int/lit8 v0, v0, -0x1

    .line 47
    :cond_0
    return v0
.end method

.method public static floorMod(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 32
    invoke-static {p0, p1}, Lcom/coui/appcompat/util/COUIMathUtils;->floorDiv(II)I

    move-result v0

    mul-int/2addr v0, p1

    sub-int v0, p0, v0

    .line 33
    .local v0, "r":I
    return v0
.end method
