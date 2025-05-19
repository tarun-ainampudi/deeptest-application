.class Lcom/coui/appcompat/widget/COUISpinner$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUISpinner.java"


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

.field final synthetic val$endValue:F


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUISpinner;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUISpinner;

    .line 593
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISpinner$2;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    iput p2, p0, Lcom/coui/appcompat/widget/COUISpinner$2;->val$endValue:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 596
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$2;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    iget v1, p0, Lcom/coui/appcompat/widget/COUISpinner$2;->val$endValue:F

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISpinner;->access$200(Lcom/coui/appcompat/widget/COUISpinner;F)V

    .line 597
    return-void
.end method
