.class Lcom/coui/appcompat/widget/COUITouchSearchView$Key;
.super Ljava/lang/Object;
.source "COUITouchSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUITouchSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Key"
.end annotation


# instance fields
.field public mIcon:Landroid/graphics/drawable/Drawable;

.field mKeyLabel:Ljava/lang/CharSequence;

.field mKeyOne:Ljava/lang/CharSequence;

.field mKeyTwo:Ljava/lang/CharSequence;

.field mLeft:I

.field mText:Ljava/lang/String;

.field private mTextPaint:Landroid/text/TextPaint;

.field mTop:I

.field final synthetic this$0:Lcom/coui/appcompat/widget/COUITouchSearchView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUITouchSearchView;)V
    .locals 0

    .line 1569
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->this$0:Lcom/coui/appcompat/widget/COUITouchSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1559
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    .line 1560
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyTwo:Ljava/lang/CharSequence;

    .line 1563
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1564
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mText:Ljava/lang/String;

    .line 1565
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mTextPaint:Landroid/text/TextPaint;

    .line 1571
    return-void
.end method

.method constructor <init>(Lcom/coui/appcompat/widget/COUITouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 3
    .param p2, "keydrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "text"    # Ljava/lang/String;

    .line 1573
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->this$0:Lcom/coui/appcompat/widget/COUITouchSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    .line 1560
    iput-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyTwo:Ljava/lang/CharSequence;

    .line 1563
    iput-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1564
    iput-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mText:Ljava/lang/String;

    .line 1565
    iput-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mTextPaint:Landroid/text/TextPaint;

    .line 1574
    iput-object p2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1575
    iput-object p3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mText:Ljava/lang/String;

    .line 1578
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mTextPaint:Landroid/text/TextPaint;

    .line 1583
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUITouchSearchView;->access$400(Lcom/coui/appcompat/widget/COUITouchSearchView;)I

    move-result v0

    .line 1584
    .local v0, "textSize":I
    if-nez v0, :cond_0

    .line 1585
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUITouchSearchView;->access$500(Lcom/coui/appcompat/widget/COUITouchSearchView;)I

    move-result v0

    .line 1587
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1588
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUITouchSearchView;->access$700(Lcom/coui/appcompat/widget/COUITouchSearchView;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/coui/appcompat/widget/COUITouchSearchView;->access$602(Lcom/coui/appcompat/widget/COUITouchSearchView;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 1589
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUITouchSearchView;->access$600(Lcom/coui/appcompat/widget/COUITouchSearchView;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1590
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUITouchSearchView;->access$800(Lcom/coui/appcompat/widget/COUITouchSearchView;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/coui/appcompat/widget/COUITouchSearchView;->access$602(Lcom/coui/appcompat/widget/COUITouchSearchView;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 1592
    :cond_1
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUITouchSearchView;->access$900(Lcom/coui/appcompat/widget/COUITouchSearchView;)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1593
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUITouchSearchView;->access$900(Lcom/coui/appcompat/widget/COUITouchSearchView;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1595
    :cond_2
    return-void
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/COUITouchSearchView$Key;)Landroid/text/TextPaint;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    .line 1537
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1598
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 1601
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLeft()I
    .locals 1

    .line 1616
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mLeft:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1605
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1606
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mText:Ljava/lang/String;

    return-object v0

    .line 1608
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getTextToDisplay(IIILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "height"    # I
    .param p4, "compare"    # Ljava/lang/CharSequence;

    .line 1628
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1629
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyLabel:Ljava/lang/CharSequence;

    return-object v0

    .line 1630
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyTwo:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 1631
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    return-object v0

    .line 1633
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mTop:I

    if-lt p2, v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mTop:I

    shr-int/lit8 v1, p3, 0x1

    add-int/2addr v0, v1

    if-gt p2, v0, :cond_2

    .line 1634
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    return-object v0

    .line 1635
    :cond_2
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mTop:I

    shr-int/lit8 v1, p3, 0x1

    add-int/2addr v0, v1

    if-le p2, v0, :cond_3

    .line 1636
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyTwo:Ljava/lang/CharSequence;

    return-object v0

    .line 1638
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .line 1624
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mTop:I

    return v0
.end method

.method public setLeft(I)V
    .locals 0
    .param p1, "left"    # I

    .line 1612
    iput p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mLeft:I

    .line 1613
    return-void
.end method

.method public setTop(I)V
    .locals 0
    .param p1, "top"    # I

    .line 1620
    iput p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mTop:I

    .line 1621
    return-void
.end method
