.class Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUIBottomSheetDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;

    .line 317
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1$1;->this$2:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 320
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1$1;->this$2:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$500(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1$1;->this$2:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$500(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1$1;->this$2:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    sget v2, Lcoui/support/appcompat/R$id;->first_panel_container:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;->onShow(Ljava/lang/Boolean;)V

    .line 322
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1$1;->this$2:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$300(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1$1;->this$2:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$500(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/panel/COUIPanelFragment;->getDraggableLinearLayout()Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setDragableLinearLayout(Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;Z)V

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1$1;->this$2:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1$1;->this$2:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$1400(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;Landroid/view/View;)V

    .line 325
    return-void
.end method
