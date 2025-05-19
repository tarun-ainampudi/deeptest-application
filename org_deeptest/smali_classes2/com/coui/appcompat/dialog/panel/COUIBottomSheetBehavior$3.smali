.class Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "COUIBottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    .line 1407
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;, "Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;"
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method private releasedLow(Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1442
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;, "Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;"
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->parentHeight:I

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-virtual {v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .line 1572
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;, "Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;"
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .line 1558
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;, "Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;"
    const/4 v0, 0x0

    .line 1559
    .local v0, "offset":I
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->access$300(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)Lcom/coui/appcompat/dialog/panel/COUIPanelPullUpListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1560
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-virtual {v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v3

    if-gt v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1561
    .local v1, "canBePulledUp":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1562
    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-static {v3, v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->access$602(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;Z)Z

    .line 1563
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->access$300(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)Lcom/coui/appcompat/dialog/panel/COUIPanelPullUpListener;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-virtual {v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v3

    invoke-interface {v2, p3, v3}, Lcom/coui/appcompat/dialog/panel/COUIPanelPullUpListener;->onDragging(II)I

    move-result v0

    .line 1566
    .end local v1    # "canBePulledUp":Z
    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    .line 1567
    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget-boolean v2, v2, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->hideable:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v2, v2, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->parentHeight:I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v2, v2, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    .line 1566
    :goto_1
    invoke-static {p2, v1, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v1

    return v1
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1577
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;, "Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;"
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget-boolean v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->parentHeight:I

    return v0

    .line 1580
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    return v0
.end method

.method public onViewDragStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 1435
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;, "Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->access$200(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1436
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    .line 1438
    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .line 1430
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;, "Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;"
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-virtual {v0, p3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->dispatchOnSlide(I)V

    .line 1431
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 5
    .param p1, "releasedChild"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .line 1449
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;, "Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;"
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->access$300(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)Lcom/coui/appcompat/dialog/panel/COUIPanelPullUpListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->parentHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1451
    .local v0, "distance":I
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-virtual {v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1452
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->access$300(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)Lcom/coui/appcompat/dialog/panel/COUIPanelPullUpListener;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-virtual {v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/coui/appcompat/dialog/panel/COUIPanelPullUpListener;->onReleased(I)V

    .line 1453
    return-void

    .line 1456
    .end local v0    # "distance":I
    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-gez v1, :cond_3

    .line 1457
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->access$400(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1458
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    .line 1459
    .local v0, "top":I
    const/4 v2, 0x3

    goto/16 :goto_6

    .line 1461
    .end local v0    # "top":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1462
    .local v0, "currentTop":I
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    if-le v0, v1, :cond_2

    .line 1463
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    .line 1464
    .local v1, "top":I
    const/4 v2, 0x6

    .line 1467
    .end local v1    # "top":I
    .local v0, "top":I
    .local v2, "targetState":I
    :goto_0
    move v0, v1

    goto :goto_1

    .line 1466
    .end local v2    # "targetState":I
    .local v0, "currentTop":I
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->expandedOffset:I

    .line 1467
    .restart local v1    # "top":I
    const/4 v2, 0x3

    goto :goto_0

    .line 1469
    .end local v1    # "top":I
    .local v0, "top":I
    .restart local v2    # "targetState":I
    :goto_1
    goto/16 :goto_6

    .line 1470
    .end local v0    # "top":I
    .end local v2    # "targetState":I
    :cond_3
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget-boolean v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->hideable:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-virtual {v1, p1, p3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1471
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->mCOUIPanelDragListener:Lcom/coui/appcompat/dialog/panel/COUIPanelDragListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->mCOUIPanelDragListener:Lcom/coui/appcompat/dialog/panel/COUIPanelDragListener;

    invoke-interface {v0}, Lcom/coui/appcompat/dialog/panel/COUIPanelDragListener;->onDragWhileEditing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1472
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    .line 1473
    .restart local v0    # "top":I
    const/4 v2, 0x3

    .line 1474
    .restart local v2    # "targetState":I
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->access$502(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;Z)Z

    goto/16 :goto_6

    .line 1475
    .end local v0    # "top":I
    .end local v2    # "targetState":I
    :cond_4
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    const/high16 v0, 0x43fa0000    # 500.0f

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_6

    .line 1476
    :cond_5
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->releasedLow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1479
    :cond_6
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->parentHeight:I

    .line 1480
    .restart local v0    # "top":I
    const/4 v2, 0x5

    .line 1481
    .restart local v2    # "targetState":I
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-static {v1, v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->access$502(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;Z)Z

    goto/16 :goto_6

    .line 1482
    .end local v0    # "top":I
    .end local v2    # "targetState":I
    :cond_7
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->access$400(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1483
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    .line 1484
    .restart local v0    # "top":I
    const/4 v2, 0x3

    goto/16 :goto_6

    .line 1485
    .end local v0    # "top":I
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->expandedOffset:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1486
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v2, v2, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 1487
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->expandedOffset:I

    .line 1488
    .restart local v0    # "top":I
    const/4 v2, 0x3

    goto/16 :goto_6

    .line 1490
    .end local v0    # "top":I
    :cond_9
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    .line 1491
    .restart local v0    # "top":I
    const/4 v2, 0x6

    goto/16 :goto_6

    .line 1493
    .end local v0    # "top":I
    :cond_a
    cmpl-float v0, p3, v0

    if-eqz v0, :cond_10

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    goto :goto_3

    .line 1527
    :cond_b
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->access$400(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1528
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->mCOUIPanelDragListener:Lcom/coui/appcompat/dialog/panel/COUIPanelDragListener;

    if-eqz v0, :cond_d

    .line 1529
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->mCOUIPanelDragListener:Lcom/coui/appcompat/dialog/panel/COUIPanelDragListener;

    invoke-interface {v0}, Lcom/coui/appcompat/dialog/panel/COUIPanelDragListener;->onDragWhileEditing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1530
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    .line 1531
    .restart local v0    # "top":I
    const/4 v2, 0x3

    goto/16 :goto_6

    .line 1533
    .end local v0    # "top":I
    :cond_c
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->parentHeight:I

    .line 1534
    .restart local v0    # "top":I
    const/4 v2, 0x5

    goto/16 :goto_6

    .line 1537
    .end local v0    # "top":I
    :cond_d
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    .line 1538
    .restart local v0    # "top":I
    const/4 v2, 0x4

    goto/16 :goto_6

    .line 1542
    .end local v0    # "top":I
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1543
    .local v0, "currentTop":I
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v4, v4, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    sub-int v4, v0, v4

    .line 1544
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v1, v4, :cond_f

    .line 1545
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    .line 1546
    .restart local v1    # "top":I
    const/4 v2, 0x6

    .line 1549
    .end local v1    # "top":I
    .local v0, "top":I
    .restart local v2    # "targetState":I
    :goto_2
    move v0, v1

    goto/16 :goto_6

    .line 1548
    .end local v2    # "targetState":I
    .local v0, "currentTop":I
    :cond_f
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    .line 1549
    .restart local v1    # "top":I
    goto :goto_2

    .line 1496
    .end local v0    # "currentTop":I
    .end local v1    # "top":I
    :cond_10
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1497
    .restart local v0    # "currentTop":I
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->access$400(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1498
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v2, v2, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v0, v2

    .line 1499
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 1500
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    .line 1501
    .restart local v1    # "top":I
    const/4 v2, 0x3

    .line 1522
    .end local v1    # "top":I
    .local v0, "top":I
    .restart local v2    # "targetState":I
    :goto_4
    move v0, v1

    goto :goto_5

    .line 1503
    .end local v2    # "targetState":I
    .local v0, "currentTop":I
    :cond_11
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    .line 1504
    .restart local v1    # "top":I
    const/4 v2, 0x4

    goto :goto_4

    .line 1507
    .end local v1    # "top":I
    :cond_12
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    if-ge v0, v1, :cond_14

    .line 1508
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 1509
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->expandedOffset:I

    .line 1510
    .restart local v1    # "top":I
    const/4 v2, 0x3

    goto :goto_4

    .line 1512
    .end local v1    # "top":I
    :cond_13
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    .line 1513
    .restart local v1    # "top":I
    const/4 v2, 0x6

    goto :goto_4

    .line 1516
    .end local v1    # "top":I
    :cond_14
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v4, v4, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    sub-int v4, v0, v4

    .line 1517
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v1, v4, :cond_15

    .line 1518
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    .line 1519
    .restart local v1    # "top":I
    const/4 v2, 0x6

    goto :goto_4

    .line 1521
    .end local v1    # "top":I
    :cond_15
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    .line 1522
    .restart local v1    # "top":I
    goto :goto_4

    .line 1526
    .end local v1    # "top":I
    .local v0, "top":I
    .restart local v2    # "targetState":I
    :goto_5
    nop

    .line 1549
    :goto_6
    move v1, v2

    .line 1553
    .end local v2    # "targetState":I
    .local v1, "targetState":I
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-virtual {v2, p1, v1, v0, v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->startSettlingAnimation(Landroid/view/View;IIZ)V

    .line 1554
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pointerId"    # I

    .line 1411
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;, "Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;"
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1412
    return v2

    .line 1414
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget-boolean v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->touchingScrollingChild:Z

    if-eqz v0, :cond_1

    .line 1415
    return v2

    .line 1417
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->state:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->activePointerId:I

    if-ne v0, p2, :cond_3

    .line 1418
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1419
    .local v0, "scroll":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_3

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1421
    return v2

    .line 1424
    .end local v0    # "scroll":Landroid/view/View;
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1
.end method
