.class Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;
.super Ljava/lang/Object;
.source "SecurityKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field public itemBg:Landroid/graphics/drawable/Drawable;

.field private mBottom:F

.field private mLeft:I

.field private mRight:I

.field private mSpecialTextPaint:Landroid/text/TextPaint;

.field private mTop:F

.field public text:Ljava/lang/String;

.field final synthetic this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)V
    .locals 0

    .line 2590
    iput-object p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2582
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->text:Ljava/lang/String;

    .line 2583
    iput-object p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->itemBg:Landroid/graphics/drawable/Drawable;

    .line 2584
    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->mLeft:I

    .line 2585
    iput p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->mRight:I

    .line 2586
    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->mTop:F

    .line 2587
    iput p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->mBottom:F

    .line 2591
    return-void
.end method

.method public constructor <init>(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2
    .param p2, "itemBg"    # Landroid/graphics/drawable/Drawable;
    .param p3, "text"    # Ljava/lang/String;

    .line 2593
    iput-object p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->text:Ljava/lang/String;

    .line 2583
    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->itemBg:Landroid/graphics/drawable/Drawable;

    .line 2584
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->mLeft:I

    .line 2585
    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->mRight:I

    .line 2586
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->mTop:F

    .line 2587
    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->mBottom:F

    .line 2594
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->mSpecialTextPaint:Landroid/text/TextPaint;

    .line 2595
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->mSpecialTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 2596
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->mSpecialTextPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->access$1600(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2597
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->mSpecialTextPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->access$1700(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2598
    iput-object p3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->text:Ljava/lang/String;

    .line 2599
    iput-object p2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->itemBg:Landroid/graphics/drawable/Drawable;

    .line 2601
    return-void
.end method

.method static synthetic access$1500(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;)Landroid/text/TextPaint;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;

    .line 2580
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->mSpecialTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method


# virtual methods
.method public getBottom()F
    .locals 1

    .line 2612
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->mBottom:F

    return v0
.end method

.method public getItemBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2627
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->itemBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2628
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->itemBg:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 2630
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 2620
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2621
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->text:Ljava/lang/String;

    return-object v0

    .line 2623
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTop()F
    .locals 1

    .line 2604
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->mTop:F

    return v0
.end method

.method public setBottom(F)V
    .locals 0
    .param p1, "Bottom"    # F

    .line 2616
    iput p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->mBottom:F

    .line 2617
    return-void
.end method

.method public setTop(F)V
    .locals 0
    .param p1, "Top"    # F

    .line 2608
    iput p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->mTop:F

    .line 2609
    return-void
.end method
