.class Lcom/coui/appcompat/widget/COUISimpleLock$4;
.super Ljava/lang/Object;
.source "COUISimpleLock.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUISimpleLock;->createMorphingAnimationFilledToOutLined()Landroid/animation/ValueAnimator;
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

    .line 864
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock$4;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 884
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 877
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$4;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$502(Lcom/coui/appcompat/widget/COUISimpleLock;Z)Z

    .line 878
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$4;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISimpleLock;->invalidate()V

    .line 879
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 873
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 868
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$4;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$502(Lcom/coui/appcompat/widget/COUISimpleLock;Z)Z

    .line 869
    return-void
.end method
