.class final Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "COUISectionSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PatternExploreByTouchHelper"
.end annotation


# instance fields
.field private mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;Landroid/view/View;)V
    .locals 0
    .param p2, "forView"    # Landroid/view/View;

    .line 777
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    .line 778
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 775
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 779
    return-void
.end method

.method private getBoundsForVirtualView(I)Landroid/graphics/Rect;
    .locals 2
    .param p1, "virtualViewId"    # I

    .line 853
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 854
    .local v0, "bounds":Landroid/graphics/Rect;
    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 855
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 856
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 857
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 858
    return-object v0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 799
    const/4 v0, -0x1

    .line 800
    .local v0, "id":I
    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    .line 801
    const/4 v0, 0x0

    .line 803
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

    .line 808
    .local p1, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 809
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 811
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 783
    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 785
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$900(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)F

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$2300(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v2}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$2400(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v2}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$2500(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 787
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$900(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)F

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v2}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$2600(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v2}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$2400(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v3}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$2500(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 790
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 793
    :cond_1
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 847
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 848
    const/4 v0, 0x0

    return v0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 824
    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 825
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 815
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$1600(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 819
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$1300(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 820
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-static {v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->access$1300(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 833
    const-class v0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 838
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;->getBoundsForVirtualView(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 840
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 841
    return-void
.end method
