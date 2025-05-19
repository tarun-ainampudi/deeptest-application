.class Lcom/coui/appcompat/widget/COUIEditText$3;
.super Ljava/lang/Object;
.source "COUIEditText.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIEditText;->animateToExpansionFraction(F)V
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

    .line 1224
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText$3;->this$0:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 1227
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$3;->this$0:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIEditText;->access$300(Lcom/coui/appcompat/widget/COUIEditText;)Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    move-result-object v0

    .line 1228
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 1227
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setExpansionFraction(F)V

    .line 1229
    return-void
.end method
