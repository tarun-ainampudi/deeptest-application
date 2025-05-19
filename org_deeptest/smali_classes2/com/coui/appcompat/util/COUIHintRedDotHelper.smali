.class public Lcom/coui/appcompat/util/COUIHintRedDotHelper;
.super Ljava/lang/Object;
.source "COUIHintRedDotHelper.java"


# static fields
.field private static final CONSTANT_VALUE_10:I = 0xa

.field private static final CONSTANT_VALUE_100:I = 0x64

.field public static final CONSTANT_VALUE_1000:I = 0x3e8

.field private static final MAX_ALPHA_VALUE:I = 0xff

.field private static final RATIO:I = 0x2


# instance fields
.field private mBgColor:I

.field private mBgPaint:Landroid/graphics/Paint;

.field private mCornerRadius:I

.field private mDotCornerRadius:I

.field private mDotDiameter:I

.field private mEllipsisDiameter:I

.field private mEllipsisSpacing:I

.field private mLargeWidth:I

.field private mMediumWidth:I

.field private mNaviSmallWidth:I

.field private mSmallWidth:I

.field private mTextColor:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:I

.field private mViewHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;[III)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot_couiHintRedDotColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mBgColor:I

    .line 87
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot_couiHintRedDotTextColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mTextColor:I

    .line 88
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot_couiHintTextSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mTextSize:I

    .line 89
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot_couiSmallWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mSmallWidth:I

    .line 90
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot_couiMediumWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mMediumWidth:I

    .line 91
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot_couiLargeWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mLargeWidth:I

    .line 92
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot_couiHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mViewHeight:I

    .line 93
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot_couiCornerRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mCornerRadius:I

    .line 94
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot_couiDotDiameter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mDotDiameter:I

    .line 95
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot_couiEllipsisDiameter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mEllipsisDiameter:I

    .line 96
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcoui/support/appcompat/R$dimen;->coui_hint_red_dot_rect_radius:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mDotCornerRadius:I

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcoui/support/appcompat/R$dimen;->coui_hint_red_dot_navi_small_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mNaviSmallWidth:I

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcoui/support/appcompat/R$dimen;->coui_hint_red_dot_ellipsis_spacing:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mEllipsisSpacing:I

    .line 101
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 102
    iget-object v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 103
    iget-object v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mTextColor:I

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 104
    iget-object v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 105
    const-string v1, "sans-serif-medium"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 106
    .local v1, "mediumTypeface":Landroid/graphics/Typeface;
    iget-object v2, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 107
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mBgPaint:Landroid/graphics/Paint;

    .line 108
    iget-object v2, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 109
    iget-object v2, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mBgPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mBgColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v2, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mBgPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    return-void
.end method

