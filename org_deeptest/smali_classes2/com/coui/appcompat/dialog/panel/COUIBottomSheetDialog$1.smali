.class Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$1;
.super Ljava/lang/Object;
.source "COUIBottomSheetDialog.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->initWindowInsetsListener(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 324
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 327
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/util/COUINavigationBarUtil;->isNavigationBarShow(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 328
    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/util/COUINavigationBarUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 329
    .local v0, "navigationBarHeight":I
    :goto_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$000(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    sub-int/2addr v2, v3

    .line 330
    .local v2, "keyboardHeight":I
    if-lez v2, :cond_2

    .line 331
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v1, v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$102(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;I)I

    .line 332
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$200(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 333
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$200(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;

    move-result-object v1

    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$300(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v5}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->adjustResize(Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;ZI)V

    goto :goto_2

    .line 335
    :cond_2
    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)I

    move-result v3

    if-eqz v3, :cond_4

    .line 336
    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$200(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 337
    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$200(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v4}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$300(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v5}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)I

    move-result v5

    invoke-virtual {v3, v4, v1, v5}, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->adjustResize(Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;ZI)V

    .line 339
    :cond_3
    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v3, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$102(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;I)I

    .line 341
    :cond_4
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 342
    return-object p2
.end method
