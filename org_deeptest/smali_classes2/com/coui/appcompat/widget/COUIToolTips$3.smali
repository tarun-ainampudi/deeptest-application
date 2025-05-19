.class Lcom/coui/appcompat/widget/COUIToolTips$3;
.super Ljava/lang/Object;
.source "COUIToolTips.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIToolTips;->animateEnter()V
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

    .line 573
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIToolTips$3;->this$0:Lcom/coui/appcompat/widget/COUIToolTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 581
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips$3;->this$0:Lcom/coui/appcompat/widget/COUIToolTips;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIToolTips;->access$300(Lcom/coui/appcompat/widget/COUIToolTips;)Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    .line 582
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 587
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 577
    return-void
.end method
