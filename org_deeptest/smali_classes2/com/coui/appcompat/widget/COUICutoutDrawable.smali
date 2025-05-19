.class public Lcom/coui/appcompat/widget/COUICutoutDrawable;
.super Landroid/graphics/drawable/GradientDrawable;
.source "COUICutoutDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;
    }
.end annotation


# instance fields
.field private final cutoutBounds:Landroid/graphics/RectF;

.field private final cutoutPaint:Landroid/graphics/Paint;

.field private savedLayer:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable;->cutoutPaint:Landroid/graphics/Paint;

    .line 83
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable;->setPaintStyles()V

    .line 84
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    .line 85
    return-void
.end method

.method private postDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 175
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable;->useHardwareLayer(Landroid/graphics/drawable/Drawable$Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable;->savedLayer:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 178
    :cond_0
    return-void
.end method

.method private preDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 154
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 155
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable;->useHardwareLayer(Landroid/graphics/drawable/Drawable$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 157
    .local v1, "viewCallback":Landroid/view/View;
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 158
    .end local v1    # "viewCallback":Landroid/view/View;
    goto :goto_0

    .line 160
    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUICutoutDrawable;->saveCanvasLayer(Landroid/graphics/Canvas;)V

    .line 162
    :goto_0
    return-void
.end method

.method private saveCanvasLayer(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 166
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v6, v0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable;->savedLayer:I

    goto :goto_0

    .line 168
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 169
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable;->savedLayer:I

    .line 172
    :goto_0
    return-void
.end method

.method private setPaintStyles()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable;->cutoutPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable;->cutoutPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable;->cutoutPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 91
    return-void
.end method

.method private useHardwareLayer(Landroid/graphics/drawable/Drawable$Callback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/graphics/drawable/Drawable$Callback;

    .line 181
    instance-of v0, p1, Landroid/view/View;

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 146
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUICutoutDrawable;->preDraw(Landroid/graphics/Canvas;)V

    .line 147
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 149
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable;->cutoutPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUICutoutDrawable;->postDraw(Landroid/graphics/Canvas;)V

    .line 151
    return-void
.end method

.method public getCutout()Landroid/graphics/RectF;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public hasCutout()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public removeCutout()V
    .locals 1

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable;->setCutout(FFFF)V

    .line 142
    return-void
.end method

.method public setCutout(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 119
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 124
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable;->invalidateSelf()V

    .line 126
    :cond_1
    return-void
.end method

.method public setCutout(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .line 133
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/coui/appcompat/widget/COUICutoutDrawable;->setCutout(FFFF)V

    .line 134
    return-void
.end method
