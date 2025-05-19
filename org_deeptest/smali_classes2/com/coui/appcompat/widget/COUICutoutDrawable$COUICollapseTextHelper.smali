.class public final Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;
.super Ljava/lang/Object;
.source "COUICutoutDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUICutoutDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "COUICollapseTextHelper"
.end annotation


# static fields
.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

.field private static final SCALE_MY:F = 1.3f

.field private static final TAG:Ljava/lang/String; = "COUICollapseTextHelper"

.field private static final USE_SCALING_TEXTURE:Z


# instance fields
.field private mBoundsChanged:Z

.field private final mCollapsedBounds:Landroid/graphics/Rect;

.field private mCollapsedDrawX:F

.field private mCollapsedDrawY:F

.field private mCollapsedTextColor:Landroid/content/res/ColorStateList;

.field private mCollapsedTextGravity:I

.field private mCollapsedTextSize:F

.field private final mCurrentBounds:Landroid/graphics/RectF;

.field private mCurrentDrawX:F

.field private mCurrentDrawY:F

.field private mCurrentTextSize:F

.field private mDrawTitle:Z

.field private final mExpandedBounds:Landroid/graphics/Rect;

.field private mExpandedDrawX:F

.field private mExpandedDrawY:F

.field private mExpandedFraction:F

.field private mExpandedTextColor:Landroid/content/res/ColorStateList;

.field private mExpandedTextGravity:I

.field private mExpandedTextSize:F

.field private mExpandedTitleTexture:Landroid/graphics/Bitmap;

.field private mIsRtl:Z

.field private mPositionInterpolator:Landroid/view/animation/Interpolator;

.field private mScale:F

