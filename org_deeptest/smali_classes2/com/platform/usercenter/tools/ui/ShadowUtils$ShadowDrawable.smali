.class public Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;
.super Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;
.source "ShadowUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/platform/usercenter/tools/ui/ShadowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShadowDrawable"
.end annotation


# static fields
.field private static final COS_45:D


# instance fields
.field private isCircle:Z

.field private mAddPaddingForCorners:Z

.field private mContentBounds:Landroid/graphics/RectF;

.field private mCornerRadius:F

.field private mCornerShadowPaint:Landroid/graphics/Paint;

.field private mCornerShadowPath:Landroid/graphics/Path;

.field private mDirty:Z

.field private mEdgeShadowPaint:Landroid/graphics/Paint;

.field private mMaxShadowSize:F

.field private mRawMaxShadowSize:F

.field private mRawShadowSize:F

.field private mRotation:F

.field private mShadowBottomScale:F

.field private final mShadowEndColor:I

.field private mShadowHorizScale:F

.field private mShadowMultiplier:F

.field private mShadowSize:F

.field private final mShadowStartColor:I

.field private mShadowTopScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 179
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->COS_45:D

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;FFFIZ)V
    .locals 4
    .param p1, "content"    # Landroid/graphics/drawable/Drawable;
    .param p2, "radius"    # F
    .param p3, "shadowSize"    # F
    .param p4, "maxShadowSize"    # F
    .param p5, "shadowColor"    # I
    .param p6, "isCircle"    # Z

    .line 219
    invoke-direct {p0, p1}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 181
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowMultiplier:F

    .line 183
    iput v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowTopScale:F

    .line 184
    iput v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowHorizScale:F

    .line 185
    iput v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowBottomScale:F

    .line 206
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mDirty:Z

    .line 211
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mAddPaddingForCorners:Z

    .line 220
    iput p5, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowStartColor:I

    .line 221
    iget v2, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowStartColor:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    iput v2, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowEndColor:I

    .line 222
    iput-boolean p6, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->isCircle:Z

    .line 223
    if-eqz p6, :cond_0

    .line 224
    iput v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowMultiplier:F

    .line 225
    iput v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowTopScale:F

    .line 226
    iput v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowHorizScale:F

    .line 227
    iput v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowBottomScale:F

    .line 230
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 231
    iget-object v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 232
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    .line 233
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    .line 234
    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 235
    iget-object v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 236
    invoke-virtual {p0, p3, p4}, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->setShadowSize(FF)V

    .line 237
    return-void
.end method