.method private drawNumber(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "number"    # I
    .param p3, "textPaintAlpha"    # I
    .param p4, "rectF"    # Landroid/graphics/RectF;

    .line 180
    if-gtz p2, :cond_0

    .line 181
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 184
    const/16 v0, 0x3e8

    const/high16 v1, 0x40000000    # 2.0f

    if-ge p2, v0, :cond_1

    .line 185
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "numString":Ljava/lang/String;
    iget-object v2, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 187
    .local v2, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    iget-object v3, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    .line 188
    .local v3, "textWidth":I
    iget v4, p4, Landroid/graphics/RectF;->left:F

    iget v5, p4, Landroid/graphics/RectF;->right:F

    iget v6, p4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    int-to-float v6, v3

    sub-float/2addr v5, v6

    div-float/2addr v5, v1

    add-float/2addr v4, v5

    .line 189
    .local v4, "textX":F
    iget v5, p4, Landroid/graphics/RectF;->top:F

    iget v6, p4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v6

    iget v6, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v1

    .line 190
    .local v5, "textY":F
    iget-object v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 191
    .end local v0    # "numString":Ljava/lang/String;
    .end local v2    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .end local v3    # "textWidth":I
    .end local v4    # "textX":F
    .end local v5    # "textY":F
    goto :goto_1

    .line 192
    :cond_1
    iget v0, p4, Landroid/graphics/RectF;->left:F

    iget v2, p4, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 193
    .local v0, "centerX":F
    iget v2, p4, Landroid/graphics/RectF;->top:F

    iget v3, p4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v3

    div-float/2addr v2, v1

    .line 194
    .local v2, "centerY":F
    const/4 v3, -0x1

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    .line 195
    iget v4, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mEllipsisSpacing:I

    iget v5, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mEllipsisDiameter:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v3

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget v5, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mEllipsisDiameter:I

    int-to-float v5, v5

    div-float/2addr v5, v1

    iget-object v6, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v2, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 198
    .end local v0    # "centerX":F
    .end local v2    # "centerY":F
    .end local v3    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method private drawPointOnly(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rectF"    # Landroid/graphics/RectF;

    .line 138
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 139
    .local v0, "radius":F
    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iget v2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iget-object v3, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 140
    return-void
.end method

.method private drawPointWithNumber(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "number"    # I
    .param p3, "rectF"    # Landroid/graphics/RectF;

    .line 143
    if-gtz p2, :cond_0

    .line 144
    return-void

    .line 147
    :cond_0
    iget v0, p3, Landroid/graphics/RectF;->right:F

    iget v1, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mCornerRadius:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 148
    invoke-static {}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/util/COUIRoundRectUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/util/COUIRoundRectUtil;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mCornerRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, p3, v1}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    .line 152
    .local v0, "path":Landroid/graphics/Path;
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 154
    const/16 v1, 0xff

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->drawNumber(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    .line 155
    return-void
.end method

.method private getBgHeight()I
    .locals 1

    .line 266
    iget v0, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mViewHeight:I

    return v0
.end method

.method private getBgWidth(I)I
    .locals 1
    .param p1, "pointNumber"    # I

    .line 244
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 245
    iget v0, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mSmallWidth:I

    return v0

    .line 246
    :cond_0
    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 247
    iget v0, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mMediumWidth:I

    return v0

    .line 248
    :cond_1
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_2

    .line 249
    iget v0, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mLargeWidth:I

    return v0

    .line 251
    :cond_2
    iget v0, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mMediumWidth:I

    return v0
.end method

.method private getNaviBgWidth(I)I
    .locals 1
    .param p1, "pointNumber"    # I

    .line 256
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 257
    iget v0, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mNaviSmallWidth:I

    return v0

    .line 258
    :cond_0
    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 259
    iget v0, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mSmallWidth:I

    return v0

    .line 261
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mMediumWidth:I

    return v0
.end method


# virtual methods
.method public drawPointWithFadeNumber(Landroid/graphics/Canvas;IIIILandroid/graphics/RectF;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "fadeOutNum"    # I
    .param p3, "fadeOutAlpha"    # I
    .param p4, "fadeInNum"    # I
    .param p5, "fadeInAlpha"    # I
    .param p6, "rectF"    # Landroid/graphics/RectF;

    .line 167
    invoke-static {}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/util/COUIRoundRectUtil;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mCornerRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, p6, v1}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    .line 168
    .local v0, "path":Landroid/graphics/Path;
    iget-object v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 170
    if-le p3, p5, :cond_0

    .line 171
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->drawNumber(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    .line 172
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->drawNumber(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->drawNumber(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    .line 175
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->drawNumber(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    .line 177
    :goto_0
    return-void
.end method

.method public drawRedPoint(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pointMode"    # I
    .param p3, "pointNumber"    # I
    .param p4, "rectF"    # Landroid/graphics/RectF;

    .line 122
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 130
    :pswitch_0
    invoke-direct {p0, p1, p3, p4}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->drawPointWithNumber(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    .line 131
    goto :goto_0

    .line 126
    :pswitch_1
    invoke-direct {p0, p1, p4}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->drawPointOnly(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 127
    goto :goto_0

    .line 124
    :pswitch_2
    nop

    .line 135
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getViewHeight(I)I
    .locals 1
    .param p1, "pointMode"    # I

    .line 228
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 238
    return v0

    .line 236
    :pswitch_0
    iget v0, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mMediumWidth:I

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 234
    :pswitch_1
    invoke-direct {p0}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->getBgHeight()I

    move-result v0

    return v0

    .line 232
    :pswitch_2
    iget v0, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mDotDiameter:I

    return v0

    .line 230
    :pswitch_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewWidth(II)I
    .locals 1
    .param p1, "pointMode"    # I
    .param p2, "pointNumber"    # I

    .line 208
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 218
    return v0

    .line 216
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->getNaviBgWidth(I)I

    move-result v0

    return v0

    .line 214
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->getBgWidth(I)I

    move-result v0

    return v0

    .line 212
    :pswitch_2
    iget v0, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mDotDiameter:I

    return v0

    .line 210
    :pswitch_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBgColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 275
    iput p1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mBgColor:I

    .line 276
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 277
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0
    .param p1, "radius"    # I

    .line 340
    iput p1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mCornerRadius:I

    .line 341
    return-void
.end method

.method public setDotDiameter(I)V
    .locals 0
    .param p1, "diameter"    # I

    .line 349
    iput p1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mDotDiameter:I

    .line 350
    return-void
.end method

.method public setEllipsisDiameter(I)V
    .locals 0
    .param p1, "diameter"    # I

    .line 358
    iput p1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mEllipsisDiameter:I

    .line 359
    return-void
.end method

.method public setLargeWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 322
    iput p1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mLargeWidth:I

    .line 323
    return-void
.end method

.method public setMediumWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 313
    iput p1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mMediumWidth:I

    .line 314
    return-void
.end method

.method public setSmallWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 304
    iput p1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mSmallWidth:I

    .line 305
    return-void
.end method

.method public setTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 285
    iput p1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mTextColor:I

    .line 286
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 287
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .line 295
    iput p1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mTextSize:I

    .line 296
    return-void
.end method

.method public setViewHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 331
    iput p1, p0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->mViewHeight:I

    .line 332
    return-void
.end method
