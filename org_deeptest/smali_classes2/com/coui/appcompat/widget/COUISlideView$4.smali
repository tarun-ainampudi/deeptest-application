.class Lcom/coui/appcompat/widget/COUISlideView$4;
.super Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;
.source "COUISlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUISlideView;->startDeleteSlideAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUISlideView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUISlideView;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 7
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUISlideView;
    .param p2, "slideView"    # Landroid/view/View;
    .param p3, "itemView"    # Landroid/view/View;
    .param p4, "startX"    # I
    .param p5, "targetX"    # I
    .param p6, "startHeight"    # I
    .param p7, "targetHeight"    # I

    .line 1521
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISlideView$4;->this$0:Lcom/coui/appcompat/widget/COUISlideView;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;-><init>(Landroid/view/View;Landroid/view/View;IIII)V

    return-void
.end method


# virtual methods
.method public itemViewDelete()V
    .locals 2

    .line 1524
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView$4;->this$0:Lcom/coui/appcompat/widget/COUISlideView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISlideView;->access$300(Lcom/coui/appcompat/widget/COUISlideView;)Lcom/coui/appcompat/widget/COUISlideView$OnDeleteItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView$4;->this$0:Lcom/coui/appcompat/widget/COUISlideView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISlideView;->access$402(Lcom/coui/appcompat/widget/COUISlideView;Z)Z

    .line 1526
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView$4;->this$0:Lcom/coui/appcompat/widget/COUISlideView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISlideView;->access$300(Lcom/coui/appcompat/widget/COUISlideView;)Lcom/coui/appcompat/widget/COUISlideView$OnDeleteItemClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUISlideView$OnDeleteItemClickListener;->onDeleteItemClick()V

    .line 1528
    :cond_0
    return-void
.end method
