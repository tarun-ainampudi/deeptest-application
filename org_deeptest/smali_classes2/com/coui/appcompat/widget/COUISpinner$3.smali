.class Lcom/coui/appcompat/widget/COUISpinner$3;
.super Ljava/lang/Object;
.source "COUISpinner.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUISpinner;->createIconRotateAnimation(FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUISpinner;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUISpinner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUISpinner;

    .line 599
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISpinner$3;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 602
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$3;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISpinner;->access$200(Lcom/coui/appcompat/widget/COUISpinner;F)V

    .line 603
    return-void
.end method
