.class Lcom/coui/appcompat/widget/COUIEditText$1;
.super Ljava/lang/Object;
.source "COUIEditText.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIEditText;->animateToShowBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIEditText;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIEditText;

    .line 1182
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText$1;->this$0:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 1185
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$1;->this$0:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIEditText;->access$102(Lcom/coui/appcompat/widget/COUIEditText;F)F

    .line 1186
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$1;->this$0:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIEditText;->invalidate()V

    .line 1187
    return-void
.end method
