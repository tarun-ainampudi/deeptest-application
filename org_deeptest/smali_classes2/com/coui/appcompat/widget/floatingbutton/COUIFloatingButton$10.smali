.class Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;
.super Ljava/lang/Object;
.source "COUIFloatingButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->animationFloatingButtonMenuClose(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

.field final synthetic val$COUIFloatingButtonLabel:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

.field final synthetic val$duration:I

.field final synthetic val$needDrop:Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;IZLcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    .line 1100
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    iput p2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->val$position:I

    iput-boolean p3, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->val$needDrop:Z

    iput-object p4, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->val$COUIFloatingButtonLabel:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    iput p5, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1130
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1116
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->val$COUIFloatingButtonLabel:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->val$position:I

    mul-int/lit8 v2, v2, 0x48

    add-int/lit8 v2, v2, 0x58

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->access$1800(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setTranslationY(F)V

    .line 1117
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->val$COUIFloatingButtonLabel:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->val$COUIFloatingButtonLabel:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 1118
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->val$COUIFloatingButtonLabel:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->val$COUIFloatingButtonLabel:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 1120
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->val$COUIFloatingButtonLabel:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->val$COUIFloatingButtonLabel:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setPivotX(F)V

    .line 1121
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->val$COUIFloatingButtonLabel:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->val$COUIFloatingButtonLabel:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setPivotY(F)V

    .line 1122
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    iget v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->val$position:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->access$1400(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->access$1100(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$202(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;Z)Z

    .line 1125
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1135
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1103
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    iget v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->val$position:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->access$1500(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->access$1100(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$202(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;Z)Z

    .line 1105
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->setOnActionSelectedListener(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;)V

    .line 1107
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->val$needDrop:Z

    if-eqz v0, :cond_1

    .line 1108
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    iget-object v2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->val$COUIFloatingButtonLabel:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    iget v3, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->val$position:I

    iget v4, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->val$duration:I

    invoke-static {v0, v2, v3, v4, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->access$1700(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;IIZ)V

    goto :goto_0

    .line 1110
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->val$COUIFloatingButtonLabel:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    iget v2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->val$position:I

    iget v3, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;->val$duration:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->access$1700(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;IIZ)V

    .line 1112
    :goto_0
    return-void
.end method
