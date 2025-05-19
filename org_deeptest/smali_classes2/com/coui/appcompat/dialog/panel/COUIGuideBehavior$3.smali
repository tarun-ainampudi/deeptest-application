.class Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "COUIGuideBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    .line 1410
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;, "Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;"
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method private releasedLow(Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1445
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;, "Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;"
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->parentHeight:I

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-virtual {v2}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->getExpandedOffset()I

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

    .line 1565
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;, "Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;"
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

    .line 1551
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;, "Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;"
    const/4 v0, 0x0

    .line 1552
    .local v0, "offset":I
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->access$300(Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;)Lcom/coui/appcompat/dialog/panel/COUIPanelPullUpListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1553
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->state:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->state:I

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-virtual {v2}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->getExpandedOffset()I

    move-result v2

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 1554
    .local v1, "canBePulledUp":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 1555
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-static {v2, v3}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->access$602(Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;Z)Z

    .line 1556
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->access$300(Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;)Lcom/coui/appcompat/dialog/panel/COUIPanelPullUpListener;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-virtual {v3}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->getExpandedOffset()I

    move-result v3

    invoke-interface {v2, p3, v3}, Lcom/coui/appcompat/dialog/panel/COUIPanelPullUpListener;->onDragging(II)I

    move-result v0

    .line 1559
    .end local v1    # "canBePulledUp":Z
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    .line 1560
    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->getExpandedOffset()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget-boolean v2, v2, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->hideable:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v2, v2, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->parentHeight:I

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v2, v2, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->collapsedOffset:I

    .line 1559
    :goto_2
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

    .line 1570
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;, "Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;"
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget-boolean v0, v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->hideable:Z

    if-eqz v0, :cond_0

    .line 1571
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->parentHeight:I

    return v0

    .line 1573
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->collapsedOffset:I

    return v0
.end method

.method public onViewDragStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 1438
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;, "Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->access$200(Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1439
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->setStateInternal(I)V

    .line 1441
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

    .line 1433
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;, "Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;"
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-virtual {v0, p3}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->dispatchOnSlide(I)V

    .line 1434
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

    .line 1452
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;, "Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;"
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->access$300(Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;)Lcom/coui/appcompat/dialog/panel/COUIPanelPullUpListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1453
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->parentHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1454
    .local v0, "distance":I
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->getExpandedOffset()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-virtual {v2}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->getExpandedOffset()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1455
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->access$300(Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;)Lcom/coui/appcompat/dialog/panel/COUIPanelPullUpListener;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-virtual {v2}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->getExpandedOffset()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/coui/appcompat/dialog/panel/COUIPanelPullUpListener;->onReleased(I)V

    .line 1456
    return-void

    .line 1459
    .end local v0    # "distance":I
    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-gez v1, :cond_3

    .line 1460
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->access$400(Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1461
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->fitToContentsOffset:I

    .line 1462
    .local v0, "top":I
    const/4 v2, 0x3

    goto/16 :goto_6

    .line 1464
    .end local v0    # "top":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1465
    .local v0, "currentTop":I
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->halfExpandedOffset:I

    if-le v0, v1, :cond_2

    .line 1466
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->halfExpandedOffset:I

    .line 1467
    .local v1, "top":I
    const/4 v2, 0x6

    .line 1470
    .end local v1    # "top":I
    .local v0, "top":I
    .local v2, "targetState":I
    :goto_0
    move v0, v1

    goto :goto_1

    .line 1469
    .end local v2    # "targetState":I
    .local v0, "currentTop":I
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->expandedOffset:I

    .line 1470
    .restart local v1    # "top":I
    const/4 v2, 0x3

    goto :goto_0

    .line 1472
    .end local v1    # "top":I
    .local v0, "top":I
    .restart local v2    # "targetState":I
    :goto_1
    goto/16 :goto_6

    .line 1473
    .end local v0    # "top":I
    .end local v2    # "targetState":I
    :cond_3
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget-boolean v1, v1, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->hideable:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-virtual {v1, p1, p3}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1474
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->mCOUIPanelDragListener:Lcom/coui/appcompat/dialog/panel/COUIPanelDragListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->mCOUIPanelDragListener:Lcom/coui/appcompat/dialog/panel/COUIPanelDragListener;

    invoke-interface {v0}, Lcom/coui/appcompat/dialog/panel/COUIPanelDragListener;->onDragWhileEditing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1475
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->fitToContentsOffset:I

    .line 1476
    .restart local v0    # "top":I
    const/4 v2, 0x3

    .line 1477
    .restart local v2    # "targetState":I
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->access$502(Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;Z)Z

    goto/16 :goto_6

    .line 1478
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

    .line 1479
    :cond_5
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->releasedLow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1482
    :cond_6
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->parentHeight:I

    .line 1483
    .restart local v0    # "top":I
    const/4 v2, 0x5

    .line 1484
    .restart local v2    # "targetState":I
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-static {v1, v3}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->access$502(Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;Z)Z

    goto/16 :goto_6

    .line 1485
    .end local v0    # "top":I
    .end local v2    # "targetState":I
    :cond_7
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->access$400(Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1486
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->fitToContentsOffset:I

    .line 1487
    .restart local v0    # "top":I
    const/4 v2, 0x3

    goto/16 :goto_6

    .line 1488
    .end local v0    # "top":I
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->expandedOffset:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1489
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v2, v2, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->halfExpandedOffset:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 1490
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->expandedOffset:I

    .line 1491
    .restart local v0    # "top":I
    const/4 v2, 0x3

    goto/16 :goto_6

    .line 1493
    .end local v0    # "top":I
    :cond_9
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->halfExpandedOffset:I

    .line 1494
    .restart local v0    # "top":I
    const/4 v2, 0x6

    goto/16 :goto_6

    .line 1496
    .end local v0    # "top":I
    :cond_a
    cmpl-float v0, p3, v0

    if-eqz v0, :cond_e

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    goto :goto_3

    .line 1530
    :cond_b
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->access$400(Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1531
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->collapsedOffset:I

    .line 1532
    .restart local v0    # "top":I
    const/4 v2, 0x4

    goto/16 :goto_6

    .line 1535
    .end local v0    # "top":I
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1536
    .local v0, "currentTop":I
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->halfExpandedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v4, v4, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->collapsedOffset:I

    sub-int v4, v0, v4

    .line 1537
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v1, v4, :cond_d

    .line 1538
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->halfExpandedOffset:I

    .line 1539
    .restart local v1    # "top":I
    const/4 v2, 0x6

    .line 1542
    .end local v1    # "top":I
    .local v0, "top":I
    .restart local v2    # "targetState":I
    :goto_2
    move v0, v1

    goto/16 :goto_6

    .line 1541
    .end local v2    # "targetState":I
    .local v0, "currentTop":I
    :cond_d
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->collapsedOffset:I

    .line 1542
    .restart local v1    # "top":I
    goto :goto_2

    .line 1499
    .end local v0    # "currentTop":I
    .end local v1    # "top":I
    :cond_e
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1500
    .restart local v0    # "currentTop":I
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->access$400(Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1501
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->fitToContentsOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v2, v2, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->collapsedOffset:I

    sub-int v2, v0, v2

    .line 1502
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 1503
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->fitToContentsOffset:I

    .line 1504
    .restart local v1    # "top":I
    const/4 v2, 0x3

    .line 1525
    .end local v1    # "top":I
    .local v0, "top":I
    .restart local v2    # "targetState":I
    :goto_4
    move v0, v1

    goto :goto_5

    .line 1506
    .end local v2    # "targetState":I
    .local v0, "currentTop":I
    :cond_f
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->collapsedOffset:I

    .line 1507
    .restart local v1    # "top":I
    const/4 v2, 0x4

    goto :goto_4

    .line 1510
    .end local v1    # "top":I
    :cond_10
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->halfExpandedOffset:I

    if-ge v0, v1, :cond_12

    .line 1511
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->collapsedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 1512
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->expandedOffset:I

    .line 1513
    .restart local v1    # "top":I
    const/4 v2, 0x3

    goto :goto_4

    .line 1515
    .end local v1    # "top":I
    :cond_11
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->halfExpandedOffset:I

    .line 1516
    .restart local v1    # "top":I
    const/4 v2, 0x6

    goto :goto_4

    .line 1519
    .end local v1    # "top":I
    :cond_12
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->halfExpandedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v4, v4, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->collapsedOffset:I

    sub-int v4, v0, v4

    .line 1520
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v1, v4, :cond_13

    .line 1521
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->halfExpandedOffset:I

    .line 1522
    .restart local v1    # "top":I
    const/4 v2, 0x6

    goto :goto_4

    .line 1524
    .end local v1    # "top":I
    :cond_13
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v1, v1, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->collapsedOffset:I

    .line 1525
    .restart local v1    # "top":I
    goto :goto_4

    .line 1529
    .end local v1    # "top":I
    .local v0, "top":I
    .restart local v2    # "targetState":I
    :goto_5
    nop

    .line 1542
    :goto_6
    move v1, v2

    .line 1546
    .end local v2    # "targetState":I
    .local v1, "targetState":I
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-virtual {v2, p1, v1, v0, v3}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->startSettlingAnimation(Landroid/view/View;IIZ)V

    .line 1547
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pointerId"    # I

    .line 1414
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;, "Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;"
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1415
    return v2

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget-boolean v0, v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->touchingScrollingChild:Z

    if-eqz v0, :cond_1

    .line 1418
    return v2

    .line 1420
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->state:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->activePointerId:I

    if-ne v0, p2, :cond_3

    .line 1421
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1422
    .local v0, "scroll":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_3

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1424
    return v2

    .line 1427
    .end local v0    # "scroll":Landroid/view/View;
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1
.end method
