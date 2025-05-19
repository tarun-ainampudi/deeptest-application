.class public Lcom/coui/appcompat/util/COUICollectionUtil;
.super Ljava/lang/Object;
.source "COUICollectionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sum([I)I
    .locals 4
    .param p0, "array"    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "sum":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 30
    .local v3, "element":I
    add-int/2addr v0, v3

    .line 29
    .end local v3    # "element":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return v0
.end method
