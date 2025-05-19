.class Lcom/coui/appcompat/dialog/app/COUIAlertController$5;
.super Ljava/lang/Object;
.source "COUIAlertController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/app/COUIAlertController;->relayoutMessageView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

.field final synthetic val$messageView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/app/COUIAlertController;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/app/COUIAlertController;

    .line 494
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$5;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$5;->val$messageView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$5;->val$messageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 498
    .local v0, "lineCount":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$5;->val$messageView:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_0

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$5;->val$messageView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 503
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$5;->val$messageView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$5;->val$messageView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$5;->val$messageView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 505
    return-void
.end method
