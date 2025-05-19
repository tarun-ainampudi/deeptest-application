.class Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$11;
.super Ljava/lang/Object;
.source "COUIBottomSheetDialog.java"

# interfaces
.implements Lcom/coui/appcompat/dialog/panel/COUIPanelPullUpListener;


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

    .line 994
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$11;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 1023
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$11;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$3000(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$11;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$3000(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 1026
    :cond_0
    return-void
.end method

.method public onDragging(II)I
    .locals 5
    .param p1, "dy"    # I
    .param p2, "initialTop"    # I

    .line 997
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$11;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$2700(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Lcom/facebook/rebound/Spring;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$11;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$2700(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Lcom/facebook/rebound/Spring;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->getVelocity()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$11;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$2700(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Lcom/facebook/rebound/Spring;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    .line 999
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$11;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$2800(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)I

    move-result v0

    return v0

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$11;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$2900(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$11;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$3000(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1002
    .local v0, "distance":I
    if-gtz v0, :cond_1

    .line 1003
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$11;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$2800(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)I

    move-result v1

    return v1

    .line 1005
    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$11;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 1006
    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$3000(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p1

    const v3, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$11;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$3100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1005
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v1

    .line 1007
    .local v1, "newPaddingBottom":I
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$11;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$2800(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 1008
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$11;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v2, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$2802(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;I)I

    .line 1009
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$11;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$3000(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$11;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v4}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$2800(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)I

    move-result v4

    invoke-virtual {v2, v3, v3, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1011
    :cond_2
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$11;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$2800(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)I

    move-result v2

    return v2
.end method

.method public onReleased(I)V
    .locals 4
    .param p1, "expandedOffset"    # I

    .line 1016
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$11;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$2800(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)I

    move-result v0

    sub-int v0, p1, v0

    .line 1017
    .local v0, "realTop":I
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$11;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$900(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    sub-int/2addr v1, v0

    .line 1018
    .local v1, "offset":I
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$11;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$11;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$2800(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$3200(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;I)V

    .line 1019
    return-void
.end method
