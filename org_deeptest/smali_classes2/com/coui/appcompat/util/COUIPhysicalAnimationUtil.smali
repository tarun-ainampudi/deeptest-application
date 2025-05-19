.class public Lcom/coui/appcompat/util/COUIPhysicalAnimationUtil;
.super Ljava/lang/Object;
.source "COUIPhysicalAnimationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcRealOverScrollDist(III)I
    .locals 4
    .param p0, "delta"    # I
    .param p1, "scroll"    # I
    .param p2, "total"    # I

    .line 33
    int-to-float v0, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v3, p2

    div-float/2addr v1, v3

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
