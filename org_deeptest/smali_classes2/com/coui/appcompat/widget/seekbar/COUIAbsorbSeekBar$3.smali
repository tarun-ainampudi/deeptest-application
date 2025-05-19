.class Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$3;
.super Ljava/lang/Object;
.source "COUIAbsorbSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    .line 255
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$3;->this$0:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 259
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 260
    .local v0, "animatedFraction":F
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$3;->this$0:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$3;->this$0:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    invoke-static {v2}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->access$600(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v0

    iget-object v5, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$3;->this$0:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    invoke-static {v5}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->access$300(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3fb56042    # 1.417f

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$3;->this$0:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    invoke-static {v6}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->access$600(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    invoke-static {v1, v2}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->access$202(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;F)F

    .line 261
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$3;->this$0:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$3;->this$0:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    invoke-static {v2}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->access$700(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)F

    move-result v2

    sub-float/2addr v3, v0

    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$3;->this$0:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    invoke-static {v4}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->access$500(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)F

    move-result v4

    const v5, 0x3fdc6a7f    # 1.722f

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$3;->this$0:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    invoke-static {v5}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->access$700(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->access$402(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;F)F

    .line 262
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$3;->this$0:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->invalidate()V

    .line 263
    return-void
.end method
