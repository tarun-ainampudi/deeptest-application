.class public Lcom/coui/appcompat/widget/COUIMaxLinearLayout;
.super Landroid/widget/LinearLayout;
.source "COUIMaxLinearLayout.java"


# instance fields
.field private mLandscapeMaxHeight:I

.field private mPortraitMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    sget-object v0, Lcoui/support/appcompat/R$styleable;->COUIMaxLinearLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIMaxLinearLayout_portraitMaxHeight:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUIMaxLinearLayout;->mPortraitMaxHeight:I

    .line 48
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIMaxLinearLayout_landscapeMaxHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUIMaxLinearLayout;->mLandscapeMaxHeight:I

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void
.end method

.method private getMaxHeight()I
    .locals 4

    .line 71
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIMaxLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 72
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 73
    .local v1, "screenWidth":I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 74
    .local v2, "isPortrait":Z
    :goto_0
    if-eqz v2, :cond_1

    iget v3, p0, Lcom/coui/appcompat/widget/COUIMaxLinearLayout;->mPortraitMaxHeight:I

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/coui/appcompat/widget/COUIMaxLinearLayout;->mLandscapeMaxHeight:I

    :goto_1
    return v3
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 54
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 56
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIMaxLinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 57
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIMaxLinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 59
    .local v1, "height":I
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 61
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIMaxLinearLayout;->getMaxHeight()I

    move-result v3

    .line 63
    .local v3, "maxHeight":I
    if-le v1, v3, :cond_0

    .line 64
    move v1, v3

    .line 65
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 66
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 68
    :cond_0
    return-void
.end method
