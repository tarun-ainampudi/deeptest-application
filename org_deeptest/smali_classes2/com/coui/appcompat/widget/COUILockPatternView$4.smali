.class Lcom/coui/appcompat/widget/COUILockPatternView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUILockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUILockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUILockPatternView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUILockPatternView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUILockPatternView;

    .line 695
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView$4;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 698
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$4;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILockPatternView;->access$500(Lcom/coui/appcompat/widget/COUILockPatternView;)V

    .line 699
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$4;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILockPatternView;->access$600(Lcom/coui/appcompat/widget/COUILockPatternView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$4;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILockPatternView;->access$600(Lcom/coui/appcompat/widget/COUILockPatternView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 702
    :cond_0
    return-void
.end method
