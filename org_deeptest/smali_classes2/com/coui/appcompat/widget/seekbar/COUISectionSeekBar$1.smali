.class Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$1;
.super Ljava/lang/Object;
.source "COUISectionSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->initAnimator()V
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

    .line 228
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$1;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 231
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$1;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$002(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;F)F

    .line 232
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 233
    .local v0, "animatedFraction":F
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$1;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$1;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v2}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$200(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$1;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v3}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$200(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3fb56042    # 1.417f

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$1;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v4}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$200(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$102(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;F)F

    .line 234
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$1;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$1;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v2}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$400(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$1;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v3}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$400(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3fdc6a7f    # 1.722f

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$1;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v4}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$400(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$302(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;F)F

    .line 235
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$1;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->invalidate()V

    .line 236
    return-void
.end method
