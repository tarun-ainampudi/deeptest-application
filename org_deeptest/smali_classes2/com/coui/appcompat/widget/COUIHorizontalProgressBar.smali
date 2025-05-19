.class public Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;
.super Landroid/widget/ProgressBar;
.source "COUIHorizontalProgressBar.java"


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR:I

.field private static final DEFAULT_PROGRESS_COLOR:I

.field private static final mAttrArray:[I


# instance fields
.field private mBackgroundColor:Landroid/content/res/ColorStateList;

.field private mBackgroundRect:Landroid/graphics/RectF;

.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mProgressColor:Landroid/content/res/ColorStateList;

.field private mProgressPath:Landroid/graphics/Path;

.field private mProgressRect:Landroid/graphics/RectF;

.field private mRadius:I

.field private mStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sput v1, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->DEFAULT_BACKGROUND_COLOR:I

    .line 44
    const-string v1, "#FF2AD181"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->DEFAULT_PROGRESS_COLOR:I

    .line 55
    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Lcoui/support/appcompat/R$attr;->couiSeekBarProgressColorDisabled:I

    aput v2, v1, v0

    sput-object v1, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mAttrArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 62
    sget v0, Lcoui/support/appcompat/R$attr;->couiHorizontalProgressBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 66
    sget v0, Lcoui/support/appcompat/R$attr;->couiHorizontalProgressBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mBackgroundRect:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mProgressRect:Landroid/graphics/RectF;

    .line 50
    const v0, 0x7fffffff

    iput v0, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mRadius:I

    .line 67
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mStyle:I

    goto :goto_0

    .line 70
    :cond_0
    iput p3, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mStyle:I

    .line 72
    :goto_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mAttrArray:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    .local v0, "colorArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 75
    .local v2, "disabledColor":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    sget-object v3, Lcoui/support/appcompat/R$styleable;->COUIHorizontalProgressBar:[I

    invoke-virtual {p1, p2, v3, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 78
    .local v3, "typedArray":Landroid/content/res/TypedArray;
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIHorizontalProgressBar_couiHorizontalProgressBarBackgroundColor:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    .line 79
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    .line 80
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIHorizontalProgressBar_couiHorizontalProgressBarProgressColor:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mProgressColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 82
    :cond_1
    sget v4, Lcoui/support/appcompat/R$attr;->couiTintControlNormal:I

    invoke-static {p1, v4, v1}, Lcom/coui/appcompat/util/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v1

    invoke-static {v1, v2}, Lcom/coui/appcompat/util/COUIStateListUtil;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mProgressColor:Landroid/content/res/ColorStateList;

    .line 85
    :goto_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 87
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v4, v1}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 89
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mPath:Landroid/graphics/Path;

    .line 90
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mProgressPath:Landroid/graphics/Path;

    .line 91
    return-void
.end method

.method private getStateColor(Landroid/content/res/ColorStateList;I)I
    .locals 2
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;
    .param p2, "defaultValue"    # I

    .line 141
    if-nez p1, :cond_0

    .line 142
    return p2

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getDrawableState()[I

    move-result-object v0

    .line 145
    .local v0, "drawableState":[I
    invoke-virtual {p1, v0, p2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    return v1
.end method


# virtual methods
.method public isLayoutRtl()Z
    .locals 3

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 152
    :cond_1
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 103
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mProgressPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 104
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 106
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 107
    .local v0, "width":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    sget v3, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->DEFAULT_BACKGROUND_COLOR:I

    invoke-direct {p0, v2, v3}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getStateColor(Landroid/content/res/ColorStateList;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 109
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 111
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mRadius:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 112
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 113
    .local v1, "canUsePath":Z
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 115
    .local v3, "ratio":F
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->isLayoutRtl()Z

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_2

    .line 116
    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v0

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 118
    .local v4, "progressLeft":I
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mProgressRect:Landroid/graphics/RectF;

    int-to-float v6, v4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    add-int v8, v4, v0

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 120
    .end local v4    # "progressLeft":I
    :cond_1
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mProgressRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v3

    int-to-float v7, v0

    mul-float/2addr v5, v7

    add-float/2addr v6, v5

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v4, v6, v5, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 123
    :cond_2
    if-eqz v1, :cond_3

    .line 124
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v5, v3

    int-to-float v6, v0

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 125
    .restart local v4    # "progressLeft":I
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mProgressRect:Landroid/graphics/RectF;

    int-to-float v6, v4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    add-int v8, v4, v0

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 127
    .end local v4    # "progressLeft":I
    :cond_3
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mProgressRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v0

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 130
    :goto_1
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mProgressColor:Landroid/content/res/ColorStateList;

    sget v6, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->DEFAULT_PROGRESS_COLOR:I

    invoke-direct {p0, v5, v6}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getStateColor(Landroid/content/res/ColorStateList;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_4

    .line 132
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mProgressPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mProgressRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mRadius:I

    int-to-float v5, v5

    iget v6, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mRadius:I

    int-to-float v6, v6

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 133
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mProgressPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 134
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mProgressPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 136
    :cond_4
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mProgressRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mRadius:I

    int-to-float v4, v4

    iget v5, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mRadius:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 138
    :goto_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 96
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getPaddingRight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 97
    .local v0, "viewWidth":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getPaddingTop()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 98
    .local v1, "viewHeight":I
    if-lt v0, v1, :cond_0

    div-int/lit8 v2, v1, 0x2

    goto :goto_0

    :cond_0
    div-int/lit8 v2, v0, 0x2

    :goto_0
    iput v2, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mRadius:I

    .line 99
    return-void
.end method

.method public refresh()V
    .locals 9

    .line 168
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mAttrArray:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 169
    .local v0, "colorArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 170
    .local v2, "disabledColor":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    const/4 v3, 0x0

    .line 173
    .local v3, "array":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mStyle:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, "styleAttrType":Ljava/lang/String;
    const-string v5, "attr"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 175
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mContext:Landroid/content/Context;

    sget-object v7, Lcoui/support/appcompat/R$styleable;->COUIHorizontalProgressBar:[I

    iget v8, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mStyle:I

    invoke-virtual {v5, v6, v7, v8, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    goto :goto_0

    .line 176
    :cond_0
    const-string v5, "style"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 177
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mContext:Landroid/content/Context;

    sget-object v7, Lcoui/support/appcompat/R$styleable;->COUIHorizontalProgressBar:[I

    iget v8, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mStyle:I

    invoke-virtual {v5, v6, v7, v1, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 179
    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    .line 180
    sget v5, Lcoui/support/appcompat/R$styleable;->COUIHorizontalProgressBar_couiHorizontalProgressBarBackgroundColor:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    .line 181
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_2

    .line 182
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIHorizontalProgressBar_couiHorizontalProgressBarProgressColor:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mProgressColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 184
    :cond_2
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mContext:Landroid/content/Context;

    sget v6, Lcoui/support/appcompat/R$attr;->couiTintControlNormal:I

    invoke-static {v5, v6, v1}, Lcom/coui/appcompat/util/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v1

    invoke-static {v1, v2}, Lcom/coui/appcompat/util/COUIStateListUtil;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mProgressColor:Landroid/content/res/ColorStateList;

    .line 187
    :goto_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 190
    :cond_3
    return-void
.end method

.method public setProgressColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 161
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->mProgressColor:Landroid/content/res/ColorStateList;

    .line 162
    return-void
.end method
