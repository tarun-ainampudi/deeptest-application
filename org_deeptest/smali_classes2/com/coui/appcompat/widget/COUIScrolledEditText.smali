.class public Lcom/coui/appcompat/widget/COUIScrolledEditText;
.super Lcom/coui/appcompat/widget/COUIEditText;
.source "COUIScrolledEditText.java"


# instance fields
.field private mMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIEditText;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/COUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIScrolledEditText;->getLineHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIScrolledEditText;->getMaxLines()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIScrolledEditText;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIScrolledEditText;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUIScrolledEditText;->mMaxHeight:I

    .line 58
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIScrolledEditText;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUIScrolledEditText;->mMaxHeight:I

    if-lt v0, v1, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIScrolledEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 63
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUIEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
