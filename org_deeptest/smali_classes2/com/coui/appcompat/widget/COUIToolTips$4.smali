.class Lcom/coui/appcompat/widget/COUIToolTips$4;
.super Ljava/lang/Object;
.source "COUIToolTips.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIToolTips;->animateExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIToolTips;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIToolTips;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIToolTips;

    .line 597
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIToolTips$4;->this$0:Lcom/coui/appcompat/widget/COUIToolTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 605
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips$4;->this$0:Lcom/coui/appcompat/widget/COUIToolTips;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIToolTips;->access$100(Lcom/coui/appcompat/widget/COUIToolTips;)V

    .line 606
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips$4;->this$0:Lcom/coui/appcompat/widget/COUIToolTips;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIToolTips;->access$402(Lcom/coui/appcompat/widget/COUIToolTips;Z)Z

    .line 607
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips$4;->this$0:Lcom/coui/appcompat/widget/COUIToolTips;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIToolTips;->access$300(Lcom/coui/appcompat/widget/COUIToolTips;)Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setProgress(F)V

    .line 608
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 613
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 600
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips$4;->this$0:Lcom/coui/appcompat/widget/COUIToolTips;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIToolTips;->access$402(Lcom/coui/appcompat/widget/COUIToolTips;Z)Z

    .line 601
    return-void
.end method
