.class Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$4;
.super Ljava/lang/Object;
.source "COUIFloatingButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->animatePress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    .line 687
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$4;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 690
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$4;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->access$702(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;F)F

    .line 691
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$4;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->access$700(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)F

    move-result v0

    const v1, 0x3f7ae148    # 0.98f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$4;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->access$702(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;F)F

    .line 694
    :cond_0
    return-void
.end method
