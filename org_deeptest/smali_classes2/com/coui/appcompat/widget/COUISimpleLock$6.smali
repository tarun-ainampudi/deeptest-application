.class Lcom/coui/appcompat/widget/COUISimpleLock$6;
.super Ljava/lang/Object;
.source "COUISimpleLock.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUISimpleLock;->createFailedAnimator()Landroid/animation/Animator;
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

    .line 912
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock$6;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 916
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 917
    .local v0, "value":Ljava/lang/Float;
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock$6;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUISimpleLock;->setInternalTranslationY(F)V

    .line 918
    return-void
.end method
