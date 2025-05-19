.class public Lcom/coui/appcompat/widget/cardview/COUICardView;
.super Landroid/widget/FrameLayout;
.source "COUICardView.java"


# static fields
.field private static final COLOR_BACKGROUND_ATTR:[I

.field private static final IMPL:Lcom/coui/appcompat/widget/cardview/CardViewImpl;


# instance fields
.field private final mCardViewDelegate:Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

.field private mCompatPadding:Z

.field final mContentPadding:Landroid/graphics/Rect;

.field private mPreventCornerOverlap:Z

.field final mShadowBounds:Landroid/graphics/Rect;

.field mUserSetMinHeight:I

.field mUserSetMinWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010031

    aput v2, v0, v1

    sput-object v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->COLOR_BACKGROUND_ATTR:[I

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 72
    new-instance v0, Lcom/coui/appcompat/widget/cardview/CardViewApi21Impl;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/cardview/CardViewApi21Impl;-><init>()V

    sput-object v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/widget/cardview/CardViewImpl;

    goto :goto_0

    .line 73
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 74
    new-instance v0, Lcom/coui/appcompat/widget/cardview/CardViewApi17Impl;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/cardview/CardViewApi17Impl;-><init>()V

    sput-object v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/widget/cardview/CardViewImpl;

    goto :goto_0

    .line 76
    :cond_1
    new-instance v0, Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl;-><init>()V

    sput-object v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/widget/cardview/CardViewImpl;

    .line 78
    :goto_0
    sget-object v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/widget/cardview/CardViewImpl;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/cardview/CardViewImpl;->initStatic()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mShadowBounds:Landroid/graphics/Rect;

    .line 434
    new-instance v0, Lcom/coui/appcompat/widget/cardview/COUICardView$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/cardview/COUICardView$1;-><init>(Lcom/coui/appcompat/widget/cardview/COUICardView;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    .line 103
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/coui/appcompat/widget/cardview/COUICardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 110
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mShadowBounds:Landroid/graphics/Rect;

    .line 434
    new-instance v0, Lcom/coui/appcompat/widget/cardview/COUICardView$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/cardview/COUICardView$1;-><init>(Lcom/coui/appcompat/widget/cardview/COUICardView;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/cardview/COUICardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mShadowBounds:Landroid/graphics/Rect;

    .line 434
    new-instance v0, Lcom/coui/appcompat/widget/cardview/COUICardView$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/cardview/COUICardView$1;-><init>(Lcom/coui/appcompat/widget/cardview/COUICardView;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/cardview/COUICardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    return-void
.end method

.method static synthetic access$001(Lcom/coui/appcompat/widget/cardview/COUICardView;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/cardview/COUICardView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$101(Lcom/coui/appcompat/widget/cardview/COUICardView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/cardview/COUICardView;
    .param p1, "x1"    # I

    .line 65
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method static synthetic access$201(Lcom/coui/appcompat/widget/cardview/COUICardView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/cardview/COUICardView;
    .param p1, "x1"    # I

    .line 65
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 223
    move-object/from16 v0, p0

    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUICardView:[I

    const/4 v2, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    invoke-virtual {v10, v11, v1, v12, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 226
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v3, Lcoui/support/appcompat/R$styleable;->COUICardView_cardBackgroundColor:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    sget v3, Lcoui/support/appcompat/R$styleable;->COUICardView_cardBackgroundColor:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 237
    .local v6, "backgroundColor":Landroid/content/res/ColorStateList;
    :goto_0
    move-object v6, v3

    goto :goto_2

    .line 230
    .end local v6    # "backgroundColor":Landroid/content/res/ColorStateList;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/cardview/COUICardView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/coui/appcompat/widget/cardview/COUICardView;->COLOR_BACKGROUND_ATTR:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 231
    .local v3, "aa":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 232
    .local v4, "themeColorBackground":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    const/4 v5, 0x3

    new-array v5, v5, [F

    .line 236
    .local v5, "hsv":[F
    invoke-static {v4, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 237
    const/4 v6, 0x2

    aget v6, v5, v6

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/cardview/COUICardView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcoui/support/appcompat/R$color;->cardview_light_background:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    goto :goto_1

    .line 239
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/cardview/COUICardView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcoui/support/appcompat/R$color;->cardview_dark_background:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 237
    :goto_1
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    goto :goto_0

    .line 241
    .end local v3    # "aa":Landroid/content/res/TypedArray;
    .end local v4    # "themeColorBackground":I
    .end local v5    # "hsv":[F
    .restart local v6    # "backgroundColor":Landroid/content/res/ColorStateList;
    :goto_2
    sget v3, Lcoui/support/appcompat/R$styleable;->COUICardView_cardCornerRadius:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    .line 242
    .local v13, "radius":F
    sget v3, Lcoui/support/appcompat/R$styleable;->COUICardView_cardElevation:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    .line 243
    .local v14, "elevation":F
    sget v3, Lcoui/support/appcompat/R$styleable;->COUICardView_cardMaxElevation:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 244
    .local v3, "maxElevation":F
    sget v4, Lcoui/support/appcompat/R$styleable;->COUICardView_cardUseCompatPadding:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mCompatPadding:Z

    .line 245
    sget v4, Lcoui/support/appcompat/R$styleable;->COUICardView_cardPreventCornerOverlap:I

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mPreventCornerOverlap:Z

    .line 246
    sget v4, Lcoui/support/appcompat/R$styleable;->COUICardView_contentPadding:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    .line 247
    .local v15, "defaultPadding":I
    iget-object v4, v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    sget v5, Lcoui/support/appcompat/R$styleable;->COUICardView_contentPaddingLeft:I

    invoke-virtual {v1, v5, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 249
    iget-object v4, v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    sget v5, Lcoui/support/appcompat/R$styleable;->COUICardView_contentPaddingTop:I

    invoke-virtual {v1, v5, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 251
    iget-object v4, v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    sget v5, Lcoui/support/appcompat/R$styleable;->COUICardView_contentPaddingRight:I

    invoke-virtual {v1, v5, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 253
    iget-object v4, v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    sget v5, Lcoui/support/appcompat/R$styleable;->COUICardView_contentPaddingBottom:I

    invoke-virtual {v1, v5, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 255
    cmpl-float v4, v14, v3

    if-lez v4, :cond_2

    .line 256
    move v3, v14

    .line 258
    .end local v3    # "maxElevation":F
    .local v16, "maxElevation":F
    :cond_2
    move/from16 v16, v3

    sget v3, Lcoui/support/appcompat/R$styleable;->COUICardView_android_minWidth:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mUserSetMinWidth:I

    .line 259
    sget v3, Lcoui/support/appcompat/R$styleable;->COUICardView_android_minHeight:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mUserSetMinHeight:I

    .line 260
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 262
    sget-object v3, Lcom/coui/appcompat/widget/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/widget/cardview/CardViewImpl;

    iget-object v4, v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    move-object/from16 v5, p1

    move v7, v13

    move v8, v14

    move/from16 v9, v16

    invoke-interface/range {v3 .. v9}, Lcom/coui/appcompat/widget/cardview/CardViewImpl;->initialize(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V

    .line 264
    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 2

    .line 302
    sget-object v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/widget/cardview/CardViewImpl;

    iget-object v1, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    invoke-interface {v0, v1}, Lcom/coui/appcompat/widget/cardview/CardViewImpl;->getBackgroundColor(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getCardElevation()F
    .locals 2

    .line 378
    sget-object v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/widget/cardview/CardViewImpl;

    iget-object v1, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    invoke-interface {v0, v1}, Lcom/coui/appcompat/widget/cardview/CardViewImpl;->getElevation(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .locals 2

    .line 401
    sget-object v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/widget/cardview/CardViewImpl;

    iget-object v1, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    invoke-interface {v0, v1}, Lcom/coui/appcompat/widget/cardview/CardViewImpl;->getMaxElevation(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    .line 412
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mPreventCornerOverlap:Z

    return v0
.end method

.method public getRadius()F
    .locals 2

    .line 358
    sget-object v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/widget/cardview/CardViewImpl;

    iget-object v1, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    invoke-interface {v0, v1}, Lcom/coui/appcompat/widget/cardview/CardViewImpl;->getRadius(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mCompatPadding:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 190
    sget-object v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/widget/cardview/CardViewImpl;

    instance-of v0, v0, Lcom/coui/appcompat/widget/cardview/CardViewApi21Impl;

    if-nez v0, :cond_2

    .line 191
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 192
    .local v0, "widthMode":I
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    sget-object v3, Lcom/coui/appcompat/widget/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/widget/cardview/CardViewImpl;

    iget-object v4, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    invoke-interface {v3, v4}, Lcom/coui/appcompat/widget/cardview/CardViewImpl;->getMinWidth(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 196
    .local v3, "minWidth":I
    nop

    .line 197
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 196
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 198
    nop

    .line 204
    .end local v3    # "minWidth":I
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 205
    .local v3, "heightMode":I
    if-eq v3, v2, :cond_1

    if-eq v3, v1, :cond_1

    goto :goto_1

    .line 208
    :cond_1
    sget-object v1, Lcom/coui/appcompat/widget/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/widget/cardview/CardViewImpl;

    iget-object v2, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    invoke-interface {v1, v2}, Lcom/coui/appcompat/widget/cardview/CardViewImpl;->getMinHeight(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 209
    .local v1, "minHeight":I
    nop

    .line 210
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 209
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 211
    nop

    .line 216
    .end local v1    # "minHeight":I
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 217
    .end local v0    # "widthMode":I
    .end local v3    # "heightMode":I
    goto :goto_2

    .line 218
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 220
    :goto_2
    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 3
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 284
    sget-object v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/widget/cardview/CardViewImpl;

    iget-object v1, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/coui/appcompat/widget/cardview/CardViewImpl;->setBackgroundColor(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;Landroid/content/res/ColorStateList;)V

    .line 285
    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "color"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 293
    sget-object v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/widget/cardview/CardViewImpl;

    iget-object v1, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Lcom/coui/appcompat/widget/cardview/CardViewImpl;->setBackgroundColor(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;Landroid/content/res/ColorStateList;)V

    .line 294
    return-void
.end method

.method public setCardElevation(F)V
    .locals 2
    .param p1, "elevation"    # F

    .line 368
    sget-object v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/widget/cardview/CardViewImpl;

    iget-object v1, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Lcom/coui/appcompat/widget/cardview/CardViewImpl;->setElevation(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;F)V

    .line 369
    return-void
.end method

.method public setContentPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 184
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 185
    sget-object v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/widget/cardview/CardViewImpl;

    iget-object v1, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    invoke-interface {v0, v1}, Lcom/coui/appcompat/widget/cardview/CardViewImpl;->updatePadding(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)V

    .line 186
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 2
    .param p1, "maxElevation"    # F

    .line 391
    sget-object v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/widget/cardview/CardViewImpl;

    iget-object v1, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Lcom/coui/appcompat/widget/cardview/CardViewImpl;->setMaxElevation(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;F)V

    .line 392
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0
    .param p1, "minHeight"    # I

    .line 274
    iput p1, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mUserSetMinHeight:I

    .line 275
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 276
    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0
    .param p1, "minWidth"    # I

    .line 268
    iput p1, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mUserSetMinWidth:I

    .line 269
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 270
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 133
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 138
    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 2
    .param p1, "preventCornerOverlap"    # Z

    .line 428
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mPreventCornerOverlap:Z

    if-eq p1, v0, :cond_0

    .line 429
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mPreventCornerOverlap:Z

    .line 430
    sget-object v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/widget/cardview/CardViewImpl;

    iget-object v1, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    invoke-interface {v0, v1}, Lcom/coui/appcompat/widget/cardview/CardViewImpl;->onPreventCornerOverlapChanged(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)V

    .line 432
    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 2
    .param p1, "radius"    # F

    .line 348
    sget-object v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/widget/cardview/CardViewImpl;

    iget-object v1, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Lcom/coui/appcompat/widget/cardview/CardViewImpl;->setRadius(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;F)V

    .line 349
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 2
    .param p1, "useCompatPadding"    # Z

    .line 166
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mCompatPadding:Z

    if-eq v0, p1, :cond_0

    .line 167
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mCompatPadding:Z

    .line 168
    sget-object v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/widget/cardview/CardViewImpl;

    iget-object v1, p0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    invoke-interface {v0, v1}, Lcom/coui/appcompat/widget/cardview/CardViewImpl;->onCompatPaddingChanged(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)V

    .line 170
    :cond_0
    return-void
.end method
