.class Lcom/coui/appcompat/widget/COUIAutoCompleteTextView$1;
.super Ljava/lang/Object;
.source "COUIAutoCompleteTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->animateToShowBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;

    .line 668
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView$1;->this$0:Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 671
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView$1;->this$0:Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->access$002(Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;I)I

    .line 672
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView$1;->this$0:Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->invalidate()V

    .line 673
    return-void
.end method
