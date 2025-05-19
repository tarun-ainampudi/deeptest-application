.class Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$10;
.super Ljava/lang/Object;
.source "COUIBottomSheetDialog.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;
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

    .line 944
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "configuration"    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 947
    invoke-static {p1}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->isPortrait(Landroid/content/res/Configuration;)Z

    move-result v0

    .line 948
    .local v0, "isPortrait":Z
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$2100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 949
    return-void

    .line 951
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v1, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$2102(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;Z)Z

    .line 952
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$2202(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;Z)Z

    .line 953
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$1700(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)V

    .line 954
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$200(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 955
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$200(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$300(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->recoveryScrollingParentViewPaddingBottom(Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;)V

    .line 957
    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$2100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$2300(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;Z)V

    .line 958
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-virtual {v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->getPanelMaxHeight(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$2402(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;I)I

    .line 959
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$2500(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$2600(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 960
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$2600(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 961
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$2400(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 962
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$10;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$2600(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 964
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 969
    return-void
.end method
