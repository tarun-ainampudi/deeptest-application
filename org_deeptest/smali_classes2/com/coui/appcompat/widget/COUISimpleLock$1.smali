.class Lcom/coui/appcompat/widget/COUISimpleLock$1;
.super Ljava/lang/Object;
.source "COUISimpleLock.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUISimpleLock;->createMorphingAnimationOutLinedToFilled()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUISimpleLock;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUISimpleLock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUISimpleLock;

    .line 802
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock$1;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 805
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 806
    .local v0, "opacity":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock$1;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/COUISimpleLock;->setOpacity(I)V

    .line 807
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock$1;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->invalidate()V

    .line 808
    return-void
.end method
