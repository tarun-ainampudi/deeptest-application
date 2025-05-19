.class Lcom/coui/appcompat/widget/navigation/COUITextScale$1;
.super Ljava/lang/Object;
.source "COUITextScale.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/navigation/COUITextScale;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/navigation/COUITextScale;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/navigation/COUITextScale;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/navigation/COUITextScale;

    .line 76
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/COUITextScale$1;->this$0:Lcom/coui/appcompat/widget/navigation/COUITextScale;

    iput-object p2, p0, Lcom/coui/appcompat/widget/navigation/COUITextScale$1;->val$view:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 79
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 80
    .local v0, "animatedValue":F
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUITextScale$1;->val$view:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 81
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUITextScale$1;->val$view:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setScaleY(F)V

    .line 82
    return-void
.end method
