.class final Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "COUILockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUILockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PatternExploreByTouchHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
    }
.end annotation


# instance fields
.field private final mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/coui/appcompat/widget/COUILockPatternView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/widget/COUILockPatternView;Landroid/view/View;)V
    .locals 3
    .param p2, "forView"    # Landroid/view/View;

    .line 1497
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    .line 1498
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1485
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1486
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    .line 1499
    const/4 p1, 0x1

    .local p1, "i":I
    :goto_0
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 1500
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    new-instance v1, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;-><init>(Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1499
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1502
    .end local p1    # "i":I
    :cond_0
    return-void
.end method

.method private getBoundsForVirtualView(I)Landroid/graphics/Rect;
    .locals 11
    .param p1, "virtualViewId"    # I

    .line 1617
    add-int/lit8 v0, p1, -0x1

    .line 1618
    .local v0, "ordinal":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1619
    .local v1, "bounds":Landroid/graphics/Rect;
    div-int/lit8 v2, v0, 0x3

    .line 1620
    .local v2, "row":I
    rem-int/lit8 v3, v0, 0x3

    .line 1621
    .local v3, "col":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUILockPatternView;->access$200(Lcom/coui/appcompat/widget/COUILockPatternView;)[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    move-result-object v4

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    .line 1622
    .local v4, "cell":Lcom/coui/appcompat/widget/COUILockPatternView$CellState;
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v5, v3}, Lcom/coui/appcompat/widget/COUILockPatternView;->access$1100(Lcom/coui/appcompat/widget/COUILockPatternView;I)F

    move-result v5

    .line 1623
    .local v5, "centerX":F
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v6, v2}, Lcom/coui/appcompat/widget/COUILockPatternView;->access$1200(Lcom/coui/appcompat/widget/COUILockPatternView;I)F

    move-result v6

    .line 1624
    .local v6, "centerY":F
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v7}, Lcom/coui/appcompat/widget/COUILockPatternView;->access$1300(Lcom/coui/appcompat/widget/COUILockPatternView;)F

    move-result v7

    iget-object v8, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v8}, Lcom/coui/appcompat/widget/COUILockPatternView;->access$1400(Lcom/coui/appcompat/widget/COUILockPatternView;)F

    move-result v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    .line 1625
    .local v7, "cellheight":F
    iget-object v9, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v9}, Lcom/coui/appcompat/widget/COUILockPatternView;->access$1500(Lcom/coui/appcompat/widget/COUILockPatternView;)F

    move-result v9

    iget-object v10, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v10}, Lcom/coui/appcompat/widget/COUILockPatternView;->access$1400(Lcom/coui/appcompat/widget/COUILockPatternView;)F

    move-result v10

    mul-float/2addr v9, v10

    mul-float/2addr v9, v8

    .line 1626
    .local v9, "cellwidth":F
    sub-float v8, v5, v9

    float-to-int v8, v8

    iput v8, v1, Landroid/graphics/Rect;->left:I

    .line 1627
    add-float v8, v5, v9

    float-to-int v8, v8

    iput v8, v1, Landroid/graphics/Rect;->right:I

    .line 1628
    sub-float v8, v6, v7

    float-to-int v8, v8

    iput v8, v1, Landroid/graphics/Rect;->top:I

    .line 1629
    add-float v8, v6, v7

    float-to-int v8, v8

    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    .line 1630
    return-object v1
.end method

.method private getTextForVirtualView(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "virtualViewId"    # I

    .line 1634
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1635
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcoui/support/appcompat/R$string;->lockscreen_access_pattern_cell_added_verbose:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1636
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1635
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getVirtualViewIdForHit(FF)I
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1649
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v0, p2}, Lcom/coui/appcompat/widget/COUILockPatternView;->access$1600(Lcom/coui/appcompat/widget/COUILockPatternView;F)I

    move-result v0

    .line 1650
    .local v0, "rowHit":I
    const/high16 v1, -0x80000000

    if-gez v0, :cond_0

    .line 1651
    return v1

    .line 1653
    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v2, p1}, Lcom/coui/appcompat/widget/COUILockPatternView;->access$1700(Lcom/coui/appcompat/widget/COUILockPatternView;F)I

    move-result v2

    .line 1654
    .local v2, "columnHit":I
    if-gez v2, :cond_1

    .line 1655
    return v1

    .line 1657
    :cond_1
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUILockPatternView;->access$1000(Lcom/coui/appcompat/widget/COUILockPatternView;)[[Z

    move-result-object v3

    aget-object v3, v3, v0

    aget-boolean v3, v3, v2

    .line 1658
    .local v3, "dotAvailable":Z
    mul-int/lit8 v4, v0, 0x3

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    .line 1659
    .local v4, "dotId":I
    if-eqz v3, :cond_2

    move v1, v4

    nop

    .line 1662
    .local v1, "view":I
    :cond_2
    return v1
.end method

.method private isClickable(I)Z
    .locals 3
    .param p1, "virtualViewId"    # I

    .line 1572
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 1573
    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v0, v0, 0x3

    .line 1574
    .local v0, "row":I
    add-int/lit8 v1, p1, -0x1

    rem-int/lit8 v1, v1, 0x3

    .line 1575
    .local v1, "col":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUILockPatternView;->access$1000(Lcom/coui/appcompat/widget/COUILockPatternView;)[[Z

    move-result-object v2

    aget-object v2, v2, v0

    aget-boolean v2, v2, v1

    xor-int/lit8 v2, v2, 0x1

    return v2

    .line 1577
    .end local v0    # "row":I
    .end local v1    # "col":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1508
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->getVirtualViewIdForHit(FF)I

    move-result v0

    .line 1509
    .local v0, "id":I
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

    .line 1515
    .local p1, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILockPatternView;->access$900(Lcom/coui/appcompat/widget/COUILockPatternView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1516
    return-void

    .line 1518
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1521
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1518
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1523
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method onItemClicked(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 1606
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->invalidateVirtualView(I)V

    .line 1611
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 1613
    return v0
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 1585
    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    .line 1596
    const/4 v0, 0x0

    return v0

    .line 1590
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->onItemClicked(I)Z

    move-result v0

    return v0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1562
    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1563
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILockPatternView;->access$900(Lcom/coui/appcompat/widget/COUILockPatternView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1564
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$string;->lockscreen_access_pattern_area:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1566
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1568
    .end local v0    # "contentDescription":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1529
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;

    .line 1530
    .local v0, "container":Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
    if-eqz v0, :cond_0

    .line 1531
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;->description:Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1533
    :cond_0
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1541
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 1542
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1544
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILockPatternView;->access$900(Lcom/coui/appcompat/widget/COUILockPatternView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1545
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 1547
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->isClickable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1549
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1550
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->isClickable(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 1555
    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->getBoundsForVirtualView(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1557
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1558
    return-void
.end method
