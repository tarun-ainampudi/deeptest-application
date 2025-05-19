.class Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$4;
.super Ljava/lang/Object;
.source "COUISectionSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 511
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 514
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$802(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;F)F

    .line 515
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$1000(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v2}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$800(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)F

    move-result v2

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v3}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$1100(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)F

    move-result v3

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$902(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;F)F

    .line 516
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$900(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$1202(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;F)F

    .line 517
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->invalidate()V

    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, "isChangingCurrentIndex":Z
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$1300(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I

    move-result v1

    .line 521
    .local v1, "currentIndex":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v2}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$1400(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v3}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$1000(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)F

    move-result v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 522
    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v2}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$900(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v3}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$1500(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 523
    const/4 v0, 0x1

    goto :goto_0

    .line 524
    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v2}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$1400(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)F

    move-result v2

    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v4}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$1000(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)F

    move-result v4

    sub-float/2addr v2, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 525
    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v2}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$900(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v3}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$1500(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)F

    move-result v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 526
    const/4 v0, 0x1

    .line 528
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 529
    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v2}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$1600(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I

    move-result v2

    sub-int v1, v2, v1

    .line 531
    :cond_2
    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v2, v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$1700(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;I)V

    .line 532
    return-void
.end method
