.class Lcom/coui/appcompat/widget/COUITouchSearchView$2;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "COUITouchSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUITouchSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUITouchSearchView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUITouchSearchView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUITouchSearchView;

    .line 335
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$2;->this$0:Lcom/coui/appcompat/widget/COUITouchSearchView;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 4
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .line 338
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    .line 339
    .local v0, "alpha":D
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$2;->this$0:Lcom/coui/appcompat/widget/COUITouchSearchView;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUITouchSearchView;->access$100(Lcom/coui/appcompat/widget/COUITouchSearchView;)Landroid/widget/PopupWindow;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$2;->this$0:Lcom/coui/appcompat/widget/COUITouchSearchView;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUITouchSearchView;->access$100(Lcom/coui/appcompat/widget/COUITouchSearchView;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 340
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView$2;->this$0:Lcom/coui/appcompat/widget/COUITouchSearchView;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUITouchSearchView;->access$100(Lcom/coui/appcompat/widget/COUITouchSearchView;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    double-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 342
    :cond_0
    return-void
.end method
