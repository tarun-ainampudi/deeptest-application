.class public Lcom/coui/appcompat/widget/COUIRoundImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "COUIRoundImageView.java"


# static fields
.field private static final BORDER_CIRCLE_WIDTH:I = 0x5

.field private static final BORDER_WIDTH:I = 0x2

.field private static final CIRCLE:I = 0x0

.field private static final DEFAULT_BORDER_RADIUS:I = 0x1

.field private static final DEFAULT_STROKE_RADIUS:I = 0x1

.field public static final ICON_LARGE:I = 0x3

.field public static final ICON_LARGE_RADIUS:I = 0x10

.field public static final ICON_MEDIUM:I = 0x2

.field private static final ICON_SIZE_TYPE_DEFAULT:I = 0x0

.field public static final ICON_SMALL:I = 0x1

.field public static final ICON_SMALL_RADIUS:I = 0xe

.field private static final ROUND:I = 0x1

.field private static final SHADOW:I = 0x2


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapSize:I

.field private mBitmapWidth:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:I

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mContext:Landroid/content/Context;

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHasBorder:Z

.field private mHasDefaultPic:Z

.field private mIsImageView:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOutBorderRect:Landroid/graphics/RectF;

.field private mOutCircle:Landroid/graphics/Paint;

.field private mOutCircleColor:I

.field private mRadius:F

.field private mRefreshStyle:I

.field private mRoundRect:Landroid/graphics/RectF;

.field private mScale:F

.field private mShadowBitmap:Landroid/graphics/Bitmap;

.field private mShadowBitmapShader:Landroid/graphics/BitmapShader;

.field private mShadowBorderWidth:I

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowDrawableHeight:I

.field private mShadowDrawableWidth:I

.field private final mShadowInsideRect:Landroid/graphics/RectF;

.field private mSourceDrawableHeight:I

.field private mSourceDrawableWidth:I

.field private mSourceRect:Landroid/graphics/RectF;

.field private mType:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 125
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowInsideRect:Landroid/graphics/RectF;

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 126
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 127
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mContext:Landroid/content/Context;

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 130
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->initBorderPaint()V

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    .line 135
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$color;->coui_roundimageview_outcircle_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 138
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mType:I

    .line 141
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_roundimageview_default_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mWidth:I

    .line 142
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 167
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowInsideRect:Landroid/graphics/RectF;

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 168
    if-eqz p2, :cond_0

    .line 169
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mRefreshStyle:I

    .line 171
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 172
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mContext:Landroid/content/Context;

    .line 174
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 175
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 176
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 178
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->initBorderPaint()V

    .line 180
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    .line 181
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 183
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$drawable;->coui_round_image_view_shadow:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 186
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowDrawableWidth:I

    .line 187
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowDrawableHeight:I

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_roundimageView_src_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mSourceDrawableWidth:I

    .line 190
    iget v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mSourceDrawableWidth:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mSourceDrawableHeight:I

    .line 192
    sget-object v0, Lcoui/support/appcompat/R$styleable;->COUIRoundImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 193
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIRoundImageView_couiBorderRadius:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 194
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 193
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBorderRadius:I

    .line 195
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIRoundImageView_couiType:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mType:I

    .line 196
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIRoundImageView_couiHasBorder:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mHasBorder:Z

    .line 197
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIRoundImageView_couiHasDefaultPic:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mHasDefaultPic:Z

    .line 198
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIRoundImageView_couiRoundImageViewOutCircleColor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mOutCircleColor:I

    .line 200
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mOutCircleColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->initShadow()V

    .line 203
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUIRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    .line 204
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 219
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowInsideRect:Landroid/graphics/RectF;

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 220
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->initShadow()V

    .line 221
    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 452
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 453
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 454
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 456
    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 457
    .local v0, "h":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 458
    .local v1, "w":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 459
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 460
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 461
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 462
    return-object v2
.end method

.method private initBorderPaint()V
    .locals 3

    .line 152
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 153
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 154
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 155
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$color;->coui_border:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    return-void
.end method

