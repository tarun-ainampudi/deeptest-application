.class Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$5;
.super Ljava/lang/Object;
.source "COUIErrorEditTextHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    .line 413
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$5;->this$0:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 431
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 424
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$5;->this$0:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1, v1}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->access$900(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;ZZZ)V

    .line 425
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$5;->this$0:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->access$1000(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;Z)V

    .line 426
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 436
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 416
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$5;->this$0:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->access$100(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$5;->this$0:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->access$100(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 417
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$5;->this$0:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->access$000(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$5;->this$0:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$5;->this$0:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->access$100(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->access$002(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;F)F

    .line 420
    :cond_0
    return-void
.end method
