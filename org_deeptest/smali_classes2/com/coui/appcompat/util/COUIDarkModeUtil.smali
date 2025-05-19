.class public Lcom/coui/appcompat/util/COUIDarkModeUtil;
.super Ljava/lang/Object;
.source "COUIDarkModeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDarkFilter()Landroid/graphics/ColorFilter;
    .locals 3

    .line 135
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const v1, -0x222223

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    return-object v0
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 44
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    .line 45
    .local v1, "currentNightMode":I
    const/16 v2, 0x20

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static makeDark(I)I
    .locals 4
    .param p0, "color"    # I

    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 103
    .local v0, "hsl":[F
    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 104
    const/4 v1, 0x2

    aget v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    .line 105
    .local v3, "newL":F
    aget v2, v0, v1

    cmpg-float v2, v3, v2

    if-gez v2, :cond_0

    .line 106
    aput v3, v0, v1

    .line 107
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result v1

    return v1

    .line 109
    :cond_0
    return p0
.end method

.method public static makeDarkLimit(IF)I
    .locals 4
    .param p0, "color"    # I
    .param p1, "minLight"    # F

    .line 68
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 69
    .local v0, "hsl":[F
    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 70
    const/4 v1, 0x2

    aget v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 71
    .local v2, "newL":F
    aget v3, v0, v1

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    .line 72
    aput v2, v0, v1

    .line 73
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result v1

    return v1

    .line 75
    :cond_0
    return p0
.end method

.method public static makeDrawableDark(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 129
    if-eqz p0, :cond_0

    .line 130
    invoke-static {}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->getDarkFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 132
    :cond_0
    return-void
.end method

.method public static makeImageViewDark(Landroid/widget/ImageView;)V
    .locals 1
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .line 118
    if-eqz p0, :cond_0

    .line 119
    invoke-static {}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->getDarkFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 121
    :cond_0
    return-void
.end method

.method public static makeLight(I)I
    .locals 4
    .param p0, "color"    # I

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 86
    .local v0, "hsl":[F
    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 87
    const/4 v1, 0x2

    aget v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    .line 88
    .local v3, "newL":F
    aget v2, v0, v1

    cmpl-float v2, v3, v2

    if-lez v2, :cond_0

    .line 89
    aput v3, v0, v1

    .line 90
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result v1

    return v1

    .line 92
    :cond_0
    return p0
.end method

.method public static setForceDarkAllow(Landroid/view/View;Z)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "allow"    # Z

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 58
    :cond_0
    return-void
.end method
