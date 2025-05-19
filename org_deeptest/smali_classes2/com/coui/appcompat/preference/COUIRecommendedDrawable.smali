.class public Lcom/coui/appcompat/preference/COUIRecommendedDrawable;
.super Lcom/google/android/material/shape/MaterialShapeDrawable;
.source "COUIRecommendedDrawable.java"


# instance fields
.field private mColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRadius:F


# direct methods
.method public constructor <init>(FI)V
    .locals 2
    .param p1, "radius"    # F
    .param p2, "color"    # I

    .line 18
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 19
    iput p1, p0, Lcom/coui/appcompat/preference/COUIRecommendedDrawable;->mRadius:F

    .line 20
    iput p2, p0, Lcom/coui/appcompat/preference/COUIRecommendedDrawable;->mColor:I

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedDrawable;->mPath:Landroid/graphics/Path;

    .line 23
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/preference/COUIRecommendedDrawable;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 29
    invoke-static {}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/util/COUIRoundRectUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIRecommendedDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/preference/COUIRecommendedDrawable;->mRadius:F

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getPath(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedDrawable;->mPath:Landroid/graphics/Path;

    .line 30
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIRecommendedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 31
    return-void
.end method
