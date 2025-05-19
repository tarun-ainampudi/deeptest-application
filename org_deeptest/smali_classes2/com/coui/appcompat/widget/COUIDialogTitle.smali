.class public Lcom/coui/appcompat/widget/COUIDialogTitle;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "COUIDialogTitle.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 49
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 51
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDialogTitle;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 52
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 54
    .local v1, "lineCount":I
    if-lez v1, :cond_1

    .line 55
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .line 56
    .local v2, "ellipsisCount":I
    if-lez v2, :cond_1

    .line 57
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUIDialogTitle;->setSingleLine(Z)V

    .line 58
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/widget/COUIDialogTitle;->setMaxLines(I)V

    .line 60
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDialogTitle;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Lcoui/support/appcompat/R$styleable;->TextAppearance:[I

    const v7, 0x1010041

    const v8, 0x1030044

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 64
    .local v4, "a":Landroid/content/res/TypedArray;
    sget v5, Lcoui/support/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v4, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 66
    .local v5, "textSize":I
    if-eqz v5, :cond_0

    .line 68
    int-to-float v6, v5

    invoke-virtual {p0, v3, v6}, Lcom/coui/appcompat/widget/COUIDialogTitle;->setTextSize(IF)V

    .line 70
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 76
    .end local v1    # "lineCount":I
    .end local v2    # "ellipsisCount":I
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "textSize":I
    :cond_1
    return-void
.end method
