.class Lcom/coui/appcompat/widget/COUILockPatternView$7;
.super Ljava/lang/Object;
.source "COUILockPatternView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUILockPatternView;->startOuterAnimation(Lcom/coui/appcompat/widget/COUILockPatternView$CellState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

.field final synthetic val$cellState:Lcom/coui/appcompat/widget/COUILockPatternView$CellState;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUILockPatternView;Lcom/coui/appcompat/widget/COUILockPatternView$CellState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUILockPatternView;

    .line 884
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView$7;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    iput-object p2, p0, Lcom/coui/appcompat/widget/COUILockPatternView$7;->val$cellState:Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 887
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$7;->val$cellState:Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->outerCircleScale:F

    .line 888
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$7;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILockPatternView;->invalidate()V

    .line 889
    return-void
.end method