.method private buildComponents(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 498
    iget-boolean v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->isCircle:Z

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    .line 501
    :cond_0
    iget v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    iget v1, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowMultiplier:F

    mul-float/2addr v0, v1

    .line 502
    .local v0, "verticalOffset":F
    iget-object v1, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    sub-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 505
    invoke-virtual {p0}, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 507
    invoke-direct {p0}, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->buildShadowCorners()V

    .line 508
    return-void
.end method

.method private buildShadowCorners()V
    .locals 19

    .line 428
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->isCircle:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/high16 v6, 0x43340000    # 180.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v1, :cond_2

    .line 429
    iget-object v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v1, v9

    sub-float/2addr v1, v2

    .line 430
    .local v1, "size":F
    new-instance v9, Landroid/graphics/RectF;

    neg-float v10, v1

    neg-float v11, v1

    invoke-direct {v9, v10, v11, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 431
    .local v9, "innerBounds":Landroid/graphics/RectF;
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 432
    .local v10, "outerBounds":Landroid/graphics/RectF;
    iget v11, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowSize:F

    neg-float v11, v11

    iget v12, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowSize:F

    neg-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->inset(FF)V

    .line 434
    iget-object v11, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    if-nez v11, :cond_0

    .line 435
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    iput-object v11, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    goto :goto_0

    .line 437
    :cond_0
    iget-object v11, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    .line 439
    :goto_0
    iget-object v11, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    sget-object v12, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v11, v12}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 440
    iget-object v11, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    neg-float v12, v1

    invoke-virtual {v11, v12, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 441
    iget-object v11, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget v12, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowSize:F

    neg-float v12, v12

    invoke-virtual {v11, v12, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 443
    iget-object v11, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v11, v10, v6, v6, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 444
    iget-object v11, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v11, v10, v7, v6, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 446
    iget-object v11, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v11, v9, v6, v6, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 447
    iget-object v11, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v11, v9, v7, v6, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 448
    iget-object v6, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 450
    iget v6, v10, Landroid/graphics/RectF;->top:F

    neg-float v6, v6

    .line 451
    .local v6, "shadowRadius":F
    cmpl-float v11, v6, v7

    if-lez v11, :cond_1

    .line 452
    div-float v18, v1, v6

    .line 453
    .local v18, "startRatio":F
    iget-object v15, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/RadialGradient;

    const/4 v12, 0x0

    new-array v11, v5, [I

    aput v8, v11, v8

    iget v13, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowStartColor:I

    aput v13, v11, v4

    iget v13, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowEndColor:I

    aput v13, v11, v3

    new-array v5, v5, [F

    aput v7, v5, v8

    aput v18, v5, v4

    aput v2, v5, v3

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v11

    move-object v11, v14

    const/4 v3, 0x0

    move v13, v3

    move-object v3, v14

    move v14, v6

    move-object v4, v15

    move-object v15, v2

    move-object/from16 v16, v5

    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 457
    .end local v18    # "startRatio":F
    :cond_1
    return-void

    .line 460
    .end local v1    # "size":F
    .end local v6    # "shadowRadius":F
    .end local v9    # "innerBounds":Landroid/graphics/RectF;
    .end local v10    # "outerBounds":Landroid/graphics/RectF;
    :cond_2
    new-instance v1, Landroid/graphics/RectF;

    iget v9, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    neg-float v9, v9

    iget v10, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    neg-float v10, v10

    iget v11, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    iget v12, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    invoke-direct {v1, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 461
    .local v1, "innerBounds":Landroid/graphics/RectF;
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 462
    .local v9, "outerBounds":Landroid/graphics/RectF;
    iget v10, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowSize:F

    neg-float v10, v10

    iget v11, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowSize:F

    neg-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/RectF;->inset(FF)V

    .line 464
    iget-object v10, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    if-nez v10, :cond_3

    .line 465
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    iput-object v10, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    goto :goto_1

    .line 467
    :cond_3
    iget-object v10, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 469
    :goto_1
    iget-object v10, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    sget-object v11, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v10, v11}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 470
    iget-object v10, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget v11, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    neg-float v11, v11

    invoke-virtual {v10, v11, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 471
    iget-object v10, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget v11, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowSize:F

    neg-float v11, v11

    invoke-virtual {v10, v11, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 473
    iget-object v10, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v11, 0x42b40000    # 90.0f

    invoke-virtual {v10, v9, v6, v11, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 475
    iget-object v6, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v10, 0x43870000    # 270.0f

    const/high16 v11, -0x3d4c0000    # -90.0f

    invoke-virtual {v6, v1, v10, v11, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 476
    iget-object v6, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 478
    iget v6, v9, Landroid/graphics/RectF;->top:F

    neg-float v6, v6

    .line 479
    .restart local v6    # "shadowRadius":F
    cmpl-float v10, v6, v7

    if-lez v10, :cond_4

    .line 480
    iget v10, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    div-float v17, v10, v6

    .line 481
    .local v17, "startRatio":F
    iget-object v15, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/RadialGradient;

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-array v13, v5, [I

    aput v8, v13, v8

    iget v10, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowStartColor:I

    aput v10, v13, v4

    iget v10, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowEndColor:I

    aput v10, v13, v3

    new-array v5, v5, [F

    aput v7, v5, v8

    aput v17, v5, v4

    aput v2, v5, v3

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v10, v14

    move-object v2, v13

    move v13, v6

    move-object v3, v14

    move-object v14, v2

    move-object v2, v15

    move-object v15, v5

    invoke-direct/range {v10 .. v16}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 489
    .end local v17    # "startRatio":F
    :cond_4
    iget-object v2, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/LinearGradient;

    const/4 v11, 0x0

    iget v12, v1, Landroid/graphics/RectF;->top:F

    const/4 v13, 0x0

    iget v14, v9, Landroid/graphics/RectF;->top:F

    iget v15, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowStartColor:I

    iget v4, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowEndColor:I

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v10, v3

    move/from16 v16, v4

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 491
    iget-object v2, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 492
    return-void
.end method

.method private static calculateHorizontalPadding(FFZ)F
    .locals 6
    .param p0, "maxShadowSize"    # F
    .param p1, "cornerRadius"    # F
    .param p2, "addPaddingForCorners"    # Z

    .line 305
    if-eqz p2, :cond_0

    .line 306
    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    .line 308
    :cond_0
    return p0
.end method

.method private calculateVerticalPadding(FFZ)F
    .locals 6
    .param p1, "maxShadowSize"    # F
    .param p2, "cornerRadius"    # F
    .param p3, "addPaddingForCorners"    # Z

    .line 296
    if-eqz p3, :cond_0

    .line 297
    iget v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowMultiplier:F

    mul-float/2addr v0, p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double v4, p2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    .line 299
    :cond_0
    iget v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowMultiplier:F

    mul-float/2addr v0, p1

    return v0
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 346
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-boolean v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->isCircle:Z

    if-eqz v1, :cond_0

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 348
    .local v1, "saved":I
    iget-object v2, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 349
    iget-object v2, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 350
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 351
    return-void

    .line 354
    .end local v1    # "saved":I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 355
    .local v8, "rotateSaved":I
    iget v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRotation:F

    iget-object v2, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v7, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 357
    iget v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    neg-float v1, v1

    iget v2, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowSize:F

    sub-float v9, v1, v2

    .line 358
    .local v9, "edgeShadowTop":F
    iget v10, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    .line 359
    .local v10, "shadowOffset":F
    iget-object v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v2, v10, v11

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    move v12, v1

    .line 360
    .local v12, "drawHorizontalEdges":Z
    iget-object v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v5, v10, v11

    sub-float/2addr v1, v5

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    move v3, v4

    nop

    :cond_2
    move v13, v3

    .line 362
    .local v13, "drawVerticalEdges":Z
    iget v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawShadowSize:F

    iget v3, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawShadowSize:F

    iget v4, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowTopScale:F

    mul-float/2addr v3, v4

    sub-float v14, v1, v3

    .line 363
    .local v14, "shadowOffsetTop":F
    iget v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawShadowSize:F

    iget v3, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawShadowSize:F

    iget v4, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowHorizScale:F

    mul-float/2addr v3, v4

    sub-float v15, v1, v3

    .line 364
    .local v15, "shadowOffsetHorizontal":F
    iget v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawShadowSize:F

    iget v3, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawShadowSize:F

    iget v4, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowBottomScale:F

    mul-float/2addr v3, v4

    sub-float v16, v1, v3

    .line 366
    .local v16, "shadowOffsetBottom":F
    cmpl-float v1, v10, v2

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v1, :cond_3

    move v1, v6

    goto :goto_1

    :cond_3
    add-float v1, v10, v15

    div-float v1, v10, v1

    :goto_1
    move v5, v1

    .line 367
    .local v5, "shadowScaleHorizontal":F
    cmpl-float v1, v10, v2

    if-nez v1, :cond_4

    move v1, v6

    goto :goto_2

    :cond_4
    add-float v1, v10, v14

    div-float v1, v10, v1

    :goto_2
    move v4, v1

    .line 368
    .local v4, "shadowScaleTop":F
    cmpl-float v1, v10, v2

    if-nez v1, :cond_5

    move v1, v6

    goto :goto_3

    :cond_5
    add-float v1, v10, v16

    div-float v1, v10, v1

    :goto_3
    move v3, v1

    .line 371
    .local v3, "shadowScaleBottom":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 372
    .local v2, "saved":I
    iget-object v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v10

    iget-object v11, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v11, v10

    invoke-virtual {v7, v1, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 373
    invoke-virtual {v7, v5, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 374
    iget-object v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v11, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 375
    if-eqz v12, :cond_6

    .line 377
    div-float v1, v6, v5

    invoke-virtual {v7, v1, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 378
    const/4 v11, 0x0

    iget-object v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    .line 379
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v18, v10, v17

    sub-float v18, v1, v18

    iget v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    neg-float v1, v1

    iget-object v6, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 378
    move/from16 v19, v1

    move-object/from16 v1, p1

    move/from16 v20, v14

    move v14, v2

    .end local v2    # "saved":I
    .local v14, "saved":I
    .local v20, "shadowOffsetTop":F
    move v2, v11

    move v11, v3

    .end local v3    # "shadowScaleBottom":F
    .local v11, "shadowScaleBottom":F
    move v3, v9

    move/from16 v21, v4

    .end local v4    # "shadowScaleTop":F
    .local v21, "shadowScaleTop":F
    move/from16 v4, v18

    move/from16 v22, v5

    .end local v5    # "shadowScaleHorizontal":F
    .local v22, "shadowScaleHorizontal":F
    move/from16 v5, v19

    move/from16 v23, v15

    const/high16 v15, 0x3f800000    # 1.0f

    .end local v15    # "shadowOffsetHorizontal":F
    .local v23, "shadowOffsetHorizontal":F
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 382
    .end local v11    # "shadowScaleBottom":F
    .end local v20    # "shadowOffsetTop":F
    .end local v21    # "shadowScaleTop":F
    .end local v22    # "shadowScaleHorizontal":F
    .end local v23    # "shadowOffsetHorizontal":F
    .restart local v2    # "saved":I
    .restart local v3    # "shadowScaleBottom":F
    .restart local v4    # "shadowScaleTop":F
    .restart local v5    # "shadowScaleHorizontal":F
    .local v14, "shadowOffsetTop":F
    .restart local v15    # "shadowOffsetHorizontal":F
    :cond_6
    move v11, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v20, v14

    move/from16 v23, v15

    move v14, v2

    move v15, v6

    .end local v2    # "saved":I
    .end local v3    # "shadowScaleBottom":F
    .end local v4    # "shadowScaleTop":F
    .end local v5    # "shadowScaleHorizontal":F
    .end local v15    # "shadowOffsetHorizontal":F
    .restart local v11    # "shadowScaleBottom":F
    .local v14, "saved":I
    .restart local v20    # "shadowOffsetTop":F
    .restart local v21    # "shadowScaleTop":F
    .restart local v22    # "shadowScaleHorizontal":F
    .restart local v23    # "shadowOffsetHorizontal":F
    :goto_4
    invoke-virtual {v7, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v14

    .line 385
    iget-object v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v10

    iget-object v2, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v10

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 386
    move/from16 v6, v22

    .end local v22    # "shadowScaleHorizontal":F
    .local v6, "shadowScaleHorizontal":F
    invoke-virtual {v7, v6, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 387
    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 388
    iget-object v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 389
    if-eqz v12, :cond_7

    .line 391
    div-float v1, v15, v6

    invoke-virtual {v7, v1, v15}, Landroid/graphics/Canvas;->scale(FF)V

    .line 392
    const/4 v2, 0x0

    iget-object v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    .line 393
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v10, v3

    sub-float v4, v1, v4

    iget v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    neg-float v5, v1

    iget-object v3, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 392
    move-object/from16 v1, p1

    move-object/from16 v18, v3

    move v3, v9

    move v15, v6

    .end local v6    # "shadowScaleHorizontal":F
    .local v15, "shadowScaleHorizontal":F
    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 396
    .end local v15    # "shadowScaleHorizontal":F
    .restart local v6    # "shadowScaleHorizontal":F
    :cond_7
    move v15, v6

    .end local v6    # "shadowScaleHorizontal":F
    .restart local v15    # "shadowScaleHorizontal":F
    :goto_5
    invoke-virtual {v7, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 398
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v14

    .line 399
    iget-object v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v10

    iget-object v2, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v10

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 400
    invoke-virtual {v7, v15, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 401
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 402
    iget-object v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 403
    if-eqz v13, :cond_8

    .line 405
    const/high16 v1, 0x3f800000    # 1.0f

    div-float v6, v1, v11

    invoke-virtual {v7, v6, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 406
    const/4 v2, 0x0

    iget-object v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    .line 407
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v10, v3

    sub-float v4, v1, v4

    iget v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    neg-float v5, v1

    iget-object v6, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 406
    move-object/from16 v1, p1

    move v3, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 409
    :cond_8
    invoke-virtual {v7, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 411
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v14

    .line 412
    iget-object v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v10

    iget-object v2, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v10

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 413
    move/from16 v6, v21

    .end local v21    # "shadowScaleTop":F
    .local v6, "shadowScaleTop":F
    invoke-virtual {v7, v15, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 414
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 415
    iget-object v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 416
    if-eqz v13, :cond_9

    .line 418
    const/high16 v1, 0x3f800000    # 1.0f

    div-float v2, v1, v6

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 419
    const/4 v2, 0x0

    iget-object v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mContentBounds:Landroid/graphics/RectF;

    .line 420
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v10

    sub-float v4, v1, v3

    iget v1, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    neg-float v5, v1

    iget-object v3, v0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 419
    move-object/from16 v1, p1

    move-object/from16 v17, v3

    move v3, v9

    move/from16 v18, v6

    .end local v6    # "shadowScaleTop":F
    .local v18, "shadowScaleTop":F
    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 422
    .end local v18    # "shadowScaleTop":F
    .restart local v6    # "shadowScaleTop":F
    :cond_9
    move/from16 v18, v6

    .end local v6    # "shadowScaleTop":F
    .restart local v18    # "shadowScaleTop":F
    :goto_6
    invoke-virtual {v7, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 424
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 425
    return-void
.end method

.method private static toEven(F)I
    .locals 3
    .param p0, "value"    # F

    .line 243
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 244
    .local v0, "i":I
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 329
    iget-boolean v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mDirty:Z

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->buildComponents(Landroid/graphics/Rect;)V

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mDirty:Z

    .line 333
    :cond_0
    invoke-direct {p0, p1}, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->drawShadow(Landroid/graphics/Canvas;)V

    .line 335
    invoke-super {p0, p1}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 336
    return-void
.end method

.method public bridge synthetic getChangingConfigurations()I
    .locals 1

    .line 177
    invoke-super {p0}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getCornerRadius()F
    .locals 1

    .line 511
    iget v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    return v0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 177
    invoke-super {p0}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIntrinsicHeight()I
    .locals 1

    .line 177
    invoke-super {p0}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getIntrinsicWidth()I
    .locals 1

    .line 177
    invoke-super {p0}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMaxShadowSize()F
    .locals 1

    .line 527
    iget v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    return v0
.end method

.method public getMinHeight()F
    .locals 4

    .line 537
    iget v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    iget v1, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    iget v2, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    iget v3, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowMultiplier:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v3

    .line 539
    .local v0, "content":F
    iget v1, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    iget v2, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowMultiplier:F

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v1, v0

    return v1
.end method

.method public getMinWidth()F
    .locals 4

    .line 531
    iget v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    iget v1, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    iget v2, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 532
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v3

    .line 533
    .local v0, "content":F
    iget v1, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    mul-float/2addr v1, v3

    add-float/2addr v1, v0

    return v1
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 1

    .line 177
    invoke-super {p0}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 1

    .line 177
    invoke-super {p0}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 314
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 286
    iget v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    iget v1, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    iget-boolean v2, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mAddPaddingForCorners:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->calculateVerticalPadding(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 288
    .local v0, "vOffset":I
    iget v1, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    iget v2, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    iget-boolean v3, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mAddPaddingForCorners:Z

    invoke-static {v1, v2, v3}, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->calculateHorizontalPadding(FFZ)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 290
    .local v1, "hOffset":I
    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 291
    const/4 v2, 0x1

    return v2
.end method

.method public getShadowSize()F
    .locals 1

    .line 523
    iget v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawShadowSize:F

    return v0
.end method

.method public bridge synthetic getState()[I
    .locals 1

    .line 177
    invoke-super {p0}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .line 177
    invoke-super {p0}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWrappedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 177
    invoke-super {p0}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 177
    invoke-super {p0, p1}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic isAutoMirrored()Z
    .locals 1

    .line 177
    invoke-super {p0}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isStateful()Z
    .locals 1

    .line 177
    invoke-super {p0}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->isStateful()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic jumpToCurrentState()V
    .locals 0

    .line 177
    invoke-super {p0}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->jumpToCurrentState()V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mDirty:Z

    .line 262
    return-void
.end method

.method public bridge synthetic scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAddPaddingForCorners(Z)V
    .locals 0
    .param p1, "addPaddingForCorners"    # Z

    .line 248
    iput-boolean p1, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mAddPaddingForCorners:Z

    .line 249
    invoke-virtual {p0}, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->invalidateSelf()V

    .line 250
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 254
    invoke-super {p0, p1}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->setAlpha(I)V

    .line 255
    iget-object v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 256
    iget-object v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 257
    return-void
.end method

.method public bridge synthetic setAutoMirrored(Z)V
    .locals 0

    .line 177
    invoke-super {p0, p1}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->setAutoMirrored(Z)V

    return-void
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .locals 0

    .line 177
    invoke-super {p0, p1}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->setChangingConfigurations(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 177
    invoke-super {p0, p1}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .line 318
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float p1, v0

    .line 319
    iget v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 320
    return-void

    .line 322
    :cond_0
    iput p1, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mCornerRadius:F

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mDirty:Z

    .line 324
    invoke-virtual {p0}, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->invalidateSelf()V

    .line 325
    return-void
.end method

.method public bridge synthetic setDither(Z)V
    .locals 0

    .line 177
    invoke-super {p0, p1}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->setDither(Z)V

    return-void
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .locals 0

    .line 177
    invoke-super {p0, p1}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->setFilterBitmap(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 0

    .line 177
    invoke-super {p0, p1, p2}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->setHotspotBounds(IIII)V

    return-void
.end method

.method public setMaxShadowSize(F)V
    .locals 1
    .param p1, "size"    # F

    .line 519
    iget v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawShadowSize:F

    invoke-virtual {p0, v0, p1}, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->setShadowSize(FF)V

    .line 520
    return-void
.end method

.method final setRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .line 339
    iget v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRotation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 340
    iput p1, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRotation:F

    .line 341
    invoke-virtual {p0}, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->invalidateSelf()V

    .line 343
    :cond_0
    return-void
.end method

.method public setShadowSize(F)V
    .locals 1
    .param p1, "size"    # F

    .line 515
    iget v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    invoke-virtual {p0, p1, v0}, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->setShadowSize(FF)V

    .line 516
    return-void
.end method

.method setShadowSize(FF)V
    .locals 2
    .param p1, "shadowSize"    # F
    .param p2, "maxShadowSize"    # F

    .line 265
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_2

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_2

    .line 268
    invoke-static {p1}, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->toEven(F)I

    move-result v0

    int-to-float p1, v0

    .line 269
    invoke-static {p2}, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->toEven(F)I

    move-result v0

    int-to-float p2, v0

    .line 270
    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    .line 271
    move p1, p2

    .line 273
    :cond_0
    iget v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawShadowSize:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    .line 274
    return-void

    .line 276
    :cond_1
    iput p1, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawShadowSize:F

    .line 277
    iput p2, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mRawMaxShadowSize:F

    .line 278
    iget v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowMultiplier:F

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mShadowSize:F

    .line 279
    iput p2, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mMaxShadowSize:F

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->mDirty:Z

    .line 281
    invoke-virtual {p0}, Lcom/platform/usercenter/tools/ui/ShadowUtils$ShadowDrawable;->invalidateSelf()V

    .line 282
    return-void

    .line 266
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid shadow size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setState([I)Z
    .locals 0

    .line 177
    invoke-super {p0, p1}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->setState([I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setTint(I)V
    .locals 0

    .line 177
    invoke-super {p0, p1}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->setTint(I)V

    return-void
.end method

.method public bridge synthetic setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 177
    invoke-super {p0, p1}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 177
    invoke-super {p0, p1}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public bridge synthetic setVisible(ZZ)Z
    .locals 0

    .line 177
    invoke-super {p0, p1, p2}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 177
    invoke-super {p0, p1}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 177
    invoke-super {p0, p1, p2}, Lcom/platform/usercenter/tools/ui/ShadowUtils$DrawableWrapper;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method
