.class public Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "COUIRoundDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;
    }
.end annotation


# instance fields
.field private drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

.field private fillPaint:Landroid/graphics/Paint;

.field private fillPath:Landroid/graphics/Path;

.field private pathDirty:Z

.field private rectF:Landroid/graphics/RectF;

.field private strokePaint:Landroid/graphics/Paint;

.field private strokePath:Landroid/graphics/Path;

.field private strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private tintFilter:Landroid/graphics/PorterDuffColorFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;-><init>()V

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;-><init>(Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;)V
    .locals 2
    .param p1, "state"    # Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->rectF:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->fillPath:Landroid/graphics/Path;

    .line 27
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->strokePath:Landroid/graphics/Path;

    .line 40
    iput-object p1, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    .line 41
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->fillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    return-void
.end method

.method static synthetic access$002(Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;
    .param p1, "x1"    # Z

    .line 21
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->pathDirty:Z

    return p1
.end method

.method private calculatePath()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->fillPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget v2, v2, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->radius:F

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/widget/shape/COUIShapePath;->getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->fillPath:Landroid/graphics/Path;

    .line 93
    return-void
.end method

.method private calculateStrokePath()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->strokePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget v2, v2, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->radius:F

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/widget/shape/COUIShapePath;->getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->strokePath:Landroid/graphics/Path;

    .line 89
    return-void
.end method

.method private calculateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 217
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    if-nez p2, :cond_1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_1
    move-object v2, p2

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method private hasFill()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->fillPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasStroke()Z
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static modulateAlpha(II)I
    .locals 2
    .param p0, "paintAlpha"    # I
    .param p1, "alpha"    # I

    .line 47
    ushr-int/lit8 v0, p1, 0x7

    add-int/2addr v0, p1

    .line 48
    .local v0, "scale":I
    mul-int v1, p0, v0

    ushr-int/lit8 v1, v1, 0x8

    return v1
.end method

.method private updateColorsForState([I)Z
    .locals 4
    .param p1, "state"    # [I

    .line 223
    const/4 v0, 0x0

    .line 225
    .local v0, "invalidateSelf":Z
    iget-object v1, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v1, v1, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    .line 227
    .local v1, "previousFillColor":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v2, v2, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 228
    .local v2, "newFillColor":I
    if-eq v1, v2, :cond_0

    .line 229
    iget-object v3, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    const/4 v0, 0x1

    .line 234
    .end local v1    # "previousFillColor":I
    .end local v2    # "newFillColor":I
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v1, v1, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    .line 236
    .local v1, "previousStrokeColor":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v2, v2, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    .line 237
    invoke-virtual {v2, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 238
    .local v2, "newStrokeColor":I
    if-eq v1, v2, :cond_1

    .line 239
    iget-object v3, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 240
    const/4 v0, 0x1

    .line 244
    .end local v1    # "previousStrokeColor":I
    .end local v2    # "newStrokeColor":I
    :cond_1
    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->fillPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 54
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 55
    .local v0, "preAlpha":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->fillPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget v2, v2, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->alpha:I

    invoke-static {v0, v2}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->modulateAlpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 57
    iget-object v1, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget v2, v2, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->strokeWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object v1, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 59
    iget-object v1, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 60
    .local v1, "preStrokeAlpha":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget v3, v3, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->alpha:I

    invoke-static {v1, v3}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->modulateAlpha(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 62
    iget-boolean v2, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->pathDirty:Z

    if-eqz v2, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->calculateStrokePath()V

    .line 64
    invoke-direct {p0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->calculatePath()V

    .line 65
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->pathDirty:Z

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->hasFill()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->fillPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->hasStroke()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    iget-object v2, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->strokePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 75
    :cond_2
    iget-object v2, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 76
    iget-object v2, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 77
    return-void
.end method

.method protected getBoundsAsRectF()Landroid/graphics/RectF;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 98
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->rectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    return-object v0
.end method

.method public getFillColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v0, v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .line 173
    const/4 v0, -0x3

    return v0
.end method

.method public invalidateIgnoreCalculate()V
    .locals 1

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->pathDirty:Z

    .line 179
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 180
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->pathDirty:Z

    .line 185
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 186
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 190
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v0, v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->tintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v0, v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->tintList:Landroid/content/res/ColorStateList;

    .line 191
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v0, v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->strokeTintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v0, v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->strokeTintList:Landroid/content/res/ColorStateList;

    .line 192
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v0, v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v0, v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    .line 193
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v0, v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v0, v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    .line 194
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 256
    new-instance v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v1, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;-><init>(Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;)V

    .line 257
    .local v0, "newDrawableState":Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;
    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    .line 258
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->pathDirty:Z

    .line 209
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 210
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .line 199
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->updateColorsForState([I)Z

    move-result v0

    .line 200
    .local v0, "invalidateSelf":Z
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->invalidateSelf()V

    .line 203
    :cond_0
    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 103
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget v0, v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->alpha:I

    if-eq v0, p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iput p1, v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->alpha:I

    .line 105
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->invalidateSelf()V

    .line 107
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 111
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v0, v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->colorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iput-object p1, v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->colorFilter:Landroid/graphics/ColorFilter;

    .line 113
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->invalidateSelf()V

    .line 115
    :cond_0
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 150
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 151
    return-void
.end method

.method public setFillColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .line 143
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v0, v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iput-object p1, v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    .line 145
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->onStateChange([I)Z

    .line 147
    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .line 139
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iput p1, v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->radius:F

    .line 140
    return-void
.end method

.method public setStroke(FI)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 158
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->setStroke(FLandroid/content/res/ColorStateList;)V

    .line 159
    return-void
.end method

.method public setStroke(FLandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "colorStateList"    # Landroid/content/res/ColorStateList;

    .line 162
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget v0, v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->strokeWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v0, v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    if-eq v0, p2, :cond_1

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iput p1, v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->strokeWidth:F

    .line 164
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iput-object p2, v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    .line 165
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->onStateChange([I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->invalidateSelf()V

    .line 169
    :cond_1
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tintColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 119
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 120
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 124
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iput-object p1, v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->tintList:Landroid/content/res/ColorStateList;

    .line 125
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v0, v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->tintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->calculateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 126
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 127
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->invalidateIgnoreCalculate()V

    .line 128
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 132
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iput-object p1, v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 133
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v0, v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->tintList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->calculateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 134
    iget-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 135
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->invalidateIgnoreCalculate()V

    .line 136
    return-void
.end method
