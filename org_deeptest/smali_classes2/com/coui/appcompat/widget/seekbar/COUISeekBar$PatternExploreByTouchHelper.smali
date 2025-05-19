.class final Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "COUISeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/seekbar/COUISeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PatternExploreByTouchHelper"
.end annotation


# instance fields
.field private mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;Landroid/view/View;)V
    .locals 0
    .param p2, "forView"    # Landroid/view/View;

    .line 740
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    .line 741
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 738
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 742
    return-void
.end method

.method private getBoundsForVirtualView(I)Landroid/graphics/Rect;
    .locals 2
    .param p1, "virtualViewId"    # I

    .line 817
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 818
    .local v0, "bounds":Landroid/graphics/Rect;
    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 819
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 820
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 821
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 822
    return-object v0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 763
    const/4 v0, -0x1

    .line 764
    .local v0, "id":I
    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    .line 765
    const/4 v0, 0x0

    .line 767
    :cond_0
    return v0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 772
    .local p1, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 773
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 775
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 746
    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 748
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 749
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getProgress()I

    move-result v0

    .line 750
    .local v0, "progress":I
    if-lez v0, :cond_0

    .line 751
    const/16 v1, 0x2000

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 753
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 754
    const/16 v1, 0x1000

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 757
    .end local v0    # "progress":I
    :cond_1
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 811
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 812
    const/4 v0, 0x0

    return v0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 788
    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 789
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 779
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 780
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 782
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-static {v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->access$1100(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 783
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-static {v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->access$1000(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 784
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-static {v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->access$1000(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 797
    const-class v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 802
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;->getBoundsForVirtualView(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 804
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 805
    return-void
.end method
