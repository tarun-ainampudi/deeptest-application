.class Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout$1;
.super Ljava/lang/Object;
.source "COUIMaxHeightDraggableVerticalLinearLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    .line 97
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout$1;->this$0:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 100
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout$1;->this$0:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->contextToActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 101
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->getCurrentWindowVisibleHeight(Landroid/app/Activity;Landroid/content/res/Configuration;)I

    move-result v1

    .line 102
    .local v1, "currentWindowViewHeight":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout$1;->this$0:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    .line 103
    .local v2, "screenHeightWithoutNavigationBar":I
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout$1;->this$0:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/coui/appcompat/util/COUINavigationBarUtil;->isNavigationBarShow(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout$1;->this$0:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/coui/appcompat/util/COUINavigationBarUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sub-int/2addr v2, v3

    .line 104
    invoke-static {v0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout$1;->this$0:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    .line 106
    invoke-static {v3}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->access$000(Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;)I

    move-result v3

    if-eq v1, v3, :cond_1

    div-int/lit8 v3, v2, 0x4

    if-lt v1, v3, :cond_1

    .line 108
    invoke-static {v0, v1}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->getPanelMaxHeightIfActivityExist(Landroid/app/Activity;I)I

    move-result v3

    .line 109
    .local v3, "maxHeight":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout$1;->this$0:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->access$100(Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;)I

    move-result v4

    if-eq v4, v3, :cond_1

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout$1;->this$0:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    invoke-virtual {v4}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout$1;->this$0:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    invoke-static {v4, v3}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->access$102(Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;I)I

    .line 111
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout$1;->this$0:Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    invoke-virtual {v4}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->requestLayout()V

    .line 114
    .end local v3    # "maxHeight":I
    :cond_1
    return-void
.end method
