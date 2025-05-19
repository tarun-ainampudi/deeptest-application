.class Lcom/coui/appcompat/widget/COUILockPatternView$3;
.super Ljava/lang/Object;
.source "COUILockPatternView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUILockPatternView;->startFingerprintNoMatchAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUILockPatternView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUILockPatternView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUILockPatternView;

    .line 637
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView$3;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 640
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 641
    move v3, v0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 642
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUILockPatternView$3;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUILockPatternView;->access$200(Lcom/coui/appcompat/widget/COUILockPatternView;)[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    move-result-object v4

    aget-object v4, v4, v1

    aget-object v4, v4, v3

    .line 643
    .local v4, "cellState":Lcom/coui/appcompat/widget/COUILockPatternView$CellState;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v4, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->innerCircleAlpha:F

    .line 644
    iget v5, v4, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->innerCircleAlpha:F

    const v6, 0x3dcccccd    # 0.1f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    move v5, v0

    :goto_2
    iput-boolean v5, v4, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->needDrawCircle:Z

    .line 641
    .end local v4    # "cellState":Lcom/coui/appcompat/widget/COUILockPatternView$CellState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 640
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 647
    .end local v1    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$3;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILockPatternView;->invalidate()V

    .line 648
    return-void
.end method
