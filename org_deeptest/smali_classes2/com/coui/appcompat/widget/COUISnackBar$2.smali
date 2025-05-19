.class Lcom/coui/appcompat/widget/COUISnackBar$2;
.super Ljava/lang/Object;
.source "COUISnackBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUISnackBar;->animationTranslationOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUISnackBar;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUISnackBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUISnackBar;

    .line 375
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISnackBar$2;->this$0:Lcom/coui/appcompat/widget/COUISnackBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 391
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 381
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar$2;->this$0:Lcom/coui/appcompat/widget/COUISnackBar;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISnackBar;->access$200(Lcom/coui/appcompat/widget/COUISnackBar;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar$2;->this$0:Lcom/coui/appcompat/widget/COUISnackBar;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISnackBar;->access$300(Lcom/coui/appcompat/widget/COUISnackBar;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar$2;->this$0:Lcom/coui/appcompat/widget/COUISnackBar;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISnackBar;->access$300(Lcom/coui/appcompat/widget/COUISnackBar;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar$2;->this$0:Lcom/coui/appcompat/widget/COUISnackBar;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUISnackBar;->access$200(Lcom/coui/appcompat/widget/COUISnackBar;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar$2;->this$0:Lcom/coui/appcompat/widget/COUISnackBar;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISnackBar;->access$400(Lcom/coui/appcompat/widget/COUISnackBar;)Lcom/coui/appcompat/widget/COUISnackBar$OnStatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar$2;->this$0:Lcom/coui/appcompat/widget/COUISnackBar;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISnackBar;->access$400(Lcom/coui/appcompat/widget/COUISnackBar;)Lcom/coui/appcompat/widget/COUISnackBar$OnStatusChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar$2;->this$0:Lcom/coui/appcompat/widget/COUISnackBar;

    invoke-interface {v0, v1}, Lcom/coui/appcompat/widget/COUISnackBar$OnStatusChangeListener;->onDismissed(Lcom/coui/appcompat/widget/COUISnackBar;)V

    .line 388
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 394
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 377
    return-void
.end method
