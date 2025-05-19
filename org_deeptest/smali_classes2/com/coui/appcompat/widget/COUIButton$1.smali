.class Lcom/coui/appcompat/widget/COUIButton$1;
.super Ljava/lang/Object;
.source "COUIButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIButton;->executeScaleAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIButton;

.field final synthetic val$isPressed:Z


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIButton;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIButton;

    .line 217
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIButton$1;->this$0:Lcom/coui/appcompat/widget/COUIButton;

    iput-boolean p2, p0, Lcom/coui/appcompat/widget/COUIButton$1;->val$isPressed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 220
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton$1;->this$0:Lcom/coui/appcompat/widget/COUIButton;

    const-string v1, "scaleHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIButton;->access$002(Lcom/coui/appcompat/widget/COUIButton;F)F

    .line 221
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton$1;->this$0:Lcom/coui/appcompat/widget/COUIButton;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIButton;->access$100(Lcom/coui/appcompat/widget/COUIButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIButton$1;->val$isPressed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton$1;->this$0:Lcom/coui/appcompat/widget/COUIButton;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIButton;->access$000(Lcom/coui/appcompat/widget/COUIButton;)F

    move-result v0

    const v1, 0x3f7d70a4    # 0.99f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 222
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 223
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton$1;->this$0:Lcom/coui/appcompat/widget/COUIButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIButton;->access$200(Lcom/coui/appcompat/widget/COUIButton;Z)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton$1;->this$0:Lcom/coui/appcompat/widget/COUIButton;

    const-string v1, "brightnessHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIButton;->access$302(Lcom/coui/appcompat/widget/COUIButton;F)F

    .line 226
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton$1;->this$0:Lcom/coui/appcompat/widget/COUIButton;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIButton$1;->this$0:Lcom/coui/appcompat/widget/COUIButton;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUIButton;->access$000(Lcom/coui/appcompat/widget/COUIButton;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIButton;->access$400(Lcom/coui/appcompat/widget/COUIButton;F)V

    .line 228
    :goto_0
    return-void
.end method
