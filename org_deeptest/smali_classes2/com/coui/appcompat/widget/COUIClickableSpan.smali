.class public Lcom/coui/appcompat/widget/COUIClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "COUIClickableSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUIClickableSpan$SpannableStrClickListener;
    }
.end annotation


# instance fields
.field mClickReference:Lcom/coui/appcompat/widget/COUIClickableSpan$SpannableStrClickListener;

.field private mTextColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$color;->coui_clickable_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIClickableSpan;->mTextColor:Landroid/content/res/ColorStateList;

    .line 30
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "widget"    # Landroid/view/View;

    .line 35
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIClickableSpan;->mClickReference:Lcom/coui/appcompat/widget/COUIClickableSpan$SpannableStrClickListener;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIClickableSpan;->mClickReference:Lcom/coui/appcompat/widget/COUIClickableSpan$SpannableStrClickListener;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIClickableSpan$SpannableStrClickListener;->onClick()V

    .line 39
    :cond_0
    return-void
.end method

.method public setStatusBarClickListener(Lcom/coui/appcompat/widget/COUIClickableSpan$SpannableStrClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/widget/COUIClickableSpan$SpannableStrClickListener;

    .line 48
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIClickableSpan;->mClickReference:Lcom/coui/appcompat/widget/COUIClickableSpan$SpannableStrClickListener;

    .line 49
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 43
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIClickableSpan;->mTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Landroid/text/TextPaint;->drawableState:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 45
    return-void
.end method
