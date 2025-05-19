.class Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl;
.super Ljava/lang/Object;
.source "CardViewBaseImpl.java"

# interfaces
.implements Lcom/coui/appcompat/widget/cardview/CardViewImpl;


# instance fields
.field private final mCornerRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    return-void
.end method

.method private createBackground(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backgroundColor"    # Landroid/content/res/ColorStateList;
    .param p3, "radius"    # F
    .param p4, "elevation"    # F
    .param p5, "maxElevation"    # F

    .line 103
    new-instance v6, Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, v6

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;-><init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V

    return-object v6
.end method

.method private getShadowBackground(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;
    .locals 1
    .param p1, "cardView"    # Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    .line 181
    invoke-interface {p1}, Lcom/coui/appcompat/widget/cardview/CardViewDelegate;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;

    return-object v0
.end method


# virtual methods
.method public getBackgroundColor(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "cardView"    # Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    .line 135
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl;->getShadowBackground(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getElevation(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    .line 156
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl;->getShadowBackground(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;->getShadowSize()F

    move-result v0

    return v0
.end method

.method public getMaxElevation(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    .line 167
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl;->getShadowBackground(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;->getMaxShadowSize()F

    move-result v0

    return v0
.end method

.method public getMinHeight(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    .line 177
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl;->getShadowBackground(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;->getMinHeight()F

    move-result v0

    return v0
.end method

.method public getMinWidth(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    .line 172
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl;->getShadowBackground(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;->getMinWidth()F

    move-result v0

    return v0
.end method

.method public getRadius(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    .line 146
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl;->getShadowBackground(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;->getCornerRadius()F

    move-result v0

    return v0
.end method

.method public initStatic()V
    .locals 1

    .line 39
    new-instance v0, Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl$1;-><init>(Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl;)V

    sput-object v0, Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;->sRoundRectHelper:Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow$RoundRectHelper;

    .line 88
    return-void
.end method

.method public initialize(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 6
    .param p1, "cardView"    # Lcom/coui/appcompat/widget/cardview/CardViewDelegate;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "backgroundColor"    # Landroid/content/res/ColorStateList;
    .param p4, "radius"    # F
    .param p5, "elevation"    # F
    .param p6, "maxElevation"    # F

    .line 93
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl;->createBackground(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object v0

    .line 95
    .local v0, "background":Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;
    invoke-interface {p1}, Lcom/coui/appcompat/widget/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    .line 96
    invoke-interface {p1, v0}, Lcom/coui/appcompat/widget/cardview/CardViewDelegate;->setCardBackground(Landroid/graphics/drawable/Drawable;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl;->updatePadding(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)V

    .line 98
    return-void
.end method

.method public onCompatPaddingChanged(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)V
    .locals 0
    .param p1, "cardView"    # Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    .line 120
    return-void
.end method

.method public onPreventCornerOverlapChanged(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)V
    .locals 2
    .param p1, "cardView"    # Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    .line 124
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl;->getShadowBackground(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-interface {p1}, Lcom/coui/appcompat/widget/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl;->updatePadding(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)V

    .line 126
    return-void
.end method

.method public setBackgroundColor(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "cardView"    # Lcom/coui/appcompat/widget/cardview/CardViewDelegate;
    .param p2, "color"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 130
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl;->getShadowBackground(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;->setColor(Landroid/content/res/ColorStateList;)V

    .line 131
    return-void
.end method

.method public setElevation(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Lcom/coui/appcompat/widget/cardview/CardViewDelegate;
    .param p2, "elevation"    # F

    .line 151
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl;->getShadowBackground(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;->setShadowSize(F)V

    .line 152
    return-void
.end method

.method public setMaxElevation(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Lcom/coui/appcompat/widget/cardview/CardViewDelegate;
    .param p2, "maxElevation"    # F

    .line 161
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl;->getShadowBackground(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;->setMaxShadowSize(F)V

    .line 162
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl;->updatePadding(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)V

    .line 163
    return-void
.end method

.method public setRadius(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Lcom/coui/appcompat/widget/cardview/CardViewDelegate;
    .param p2, "radius"    # F

    .line 140
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl;->getShadowBackground(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;->setCornerRadius(F)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl;->updatePadding(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)V

    .line 142
    return-void
.end method

.method public updatePadding(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)V
    .locals 5
    .param p1, "cardView"    # Lcom/coui/appcompat/widget/cardview/CardViewDelegate;

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 110
    .local v0, "shadowPadding":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl;->getShadowBackground(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow;->getMaxShadowAndCornerPadding(Landroid/graphics/Rect;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl;->getMinWidth(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 112
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/cardview/CardViewBaseImpl;->getMinHeight(Lcom/coui/appcompat/widget/cardview/CardViewDelegate;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 111
    invoke-interface {p1, v1, v2}, Lcom/coui/appcompat/widget/cardview/CardViewDelegate;->setMinWidthHeightInternal(II)V

    .line 113
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/coui/appcompat/widget/cardview/CardViewDelegate;->setShadowPadding(IIII)V

    .line 115
    return-void
.end method
