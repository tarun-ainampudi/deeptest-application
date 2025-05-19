.class public Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;
.super Landroid/widget/FrameLayout;
.source "RoundFrameLayout.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRadius:F

.field private mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    sget-object v0, Lcoui/support/appcompat/R$styleable;->RoundFrameLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Lcoui/support/appcompat/R$styleable;->RoundFrameLayout_rfRadius:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;->mRadius:F

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;->mPath:Landroid/graphics/Path;

    .line 53
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;->mRectF:Landroid/graphics/RectF;

    .line 56
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 57
    return-void
.end method

.method private dispatchDraw27(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 80
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;->mRectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 81
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 82
    invoke-direct {p0}, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;->genPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 84
    return-void
.end method

.method private dispatchDraw28(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 88
    invoke-direct {p0}, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;->genPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 89
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 91
    return-void
.end method

.method private genPath()Landroid/graphics/Path;
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 95
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;->mRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;->mRadius:F

    iget v3, p0, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;->mRadius:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 96
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;->mPath:Landroid/graphics/Path;

    return-object v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 73
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;->dispatchDraw28(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;->dispatchDraw27(Landroid/graphics/Canvas;)V

    .line 77
    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 67
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;->getPaddingRight()I

    move-result v3

    sub-int v3, p1, v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;->getPaddingBottom()I

    move-result v4

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 68
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .line 60
    iput p1, p0, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;->mRadius:F

    .line 61
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/RoundFrameLayout;->postInvalidate()V

    .line 62
    return-void
.end method
