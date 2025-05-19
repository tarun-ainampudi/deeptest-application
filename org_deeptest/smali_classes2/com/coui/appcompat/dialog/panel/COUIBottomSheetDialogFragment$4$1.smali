.class Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUIBottomSheetDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    .line 311
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 331
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$002(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;I)I

    .line 333
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$800(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 335
    .local v0, "tempView":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v2, v2, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$802(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 336
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    invoke-static {v1, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$102(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 337
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$1300(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)I

    move-result v1

    .line 338
    .local v1, "tempHeight":I
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v2, v2, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v3, v3, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    invoke-static {v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$000(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$1302(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;I)I

    .line 339
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v2, v2, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    invoke-static {v2, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$002(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;I)I

    .line 340
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v2, v2, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$1602(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;Z)Z

    .line 341
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 314
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$1200(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$1102(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;I)I

    .line 315
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v2, v2, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$1100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$002(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;I)I

    .line 316
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$800(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v2, v2, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$1100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$1302(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;I)I

    .line 317
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$800(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v2, v2, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$000(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v3, v3, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    invoke-static {v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$1300(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;

    iget-object v4, v4, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;

    invoke-static {v4}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$000(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;)I

    move-result v4

    sub-int/2addr v3, v4

    new-instance v4, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1$1;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1$1;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment$4$1;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;->access$1500(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialogFragment;Landroid/view/View;IILandroid/animation/Animator$AnimatorListener;)V

    .line 327
    return-void
.end method
