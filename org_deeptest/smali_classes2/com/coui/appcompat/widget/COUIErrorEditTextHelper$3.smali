.class Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$3;
.super Ljava/lang/Object;
.source "COUIErrorEditTextHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    .line 384
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$3;->this$0:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 387
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$3;->this$0:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->access$600(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$3;->this$0:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->access$702(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;F)F

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$3;->this$0:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->access$100(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->invalidate()V

    .line 391
    return-void
.end method
