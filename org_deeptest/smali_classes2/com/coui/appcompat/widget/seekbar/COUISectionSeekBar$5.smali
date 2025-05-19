.class Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$5;
.super Ljava/lang/Object;
.source "COUISectionSeekBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->startMoveAnimation(FFFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    .line 534
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$5;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 554
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$5;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$1800(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$5;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->onStopTrackingTouch()V

    .line 556
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$5;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$1802(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;Z)Z

    .line 558
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 542
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$5;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$1800(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$5;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->onStopTrackingTouch()V

    .line 544
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$5;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$1802(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;Z)Z

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$5;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$1900(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$5;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$1902(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;Z)Z

    .line 548
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$5;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$5;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$2000(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)F

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$2100(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;FZ)V

    .line 550
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 563
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 538
    return-void
.end method
