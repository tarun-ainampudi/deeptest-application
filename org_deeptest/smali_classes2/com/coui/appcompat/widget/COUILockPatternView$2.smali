.class Lcom/coui/appcompat/widget/COUILockPatternView$2;
.super Ljava/lang/Object;
.source "COUILockPatternView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUILockPatternView;->startWrongAnimator()V
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

    .line 611
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView$2;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 614
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$2;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUILockPatternView;->access$002(Lcom/coui/appcompat/widget/COUILockPatternView;F)F

    .line 615
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$2;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILockPatternView;->access$100(Lcom/coui/appcompat/widget/COUILockPatternView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    .line 616
    .local v1, "cell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILockPatternView$2;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUILockPatternView;->access$200(Lcom/coui/appcompat/widget/COUILockPatternView;)[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    move-result-object v2

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$300(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$400(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v3

    aget-object v2, v2, v3

    .line 617
    .local v2, "cellState":Lcom/coui/appcompat/widget/COUILockPatternView$CellState;
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUILockPatternView$2;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUILockPatternView;->access$000(Lcom/coui/appcompat/widget/COUILockPatternView;)F

    move-result v3

    iput v3, v2, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->innerCircleAlpha:F

    .line 618
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUILockPatternView$2;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUILockPatternView;->access$000(Lcom/coui/appcompat/widget/COUILockPatternView;)F

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v2, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->needDrawCircle:Z

    .line 619
    .end local v1    # "cell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    .end local v2    # "cellState":Lcom/coui/appcompat/widget/COUILockPatternView$CellState;
    goto :goto_0

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$2;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILockPatternView;->invalidate()V

    .line 621
    return-void
.end method
