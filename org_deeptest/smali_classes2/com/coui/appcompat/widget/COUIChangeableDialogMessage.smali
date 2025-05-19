.class public Lcom/coui/appcompat/widget/COUIChangeableDialogMessage;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "COUIChangeableDialogMessage.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 12
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 16
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 25
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 26
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIChangeableDialogMessage;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 27
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 29
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIChangeableDialogMessage;->setTextAlignment(I)V

    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIChangeableDialogMessage;->setTextAlignment(I)V

    .line 33
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIChangeableDialogMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIChangeableDialogMessage;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :cond_1
    return-void
.end method
