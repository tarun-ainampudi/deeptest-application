.class Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$6;
.super Ljava/lang/Object;
.source "COUISectionSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->releaseAnim()V
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

    .line 633
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$6;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 636
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$6;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    const-string v1, "radiusOut"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$302(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;F)F

    .line 637
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$6;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    const-string v1, "radiusIn"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$102(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;F)F

    .line 638
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$6;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    const-string v1, "thumbShadowRadius"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$702(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;I)I

    .line 639
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$6;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    const-string v1, "backgroundRadius"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$002(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;F)F

    .line 640
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$6;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->invalidate()V

    .line 641
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$6;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$6;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$900(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$2200(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;F)I

    move-result v0

    .line 643
    .local v0, "newThumbPos":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$6;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v1, v0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$1700(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;I)V

    .line 645
    .end local v0    # "newThumbPos":I
    :cond_0
    return-void
.end method
