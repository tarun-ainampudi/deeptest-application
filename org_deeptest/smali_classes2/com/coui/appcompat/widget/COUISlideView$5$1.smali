.class Lcom/coui/appcompat/widget/COUISlideView$5$1;
.super Lcom/coui/appcompat/widget/COUISlideCollapseAnimation;
.source "COUISlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUISlideView$5;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coui/appcompat/widget/COUISlideView$5;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUISlideView$5;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coui/appcompat/widget/COUISlideView$5;
    .param p2, "view"    # Landroid/view/View;

    .line 1559
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISlideView$5$1;->this$1:Lcom/coui/appcompat/widget/COUISlideView$5;

    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/COUISlideCollapseAnimation;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onItemDelete()V
    .locals 2

    .line 1563
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView$5$1;->this$1:Lcom/coui/appcompat/widget/COUISlideView$5;

    iget-object v0, v0, Lcom/coui/appcompat/widget/COUISlideView$5;->this$0:Lcom/coui/appcompat/widget/COUISlideView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISlideView;->access$402(Lcom/coui/appcompat/widget/COUISlideView;Z)Z

    .line 1564
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView$5$1;->this$1:Lcom/coui/appcompat/widget/COUISlideView$5;

    iget-object v0, v0, Lcom/coui/appcompat/widget/COUISlideView$5;->this$0:Lcom/coui/appcompat/widget/COUISlideView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISlideView;->access$300(Lcom/coui/appcompat/widget/COUISlideView;)Lcom/coui/appcompat/widget/COUISlideView$OnDeleteItemClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUISlideView$OnDeleteItemClickListener;->onDeleteItemClick()V

    .line 1565
    return-void
.end method
