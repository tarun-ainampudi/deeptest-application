.class Lcom/coui/appcompat/widget/COUISimpleLock$2;
.super Ljava/lang/Object;
.source "COUISimpleLock.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUISimpleLock;->createMorphingAnimationOutLinedToFilled()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUISimpleLock;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUISimpleLock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUISimpleLock;

    .line 811
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock$2;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 842
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 825
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$2;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$002(Lcom/coui/appcompat/widget/COUISimpleLock;Z)Z

    .line 826
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$2;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISimpleLock;->invalidate()V

    .line 827
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$2;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$100(Lcom/coui/appcompat/widget/COUISimpleLock;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 828
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$2;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$200(Lcom/coui/appcompat/widget/COUISimpleLock;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$2;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$200(Lcom/coui/appcompat/widget/COUISimpleLock;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$2;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$002(Lcom/coui/appcompat/widget/COUISimpleLock;Z)Z

    .line 830
    return-void

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$2;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$302(Lcom/coui/appcompat/widget/COUISimpleLock;I)I

    .line 833
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$2;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock$2;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUISimpleLock;->createFailedAnimator()Landroid/animation/Animator;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$202(Lcom/coui/appcompat/widget/COUISimpleLock;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 834
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$2;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$200(Lcom/coui/appcompat/widget/COUISimpleLock;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 835
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$2;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$402(Lcom/coui/appcompat/widget/COUISimpleLock;Z)Z

    .line 837
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 821
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 815
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$2;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$002(Lcom/coui/appcompat/widget/COUISimpleLock;Z)Z

    .line 817
    return-void
.end method
