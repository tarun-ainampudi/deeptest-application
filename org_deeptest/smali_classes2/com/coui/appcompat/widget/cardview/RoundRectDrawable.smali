.class Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundRectDrawable.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field private mBackground:Landroid/content/res/ColorStateList;

.field private final mBoundsF:Landroid/graphics/RectF;

.field private final mBoundsI:Landroid/graphics/Rect;

.field private mInsetForPadding:Z

.field private mInsetForRadius:Z

.field private mPadding:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mTint:Landroid/content/res/ColorStateList;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>(Landroid/content/res/ColorStateList;F)V
    .locals 2
    .param p1, "backgroundColor"    # Landroid/content/res/ColorStateList;
    .param p2, "radius"    # F

    .line 61
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mInsetForPadding:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mInsetForRadius:Z

    .line 59
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 62
    iput p2, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mRadius:F

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    .line 64
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->setBackground(Landroid/content/res/ColorStateList;)V

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    .line 68
    return-void
.end method

.method private createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 220
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 224
    .local v0, "color":I
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v1

    .line 221
    .end local v0    # "color":I
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private setBackground(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 71
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    .line 72
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->getState()[I

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    return-void
.end method

.method private updateBounds(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 119
    if-nez p1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 123
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 124
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mInsetForPadding:Z

    if-eqz v0, :cond_1

    .line 125
    iget v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mPadding:F

    iget v1, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mRadius:F

    iget-boolean v2, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mInsetForRadius:Z

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result v0

    .line 126
    .local v0, "vInset":F
    iget v1, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mPadding:F

    iget v2, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mRadius:F

    iget-boolean v3, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mInsetForRadius:Z

    invoke-static {v1, v2, v3}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v1

    .line 127
    .local v1, "hInset":F
    iget-object v2, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 129
    iget-object v2, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 131
    .end local v0    # "vInset":F
    .end local v1    # "hInset":F
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 93
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    .line 96
    .local v0, "paint":Landroid/graphics/Paint;
    iget-object v1, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 98
    const/4 v1, 0x1

    goto :goto_0

    .line 100
    :cond_0
    const/4 v1, 0x0

    .line 109
    .local v1, "clearColorFilter":Z
    :goto_0
    invoke-static {}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/util/COUIRoundRectUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v4, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mRadius:F

    invoke-virtual {v2, v3, v4}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v2

    .line 110
    .local v2, "path":Landroid/graphics/Path;
    iget-object v3, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 113
    if-eqz v1, :cond_1

    .line 114
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 116
    :cond_1
    return-void
.end method

.method public getColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .line 165
    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 141
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    iget v1, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 142
    return-void
.end method

.method getPadding()F
    .locals 1

    .line 88
    iget v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mPadding:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 169
    iget v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mRadius:F

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    .line 212
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 135
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 136
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 137
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 5
    .param p1, "stateSet"    # [I

    .line 197
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 198
    .local v0, "newColor":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 199
    .local v1, "colorChanged":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 200
    iget-object v3, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    :cond_1
    iget-object v3, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v3, :cond_2

    .line 203
    iget-object v3, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v3, v4}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 204
    return v2

    .line 206
    :cond_2
    return v1
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 155
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 156
    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 173
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->setBackground(Landroid/content/res/ColorStateList;)V

    .line 174
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->invalidateSelf()V

    .line 175
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .line 160
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 161
    return-void
.end method

.method setPadding(FZZ)V
    .locals 1
    .param p1, "padding"    # F
    .param p2, "insetForPadding"    # Z
    .param p3, "insetForRadius"    # Z

    .line 76
    iget v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mPadding:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mInsetForPadding:Z

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mInsetForRadius:Z

    if-ne v0, p3, :cond_0

    .line 78
    return-void

    .line 80
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mPadding:F

    .line 81
    iput-boolean p2, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mInsetForPadding:Z

    .line 82
    iput-boolean p3, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mInsetForRadius:Z

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 84
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->invalidateSelf()V

    .line 85
    return-void
.end method

.method setRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .line 145
    iget v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mRadius:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 146
    return-void

    .line 148
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mRadius:F

    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 150
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->invalidateSelf()V

    .line 151
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 183
    iput-object p1, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    .line 184
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 185
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->invalidateSelf()V

    .line 186
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 190
    iput-object p1, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 191
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 192
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawable;->invalidateSelf()V

    .line 193
    return-void
.end method
