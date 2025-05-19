.class Lcom/coui/appcompat/widget/COUISimpleLock$7;
.super Ljava/lang/Object;
.source "COUISimpleLock.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUISimpleLock;->createFailedAnimator()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

.field final synthetic val$animatorY:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUISimpleLock;Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUISimpleLock;

    .line 927
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock$7;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    iput-object p2, p0, Lcom/coui/appcompat/widget/COUISimpleLock$7;->val$animatorY:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .line 968
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .line 957
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$7;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->setInternalTranslationX(F)V

    .line 958
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$7;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$602(Lcom/coui/appcompat/widget/COUISimpleLock;Z)Z

    .line 960
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$7;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$102(Lcom/coui/appcompat/widget/COUISimpleLock;Z)Z

    .line 961
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$7;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISimpleLock;->invalidate()V

    .line 962
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .line 952
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "arg0"    # Landroid/animation/Animator;

    .line 932
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$7;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$302(Lcom/coui/appcompat/widget/COUISimpleLock;I)I

    .line 933
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$7;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->setInternalTranslationX(F)V

    .line 934
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$7;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$602(Lcom/coui/appcompat/widget/COUISimpleLock;Z)Z

    .line 935
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$7;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$102(Lcom/coui/appcompat/widget/COUISimpleLock;Z)Z

    .line 936
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$7;->val$animatorY:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 937
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$7;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$700(Lcom/coui/appcompat/widget/COUISimpleLock;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$7;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$400(Lcom/coui/appcompat/widget/COUISimpleLock;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 939
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$7;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$800(Lcom/coui/appcompat/widget/COUISimpleLock;)V

    .line 940
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$7;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$402(Lcom/coui/appcompat/widget/COUISimpleLock;Z)Z

    goto :goto_0

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$7;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$702(Lcom/coui/appcompat/widget/COUISimpleLock;Z)Z

    .line 946
    :cond_1
    :goto_0
    return-void
.end method
