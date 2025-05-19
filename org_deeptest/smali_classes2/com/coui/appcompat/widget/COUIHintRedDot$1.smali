.class Lcom/coui/appcompat/widget/COUIHintRedDot$1;
.super Ljava/lang/Object;
.source "COUIHintRedDot.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIHintRedDot;->executeWidthAnim(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIHintRedDot;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIHintRedDot;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIHintRedDot;

    .line 273
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIHintRedDot$1;->this$0:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 276
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot$1;->this$0:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->access$002(Lcom/coui/appcompat/widget/COUIHintRedDot;I)I

    .line 277
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot$1;->this$0:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->requestLayout()V

    .line 278
    return-void
.end method
