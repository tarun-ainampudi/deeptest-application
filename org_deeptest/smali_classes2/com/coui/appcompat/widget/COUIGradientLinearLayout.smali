.class public Lcom/coui/appcompat/widget/COUIGradientLinearLayout;
.super Landroid/widget/LinearLayout;
.source "COUIGradientLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;
    }
.end annotation


# static fields
.field public static final ALL_CORNER:Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;

.field private static final DEFAULT_GRADIENT_COLOR_ALPHA:F = 0.04f

.field private static final DEFAULT_PRIMARY_COLOR_ALPHA:F = 1.0f

.field private static final DEFAULT_SHADOW_OFFSET_X:F = 0.0f

.field private static final DEFAULT_SHADOW_OFFSET_Y:F = 20.0f

.field public static final DEFAULT_SHADOW_RADIUS:F = 40.0f

.field private static final TAG:Ljava/lang/String;

.field public static final TOP_CORNER:Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_ONLY_GRADIENT:I = 0x1

.field public static final TYPE_SHADOW_WITH_CORNER:I


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundRadius:I

.field private mColorShader:Landroid/graphics/LinearGradient;

.field private mCornerStyle:Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;

.field private mFixedBottom:I

.field private mFixedLeft:I

.field private mFixedRight:I

.field private mFixedTop:I

