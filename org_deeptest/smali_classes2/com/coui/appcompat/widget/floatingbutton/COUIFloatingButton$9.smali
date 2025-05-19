.class Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;
.super Ljava/lang/Object;
.source "COUIFloatingButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->animationFloatingButtonMenuExpand(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

.field final synthetic val$COUIFloatingButtonLabel:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

.field final synthetic val$labelAlphaAnimation:Landroid/animation/ObjectAnimator;

.field final synthetic val$position:I

.field final synthetic val$springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;ILandroid/animation/ObjectAnimator;Landroidx/dynamicanimation/animation/SpringAnimation;Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    .line 1045
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    iput p2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;->val$position:I

    iput-object p3, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;->val$labelAlphaAnimation:Landroid/animation/ObjectAnimator;

    iput-object p4, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;->val$springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p5, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;->val$COUIFloatingButtonLabel:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    iput p6, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1066
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1059
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    iget v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;->val$position:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->access$1500(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->access$1100(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$202(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;Z)Z

    .line 1061
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->access$1600(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->setOnActionSelectedListener(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;)V

    .line 1063
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1069
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1048
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    iget v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;->val$position:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->access$1400(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->access$1100(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$202(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;Z)Z

    .line 1050
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->setOnActionSelectedListener(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;)V

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;->val$labelAlphaAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1053
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;->val$springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 1054
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;->val$COUIFloatingButtonLabel:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    iget v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;->val$visibility:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setVisibility(I)V

    .line 1055
    return-void
.end method