.method private setupShader(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 415
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 417
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 425
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 418
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mHasDefaultPic:Z

    if-eqz v0, :cond_5

    .line 419
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_ic_contact_picture:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 420
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_ic_contact_picture:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 428
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapWidth:I

    .line 429
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapHeight:I

    .line 430
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 432
    iget v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 433
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->createBitmapWithShadow()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 434
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowBitmapShader:Landroid/graphics/BitmapShader;

    .line 438
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 439
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 442
    :cond_4
    return-void

    .line 422
    :cond_5
    return-void
.end method

.method private updateShaderMatrix()V
    .locals 9

    .line 359
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 362
    iget v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mSourceDrawableWidth:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    iget v4, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapWidth:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    double-to-float v0, v0

    .line 363
    .local v0, "bitmapScaleX":F
    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mSourceDrawableHeight:I

    int-to-double v4, v1

    mul-double/2addr v4, v2

    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapHeight:I

    int-to-double v1, v1

    div-double/2addr v4, v1

    double-to-float v1, v4

    .line 364
    .local v1, "bitmapScaleY":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v2

    if-gtz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    move v0, v3

    .line 365
    cmpg-float v3, v1, v2

    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    move v1, v2

    .line 367
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 369
    .local v2, "scale":F
    iget v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mSourceDrawableWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    .line 370
    .local v3, "dx":F
    iget v5, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mSourceDrawableHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    sub-float/2addr v5, v6

    mul-float/2addr v5, v4

    .line 372
    .local v5, "dy":F
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 373
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    add-float v7, v3, v4

    float-to-int v7, v7

    iget v8, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowBorderWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v8, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowBorderWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    int-to-float v4, v4

    invoke-virtual {v6, v7, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 374
    return-void
.end method


# virtual methods
.method public createBitmapWithShadow()Landroid/graphics/Bitmap;
    .locals 7

    .line 338
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->updateShaderMatrix()V

    .line 339
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowBitmapShader:Landroid/graphics/BitmapShader;

    .line 340
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 341
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 343
    iget v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowDrawableWidth:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowDrawableHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 344
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 346
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mSourceDrawableWidth:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBorderRadius:I

    .line 347
    invoke-static {}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/util/COUIRoundRectUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowInsideRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBorderRadius:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v2

    .line 348
    .local v2, "path":Landroid/graphics/Path;
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 350
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowDrawableWidth:I

    iget v5, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowDrawableHeight:I

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 351
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 352
    return-object v0
.end method

.method public initShadow()V
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowDrawableWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowDrawableHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 228
    iget v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowDrawableWidth:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mSourceDrawableWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowBorderWidth:I

    .line 229
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowInsideRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 230
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowInsideRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowBorderWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowBorderWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 231
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 274
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mScale:F

    .line 275
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 276
    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mType:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 285
    :pswitch_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowDrawableWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowDrawableHeight:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mScale:F

    .line 286
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 287
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mScale:F

    iget v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mScale:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 288
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 289
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mShadowBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 290
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mRoundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 291
    return-void

    .line 282
    :pswitch_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mScale:F

    .line 283
    goto :goto_0

    .line 278
    :pswitch_2
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapSize:I

    .line 279
    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapSize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mScale:F

    .line 280
    nop

    .line 295
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mScale:F

    iget v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mScale:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 298
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 300
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 304
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mType:I

    if-nez v1, :cond_2

    .line 305
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mHasBorder:Z

    if-eqz v0, :cond_1

    .line 306
    iget v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mRadius:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mRadius:F

    iget v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mRadius:F

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 307
    iget v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mRadius:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mRadius:F

    iget v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mRadius:F

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 309
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mRadius:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mRadius:F

    iget v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mRadius:F

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 311
    :cond_2
    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 313
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mRoundRect:Landroid/graphics/RectF;

    if-nez v1, :cond_3

    .line 314
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mRoundRect:Landroid/graphics/RectF;

    .line 316
    :cond_3
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mOutBorderRect:Landroid/graphics/RectF;

    if-nez v1, :cond_4

    .line 317
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mOutBorderRect:Landroid/graphics/RectF;

    .line 319
    :cond_4
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mHasBorder:Z

    if-eqz v1, :cond_5

    .line 320
    invoke-static {}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/util/COUIRoundRectUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mRoundRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBorderRadius:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v1

    .line 321
    .local v1, "path":Landroid/graphics/Path;
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 322
    invoke-static {}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/util/COUIRoundRectUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mOutBorderRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBorderRadius:I

    int-to-float v4, v4

    sub-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    .line 323
    .local v0, "outPath":Landroid/graphics/Path;
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 324
    .end local v0    # "outPath":Landroid/graphics/Path;
    .end local v1    # "path":Landroid/graphics/Path;
    goto :goto_1

    .line 325
    :cond_5
    invoke-static {}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/util/COUIRoundRectUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mRoundRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBorderRadius:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    .line 326
    .local v0, "path":Landroid/graphics/Path;
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 329
    .end local v0    # "path":Landroid/graphics/Path;
    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 387
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    .line 388
    iget v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mType:I

    if-nez v0, :cond_1

    .line 389
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 390
    .local v0, "minWidth":I
    if-nez v0, :cond_0

    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mWidth:I

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mWidth:I

    .line 391
    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mRadius:F

    .line 392
    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mWidth:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mWidth:I

    invoke-virtual {p0, v1, v2}, Lcom/coui/appcompat/widget/COUIRoundImageView;->setMeasuredDimension(II)V

    .line 394
    .end local v0    # "minWidth":I
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 378
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->onSizeChanged(IIII)V

    .line 379
    iget v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 380
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mRoundRect:Landroid/graphics/RectF;

    .line 381
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mOutBorderRect:Landroid/graphics/RectF;

    .line 383
    :cond_1
    return-void
.end method

.method public refresh()V
    .locals 7

    .line 478
    const/4 v0, 0x0

    .line 479
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mRefreshStyle:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v4, Lcoui/support/appcompat/R$styleable;->COUIRoundImageView:[I

    invoke-virtual {v1, v2, v4, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v4, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mRefreshStyle:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, "styleAttrType":Ljava/lang/String;
    const-string v4, "attr"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 485
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUIRoundImageView:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mRefreshStyle:I

    invoke-virtual {v4, v2, v5, v6, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 487
    :cond_1
    const-string v4, "style"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 488
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUIRoundImageView:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mRefreshStyle:I

    invoke-virtual {v4, v2, v5, v3, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 493
    .end local v1    # "styleAttrType":Ljava/lang/String;
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 494
    return-void

    .line 497
    :cond_3
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIRoundImageView_couiRoundImageViewOutCircleColor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mOutCircleColor:I

    .line 498
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mOutCircleColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 499
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 500
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->invalidate()V

    .line 501
    return-void
.end method

.method public setBorderRectRadius(I)V
    .locals 0
    .param p1, "boarderRadius"    # I

    .line 268
    iput p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mBorderRadius:I

    .line 269
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->invalidate()V

    .line 270
    return-void
.end method

.method public setHasBorder(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 239
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mHasBorder:Z

    .line 240
    return-void
.end method

.method public setHasDefaultPic(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 259
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mHasDefaultPic:Z

    .line 260
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 398
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    .line 400
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 404
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 405
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 406
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    .line 407
    return-void
.end method

.method public setOutCircleColor(I)V
    .locals 1
    .param p1, "outCircleColor"    # I

    .line 248
    iput p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mOutCircleColor:I

    .line 249
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->invalidate()V

    .line 251
    return-void
.end method

.method public setType(I)V
    .locals 1
    .param p1, "type"    # I

    .line 471
    iget v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mType:I

    if-eq v0, p1, :cond_0

    .line 472
    iput p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->mType:I

    .line 473
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->invalidate()V

    .line 475
    :cond_0
    return-void
.end method
