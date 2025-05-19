.class Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;
.super Ljava/lang/Object;
.source "COUISeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    .line 287
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 290
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->access$102(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;F)F

    .line 291
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 292
    .local v0, "animatedFraction":F
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->access$202(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;F)F

    .line 293
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-static {v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->access$400(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-static {v3}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->access$400(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)F

    move-result v3

    const v4, 0x3fb56042    # 1.417f

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-static {v4}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->access$400(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->access$302(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;F)F

    .line 294
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-static {v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->access$600(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-static {v3}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->access$600(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)F

    move-result v3

    const v4, 0x3fdc6a7f    # 1.722f

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-static {v4}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->access$600(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->access$502(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;F)F

    .line 295
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    .line 296
    return-void
.end method