.field private mState:[I

.field private mText:Ljava/lang/CharSequence;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTextSizeInterpolator:Landroid/view/animation/Interpolator;

.field private mTextToDraw:Ljava/lang/CharSequence;

.field private mTextureAscent:F

.field private mTextureDescent:F

.field private mTexturePaint:Landroid/graphics/Paint;

.field private final mTmpPaint:Landroid/text/TextPaint;

.field private mUseTexture:Z

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->USE_SCALING_TEXTURE:Z

    .line 204
    const/4 v0, 0x0

    sput-object v0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    .line 205
    sget-object v0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 206
    sget-object v0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 207
    sget-object v0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const/16 v0, 0x10

    iput v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextGravity:I

    .line 220
    iput v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextGravity:I

    .line 221
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextSize:F

    .line 222
    iput v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextSize:F

    .line 262
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mView:Landroid/view/View;

    .line 264
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 265
    new-instance v0, Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    .line 267
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    .line 268
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    .line 269
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    .line 270
    return-void
.end method

.method private static blendColors(IIF)I
    .locals 9
    .param p0, "color1"    # I
    .param p1, "color2"    # I
    .param p2, "ratio"    # F

    .line 920
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 921
    .local v0, "inverseRatio":F
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 922
    .local v1, "a":F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 923
    .local v2, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 924
    .local v3, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    .line 925
    .local v4, "b":F
    float-to-int v5, v1

    float-to-int v6, v2

    float-to-int v7, v3

    float-to-int v8, v4

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    return v5
.end method

.method private calculateBaseOffsets()V
    .locals 13

    .line 623
    iget v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentTextSize:F

    .line 626
    .local v0, "currentTextSize":F
    iget v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextSize:F

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->calculateUsingTextSize(F)V

    .line 627
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 628
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v1, v4, v3, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 629
    .local v1, "width":F
    :goto_0
    iget v4, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextGravity:I

    iget-boolean v5, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mIsRtl:Z

    invoke-static {v4, v5}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    .line 631
    .local v4, "collapsedAbsGravity":I
    and-int/lit8 v5, v4, 0x70

    const/16 v6, 0x50

    const/16 v7, 0x30

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_1

    .line 644
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iget-object v9, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    .line 645
    .local v5, "textHeight":F
    div-float v9, v5, v8

    iget-object v10, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->descent()F

    move-result v10

    sub-float/2addr v9, v10

    .line 646
    .local v9, "textOffset":F
    iget-object v10, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v9

    iput v10, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedDrawY:F

    goto :goto_1

    .line 633
    .end local v5    # "textHeight":F
    .end local v9    # "textOffset":F
    :cond_1
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iput v5, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedDrawY:F

    .line 634
    goto :goto_1

    .line 636
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v9, "my"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 637
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v9, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    const v10, 0x3fa66666    # 1.3f

    mul-float/2addr v9, v10

    sub-float/2addr v5, v9

    iput v5, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedDrawY:F

    goto :goto_1

    .line 639
    :cond_3
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v9, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    iput v5, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedDrawY:F

    .line 641
    nop

    .line 649
    :goto_1
    const v5, 0x800007

    and-int v9, v4, v5

    const/4 v10, 0x5

    const/4 v11, 0x1

    if-eq v9, v11, :cond_5

    if-eq v9, v10, :cond_4

    .line 658
    iget-object v9, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iput v9, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedDrawX:F

    goto :goto_2

    .line 654
    :cond_4
    iget-object v9, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v9, v1

    iput v9, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedDrawX:F

    .line 655
    goto :goto_2

    .line 651
    :cond_5
    iget-object v9, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    div-float v12, v1, v8

    sub-float/2addr v9, v12

    iput v9, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedDrawX:F

    .line 652
    nop

    .line 662
    :goto_2
    iget v9, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextSize:F

    invoke-direct {p0, v9}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->calculateUsingTextSize(F)V

    .line 663
    iget-object v9, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v9, :cond_6

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v9, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v12, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 664
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-virtual {v2, v9, v3, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    nop

    :cond_6
    move v1, v2

    .line 665
    iget v2, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextGravity:I

    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mIsRtl:Z

    invoke-static {v2, v3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    .line 667
    .local v2, "expandedAbsGravity":I
    and-int/lit8 v3, v2, 0x70

    if-eq v3, v7, :cond_8

    if-eq v3, v6, :cond_7

    .line 676
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v3, v6

    .line 677
    .local v3, "textHeight":F
    div-float v6, v3, v8

    iget-object v7, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    sub-float/2addr v6, v7

    .line 678
    .local v6, "textOffset":F
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    iput v7, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedDrawY:F

    goto :goto_3

    .line 669
    .end local v3    # "textHeight":F
    .end local v6    # "textOffset":F
    :cond_7
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iput v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedDrawY:F

    .line 670
    goto :goto_3

    .line 672
    :cond_8
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v3, v6

    iput v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedDrawY:F

    .line 673
    nop

    .line 681
    :goto_3
    and-int v3, v2, v5

    if-eq v3, v11, :cond_a

    if-eq v3, v10, :cond_9

    .line 690
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iput v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedDrawX:F

    goto :goto_4

    .line 686
    :cond_9
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedDrawX:F

    .line 687
    goto :goto_4

    .line 683
    :cond_a
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    div-float v5, v1, v8

    sub-float/2addr v3, v5

    iput v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedDrawX:F

    .line 684
    nop

    .line 695
    :goto_4
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->clearTexture()V

    .line 697
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setInterpolatedTextSize(F)V

    .line 698
    return-void
.end method

.method private calculateCurrentOffsets()V
    .locals 1

    .line 575
    iget v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedFraction:F

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->calculateOffsets(F)V

    .line 576
    return-void
.end method

.method private calculateIsRtl(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 756
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->isRtlMode()Z

    move-result v0

    return v0
.end method

.method private calculateOffsets(F)V
    .locals 3
    .param p1, "fraction"    # F

    .line 580
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->interpolateBounds(F)V

    .line 581
    iget v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedDrawX:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedDrawX:F

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentDrawX:F

    .line 583
    iget v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedDrawY:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedDrawY:F

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentDrawY:F

    .line 586
    iget v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextSize:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextSize:F

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextSizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setInterpolatedTextSize(F)V

    .line 589
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    .line 592
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 593
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getCurrentExpandedTextColor()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getCurrentCollapsedTextColor()I

    move-result v2

    .line 592
    invoke-static {v1, v2, p1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->blendColors(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getCurrentCollapsedTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 598
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 599
    return-void
.end method

.method private calculateUsingTextSize(F)V
    .locals 10
    .param p1, "textSize"    # F

    .line 772
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 773
    return-void

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 776
    .local v0, "collapsedWidth":F
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 779
    .local v1, "expandedWidth":F
    const/4 v2, 0x0

    .line 780
    .local v2, "updateDrawText":Z
    iget v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextSize:F

    invoke-static {p1, v3}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->isClose(FF)Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    .line 781
    iget v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextSize:F

    .line 782
    .local v3, "newTextSize":F
    iput v4, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mScale:F

    .line 783
    move v5, v0

    goto :goto_1

    .line 785
    .end local v3    # "newTextSize":F
    :cond_1
    iget v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextSize:F

    .line 786
    .restart local v3    # "newTextSize":F
    iget v5, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextSize:F

    invoke-static {p1, v5}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->isClose(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 788
    iput v4, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mScale:F

    goto :goto_0

    .line 791
    :cond_2
    iget v5, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextSize:F

    div-float v5, p1, v5

    iput v5, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mScale:F

    .line 793
    :goto_0
    iget v5, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextSize:F

    iget v6, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextSize:F

    div-float/2addr v5, v6

    .line 796
    .local v5, "textSizeRatio":F
    mul-float v6, v1, v5

    .line 797
    .local v6, "scaledDownWidth":F
    cmpl-float v7, v6, v0

    if-lez v7, :cond_3

    .line 801
    div-float v7, v0, v5

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 804
    move v5, v7

    goto :goto_1

    :cond_3
    move v5, v1

    .line 808
    .end local v6    # "scaledDownWidth":F
    .local v5, "availableWidth":F
    :goto_1
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lez v6, :cond_6

    .line 809
    iget v6, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentTextSize:F

    cmpl-float v6, v6, v3

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mBoundsChanged:Z

    if-nez v6, :cond_5

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v6, v8

    goto :goto_3

    :cond_5
    :goto_2
    move v6, v7

    :goto_3
    move v2, v6

    .line 810
    iput v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentTextSize:F

    .line 811
    iput-boolean v8, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mBoundsChanged:Z

    .line 813
    :cond_6
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v6, :cond_7

    if-eqz v2, :cond_9

    .line 814
    :cond_7
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v9, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentTextSize:F

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 816
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v9, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mScale:F

    cmpl-float v4, v9, v4

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    move v7, v8

    :goto_4
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 818
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mText:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v6, v5, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 820
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 821
    iput-object v4, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 824
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_9
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->isRtlMode()Z

    move-result v4

    iput-boolean v4, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mIsRtl:Z

    .line 825
    return-void
.end method

.method private clearTexture()V
    .locals 1

    .line 883
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 885
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    .line 887
    :cond_0
    return-void
.end method

.method private constrain(FFF)F
    .locals 1
    .param p1, "amount"    # F
    .param p2, "low"    # F
    .param p3, "high"    # F

    .line 947
    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, p3

    if-lez v0, :cond_1

    move v0, p3

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    return v0
.end method

.method private constrain(III)I
    .locals 1
    .param p1, "amount"    # I
    .param p2, "low"    # I
    .param p3, "high"    # I

    .line 942
    if-ge p1, p2, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    if-le p1, p3, :cond_1

    move v0, p3

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    return v0
.end method

.method private ensureExpandedTexture()V
    .locals 10

    .line 828
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 829
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 832
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->calculateOffsets(F)V

    .line 833
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextureAscent:F

    .line 834
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextureDescent:F

    .line 835
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 836
    .local v0, "w":I
    iget v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextureDescent:F

    iget v2, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextureAscent:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 837
    .local v1, "h":I
    if-lez v0, :cond_3

    if-gtz v1, :cond_1

    goto :goto_0

    .line 840
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    .line 841
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 842
    .local v3, "c":Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x0

    int-to-float v2, v1

    iget-object v8, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->descent()F

    move-result v8

    sub-float v8, v2, v8

    iget-object v9, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 843
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    if-nez v2, :cond_2

    .line 845
    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    .line 847
    :cond_2
    return-void

    .line 838
    .end local v3    # "c":Landroid/graphics/Canvas;
    :cond_3
    :goto_0
    return-void

    .line 830
    .end local v0    # "w":I
    .end local v1    # "h":I
    :cond_4
    :goto_1
    return-void
.end method

.method private getCurrentExpandedTextColor()I
    .locals 3

    .line 602
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mState:[I

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mState:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method private getTextPaintCollapsed(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "textPaint"    # Landroid/text/TextPaint;

    .line 434
    iget v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextSize:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 435
    return-void
.end method

.method private interpolateBounds(F)V
    .locals 4
    .param p1, "fraction"    # F

    .line 701
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 703
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedDrawY:F

    iget v2, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedDrawY:F

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 705
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 707
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 709
    return-void
.end method

.method private static isClose(FF)Z
    .locals 2
    .param p0, "value"    # F
    .param p1, "targetValue"    # F

    .line 894
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRtlMode()Z
    .locals 3

    .line 956
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 957
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 959
    :cond_1
    return v1
.end method

.method private static lerp(FFF)F
    .locals 1
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "fraction"    # F

    .line 952
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private static lerp(FFFLandroid/view/animation/Interpolator;)F
    .locals 1
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "fraction"    # F
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 931
    if-eqz p3, :cond_0

    .line 932
    invoke-interface {p3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    .line 934
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private onBoundsChanged()V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    .line 439
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mDrawTitle:Z

    .line 440
    return-void
.end method

.method private static rectEquals(Landroid/graphics/Rect;IIII)Z
    .locals 1
    .param p0, "r"    # Landroid/graphics/Rect;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 938
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setInterpolatedTextSize(F)V
    .locals 2
    .param p1, "textSize"    # F

    .line 760
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->calculateUsingTextSize(F)V

    .line 762
    sget-boolean v0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->USE_SCALING_TEXTURE:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mUseTexture:Z

    .line 763
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mUseTexture:Z

    if-eqz v0, :cond_1

    .line 765
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->ensureExpandedTexture()V

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 768
    return-void
.end method


# virtual methods
.method public calculateCollapsedTextWidth()F
    .locals 4

    .line 381
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 382
    const/4 v0, 0x0

    return v0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getTextPaintCollapsed(Landroid/text/TextPaint;)V

    .line 385
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 716
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 717
    .local v0, "saveCount":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mDrawTitle:Z

    if-eqz v1, :cond_5

    .line 718
    iget v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentDrawX:F

    .line 719
    .local v1, "x":F
    iget v2, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentDrawY:F

    .line 720
    .local v2, "y":F
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mUseTexture:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v9, v3

    .line 723
    .local v9, "drawTexture":Z
    if-eqz v9, :cond_1

    .line 724
    iget v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextureAscent:F

    iget v4, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mScale:F

    mul-float/2addr v3, v4

    .line 725
    .local v3, "ascent":F
    iget v4, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextureDescent:F

    iget v5, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mScale:F

    mul-float/2addr v4, v5

    .line 728
    .end local v3    # "ascent":F
    .local v4, "descent":F
    .local v10, "ascent":F
    :goto_1
    move v10, v3

    goto :goto_2

    .line 727
    .end local v4    # "descent":F
    .end local v10    # "ascent":F
    :cond_1
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mScale:F

    mul-float/2addr v3, v4

    .line 728
    .restart local v3    # "ascent":F
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mScale:F

    mul-float/2addr v4, v5

    goto :goto_1

    .end local v3    # "ascent":F
    .restart local v4    # "descent":F
    .restart local v10    # "ascent":F
    :goto_2
    move v11, v4

    .line 739
    .end local v4    # "descent":F
    .local v11, "descent":F
    if-eqz v9, :cond_2

    .line 740
    add-float/2addr v2, v10

    .line 742
    .end local v2    # "y":F
    .local v12, "y":F
    :cond_2
    move v12, v2

    iget v2, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 743
    iget v2, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mScale:F

    iget v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mScale:F

    invoke-virtual {p1, v2, v3, v1, v12}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 745
    :cond_3
    if-eqz v9, :cond_4

    .line 747
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 749
    :cond_4
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v8, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v2, p1

    move v6, v1

    move v7, v12

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 752
    .end local v1    # "x":F
    .end local v9    # "drawTexture":Z
    .end local v10    # "ascent":F
    .end local v11    # "descent":F
    .end local v12    # "y":F
    :cond_5
    :goto_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 753
    return-void
.end method

.method public getCollapsedBounds()Landroid/graphics/Rect;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCollapsedTextActualBounds(Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .line 422
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 424
    .local v0, "isRtl":Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 426
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->calculateCollapsedTextWidth()F

    move-result v2

    sub-float/2addr v1, v2

    :goto_0
    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 427
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 428
    if-nez v0, :cond_1

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->calculateCollapsedTextWidth()F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    :goto_1
    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 430
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getCollapsedTextHeight()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 431
    return-void
.end method

.method public getCollapsedTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCollapsedTextGravity()I
    .locals 1

    .line 466
    iget v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextGravity:I

    return v0
.end method

.method public getCollapsedTextHeight()F
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getTextPaintCollapsed(Landroid/text/TextPaint;)V

    .line 395
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "my"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    const v0, 0x3fa66666    # 1.3f

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    neg-float v1, v1

    mul-float/2addr v1, v0

    return v1

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method getCollapsedTextSize()F
    .locals 1

    .line 562
    iget v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextSize:F

    return v0
.end method

.method public getCurrentCollapsedTextColor()I
    .locals 3

    .line 614
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mState:[I

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mState:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getExpandedBounds()Landroid/graphics/Rect;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getExpandedFraction()F
    .locals 1

    .line 506
    iget v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedFraction:F

    return v0
.end method

.method getExpandedTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getExpandedTextGravity()I
    .locals 1

    .line 447
    iget v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextGravity:I

    return v0
.end method

.method getExpandedTextSize()F
    .locals 1

    .line 570
    iget v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextSize:F

    return v0
.end method

.method public getExpansionFraction()F
    .locals 1

    .line 554
    iget v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedFraction:F

    return v0
.end method

.method public getHintHeight()F
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getTextPaintCollapsed(Landroid/text/TextPaint;)V

    .line 409
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    .line 410
    .local v0, "height":F
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "my"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr v1, v0

    return v1

    .line 413
    :cond_0
    return v0
.end method

.method getText()Ljava/lang/CharSequence;
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final isStateful()Z
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    .line 546
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public recalculate()V
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 856
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->calculateBaseOffsets()V

    .line 857
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->calculateCurrentOffsets()V

    .line 859
    :cond_0
    return-void
.end method

.method public setCollapsedBounds(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 368
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mBoundsChanged:Z

    .line 371
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->onBoundsChanged()V

    .line 372
    const-string v0, "COUICollapseTextHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCollapsedBounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    return-void
.end method

.method public setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "collapsedTextSize"    # I
    .param p2, "collapsedTextColor"    # Landroid/content/res/ColorStateList;

    .line 486
    iput-object p2, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    .line 487
    int-to-float v0, p1

    iput v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextSize:F

    .line 488
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    .line 489
    return-void
.end method

.method public setCollapsedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .line 317
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 318
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    .line 319
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    .line 321
    :cond_0
    return-void
.end method

.method public setCollapsedTextGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 474
    iget v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextGravity:I

    if-eq v0, p1, :cond_0

    .line 475
    iput p1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextGravity:I

    .line 476
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    .line 478
    :cond_0
    return-void
.end method

.method public setCollapsedTextSize(F)V
    .locals 1
    .param p1, "textSize"    # F

    .line 306
    iget v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 307
    iput p1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextSize:F

    .line 308
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    .line 310
    :cond_0
    return-void
.end method

.method public setExpandedBounds(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 347
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mBoundsChanged:Z

    .line 350
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->onBoundsChanged()V

    .line 351
    const-string v0, "COUICollapseTextHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExpandedBounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    return-void
.end method

.method public setExpandedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .line 328
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 329
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    .line 330
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    .line 332
    :cond_0
    return-void
.end method

.method public setExpandedTextGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 455
    iget v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextGravity:I

    if-eq v0, p1, :cond_0

    .line 456
    iput p1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextGravity:I

    .line 457
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    .line 459
    :cond_0
    return-void
.end method

.method public setExpandedTextSize(F)V
    .locals 1
    .param p1, "textSize"    # F

    .line 295
    iget v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 296
    iput p1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextSize:F

    .line 297
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    .line 299
    :cond_0
    return-void
.end method

.method public setExpansionFraction(F)V
    .locals 2
    .param p1, "fraction"    # F

    .line 519
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->constrain(FFF)F

    move-result p1

    .line 520
    iget v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedFraction:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 521
    iput p1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedFraction:F

    .line 522
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->calculateCurrentOffsets()V

    .line 524
    :cond_0
    return-void
.end method

.method public setPositionInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 286
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    .line 287
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    .line 288
    return-void
.end method

.method public final setState([I)Z
    .locals 1
    .param p1, "state"    # [I

    .line 532
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mState:[I

    .line 533
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    .line 535
    const/4 v0, 0x1

    return v0

    .line 537
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 866
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 867
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mText:Ljava/lang/CharSequence;

    .line 868
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 869
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->clearTexture()V

    .line 870
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    .line 872
    :cond_1
    return-void
.end method

.method public setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 277
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 278
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    .line 279
    return-void
.end method

.method public setTypefaces(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 496
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->adaptBoldAndMediumFont(Landroid/graphics/Paint;Z)V

    .line 497
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    invoke-static {v0, v1}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->adaptBoldAndMediumFont(Landroid/graphics/Paint;Z)V

    .line 498
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    .line 499
    return-void
.end method