.field private mGradientColorArray:[I

.field private mGradientPaint:Landroid/graphics/Paint;

.field private mHasGradient:Z

.field private mHasShadow:Z

.field private mNeedClip:Z

.field private mPaddingLeft:I

.field private mPosition:[F

.field private mPrimaryPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mShadowBottom:I

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:I

.field private mShadowRight:I

.field private mShadowTop:I

.field private mThemeColor:I

.field private mTopOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 87
    new-instance v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;-><init>(ZZZZ)V

    sput-object v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->ALL_CORNER:Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;

    .line 91
    new-instance v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v2}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;-><init>(ZZZZ)V

    sput-object v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->TOP_CORNER:Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;

    .line 104
    const-class v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 165
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    sget-object v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->ALL_CORNER:Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mCornerStyle:Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowLeft:I

    .line 118
    iput v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowTop:I

    .line 119
    iput v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowRight:I

    .line 120
    iput v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowBottom:I

    .line 121
    iput v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mPaddingLeft:I

    .line 122
    iput v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mTopOffset:I

    .line 128
    const/4 v1, 0x3

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mGradientColorArray:[I

    .line 129
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mPosition:[F

    .line 167
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->init(Landroid/content/Context;)V

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_alert_dialog_bg_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 169
    .local v1, "defaultRadius":I
    sget-object v2, Lcoui/support/appcompat/R$styleable;->COUIGradientLinearLayout:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 170
    .local v0, "array":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIGradientLinearLayout_couiCornerRadius:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mBackgroundRadius:I

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$drawable;->coui_bottom_alert_dialog_bg_with_shadow:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 173
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIGradientLinearLayout_couiShadowDrawable:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIGradientLinearLayout_couiShadowDrawable:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 176
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUIGradientLinearLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIGradientLinearLayout;

    .line 45
    iget v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mFixedLeft:I

    return v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUIGradientLinearLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIGradientLinearLayout;

    .line 45
    iget v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mFixedTop:I

    return v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUIGradientLinearLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIGradientLinearLayout;

    .line 45
    iget v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mFixedRight:I

    return v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/COUIGradientLinearLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIGradientLinearLayout;

    .line 45
    iget v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mFixedBottom:I

    return v0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/COUIGradientLinearLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIGradientLinearLayout;

    .line 45
    iget v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mBackgroundRadius:I

    return v0
.end method

.method private clipBackground()V
    .locals 2

    .line 301
    new-instance v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout$1;-><init>(Lcom/coui/appcompat/widget/COUIGradientLinearLayout;)V

    .line 307
    .local v0, "provider":Landroid/view/ViewOutlineProvider;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->setClipToOutline(Z)V

    .line 308
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 309
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_alert_dialog_bg_padding_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mPaddingLeft:I

    .line 181
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$color;->coui_transparence:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mThemeColor:I

    .line 182
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mGradientColorArray:[I

    iget v1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mThemeColor:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 183
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mGradientColorArray:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$color;->coui_transparence:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 184
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mGradientColorArray:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcoui/support/appcompat/R$color;->coui_transparence:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 185
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mGradientPaint:Landroid/graphics/Paint;

    .line 186
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mGradientPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 187
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mGradientPaint:Landroid/graphics/Paint;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$color;->coui_gradient_linearlayout_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mBackgroundColor:I

    .line 189
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mPrimaryPaint:Landroid/graphics/Paint;

    .line 190
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mPrimaryPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mBackgroundColor:I

    const v2, 0x3e4ccccd    # 0.2f

    invoke-static {v1, v2}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->makeDarkLimit(IF)I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mBackgroundColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mPrimaryPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 192
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mPrimaryPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 193
    return-void
.end method

.method private updateGradientRect()V
    .locals 10

    .line 336
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mRectF:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowTop:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mTopOffset:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 338
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mRectF:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mRectF:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mRectF:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mRectF:Landroid/graphics/RectF;

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mGradientColorArray:[I

    iget-object v8, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mPosition:[F

    sget-object v9, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mColorShader:Landroid/graphics/LinearGradient;

    .line 340
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mGradientPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mColorShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 342
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 313
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 314
    invoke-static {}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/util/COUIRoundRectUtil;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mFixedLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mFixedTop:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mFixedRight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mFixedBottom:I

    int-to-float v4, v4

    iget v5, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mBackgroundRadius:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mCornerStyle:Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;

    iget-boolean v6, v6, Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;->mTopLeft:Z

    iget-object v7, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mCornerStyle:Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;

    iget-boolean v7, v7, Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;->mTopRight:Z

    iget-object v8, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mCornerStyle:Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;

    iget-boolean v8, v8, Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;->mBottomLeft:Z

    iget-object v9, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mCornerStyle:Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;

    iget-boolean v9, v9, Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;->mBottomRight:Z

    invoke-virtual/range {v0 .. v9}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getPath(FFFFFZZZZ)Landroid/graphics/Path;

    move-result-object v0

    .line 317
    .local v0, "path":Landroid/graphics/Path;
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mPrimaryPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 318
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mHasGradient:Z

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 321
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 322
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 323
    return-void
.end method

.method public getCornerRadius()I
    .locals 1

    .line 357
    iget v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mBackgroundRadius:I

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 16
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 276
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 278
    iget v1, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowLeft:I

    iput v1, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mFixedLeft:I

    .line 279
    iget v1, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowTop:I

    iget v2, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mTopOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mFixedTop:I

    .line 280
    iget v1, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowRight:I

    sub-int v1, p1, v1

    iput v1, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mFixedRight:I

    .line 281
    iget v1, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowBottom:I

    iget v3, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowTop:I

    sub-int/2addr v1, v3

    sub-int v1, p2, v1

    iput v1, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mFixedBottom:I

    .line 282
    new-instance v1, Landroid/graphics/RectF;

    iget v4, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mFixedLeft:I

    int-to-float v4, v4

    iget v5, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mFixedTop:I

    int-to-float v5, v5

    iget v6, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mFixedRight:I

    int-to-float v6, v6

    iget v7, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mFixedBottom:I

    int-to-float v7, v7

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mRectF:Landroid/graphics/RectF;

    .line 283
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v4, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mFixedLeft:I

    int-to-float v9, v4

    iget v4, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mFixedTop:I

    int-to-float v10, v4

    iget v4, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mFixedLeft:I

    int-to-float v11, v4

    iget v4, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mFixedBottom:I

    int-to-float v12, v4

    iget-object v13, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mGradientColorArray:[I

    iget-object v14, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mPosition:[F

    sget-object v15, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mColorShader:Landroid/graphics/LinearGradient;

    .line 285
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mGradientPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mColorShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 287
    iget-boolean v1, v0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mNeedClip:Z

    if-eqz v1, :cond_0

    .line 288
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->clipBackground()V

    .line 290
    :cond_0
    return-void
.end method

.method public setColorsAndPosition([I[F)V
    .locals 0
    .param p1, "colors"    # [I
    .param p2, "position"    # [F

    .line 212
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mGradientColorArray:[I

    .line 213
    iput-object p2, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mPosition:[F

    .line 214
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0
    .param p1, "radius"    # I

    .line 349
    iput p1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mBackgroundRadius:I

    .line 350
    return-void
.end method

.method public setCornerStyle(Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;)V
    .locals 0
    .param p1, "cornerStyle"    # Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;

    .line 262
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mCornerStyle:Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;

    .line 263
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->requestLayout()V

    .line 264
    return-void
.end method

.method public setHasGradient(Z)V
    .locals 0
    .param p1, "hasGradient"    # Z

    .line 221
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mHasGradient:Z

    .line 222
    return-void
.end method

.method public setHasShadow(Z)V
    .locals 6
    .param p1, "hasShadow"    # Z

    .line 229
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mHasShadow:Z

    .line 230
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 231
    const/16 v1, 0x28

    iput v1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowLeft:I

    .line 232
    iput v1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowRight:I

    .line 233
    const/16 v1, 0x14

    iput v1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowTop:I

    .line 234
    const/16 v1, 0x3c

    iput v1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowBottom:I

    .line 235
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget v1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowLeft:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowTop:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowRight:I

    iget v4, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowBottom:I

    iget v5, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->setPadding(IIII)V

    .line 237
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 238
    .local v1, "parentView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 239
    iget v2, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mPaddingLeft:I

    int-to-float v2, v2

    const/high16 v3, 0x42200000    # 40.0f

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v4, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mPaddingLeft:I

    int-to-float v4, v4

    sub-float/2addr v4, v3

    float-to-int v3, v4

    invoke-virtual {v1, v2, v0, v3, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 242
    .end local v1    # "parentView":Landroid/view/ViewGroup;
    :cond_0
    goto :goto_0

    .line 243
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 244
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->setPadding(IIII)V

    .line 245
    iput v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowLeft:I

    .line 246
    iput v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowTop:I

    .line 247
    iput v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowRight:I

    .line 248
    iput v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mShadowBottom:I

    .line 249
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 250
    .restart local v1    # "parentView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 251
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 254
    .end local v1    # "parentView":Landroid/view/ViewGroup;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->requestLayout()V

    .line 255
    return-void
.end method

.method public setNeedClip(Z)V
    .locals 0
    .param p1, "needClip"    # Z

    .line 297
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mNeedClip:Z

    .line 298
    return-void
.end method

.method public setThemeColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 201
    iput p1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mThemeColor:I

    .line 202
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mGradientColorArray:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 203
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->invalidate()V

    .line 204
    return-void
.end method

.method public setTopOffset(I)V
    .locals 0
    .param p1, "topOffset"    # I

    .line 330
    iput p1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->mTopOffset:I

    .line 331
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->updateGradientRect()V

    .line 332
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->invalidate()V

    .line 333
    return-void
.end method

.method public setType(I)V
    .locals 4
    .param p1, "type"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 268
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 269
    .local v2, "hasShadow":Z
    :goto_0
    if-eqz p1, :cond_2

    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    move v0, v1

    .line 270
    .local v0, "hasGradient":Z
    :goto_2
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->setHasShadow(Z)V

    .line 271
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->setHasGradient(Z)V

    .line 272
    return-void
.end method
