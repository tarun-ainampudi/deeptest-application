.class Landroidx/widget/COUIDrawerLayout$ViewDragCallback;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "COUIDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/widget/COUIDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation


# instance fields
.field private final mAbsGravity:I

.field private mDragger:Landroidx/customview/widget/ViewDragHelper;

.field private mLastSettlePosition:I

.field private final mPeekRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Landroidx/widget/COUIDrawerLayout;


# direct methods
.method constructor <init>(Landroidx/widget/COUIDrawerLayout;I)V
    .locals 0
    .param p2, "gravity"    # I

    .line 2385
    iput-object p1, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    .line 2378
    new-instance p1, Landroidx/widget/COUIDrawerLayout$ViewDragCallback$1;

    invoke-direct {p1, p0}, Landroidx/widget/COUIDrawerLayout$ViewDragCallback$1;-><init>(Landroidx/widget/COUIDrawerLayout$ViewDragCallback;)V

    iput-object p1, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    .line 2386
    iput p2, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->mAbsGravity:I

    .line 2387
    return-void
.end method

.method private closeOtherDrawer()V
    .locals 6

    .line 2446
    const/4 v0, 0x0

    .line 2447
    .local v0, "otherView1":Landroid/view/View;
    const/4 v1, 0x0

    .line 2448
    .local v1, "otherView2":Landroid/view/View;
    iget v2, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->mAbsGravity:I

    const/16 v3, 0x50

    const/4 v4, 0x5

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 2458
    :cond_0
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v2, v5}, Landroidx/widget/COUIDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 2459
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v2, v4}, Landroidx/widget/COUIDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 2454
    :cond_1
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v2, v5}, Landroidx/widget/COUIDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 2455
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v2, v3}, Landroidx/widget/COUIDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 2456
    goto :goto_0

    .line 2450
    :cond_2
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v2, v3}, Landroidx/widget/COUIDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 2451
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v2, v4}, Landroidx/widget/COUIDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 2452
    nop

    .line 2462
    :goto_0
    if-eqz v0, :cond_3

    .line 2463
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v2, v0}, Landroidx/widget/COUIDrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 2465
    :cond_3
    if-eqz v1, :cond_4

    .line 2466
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v2, v1}, Landroidx/widget/COUIDrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 2468
    :cond_4
    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .line 2586
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2587
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 2588
    :cond_0
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2589
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v0}, Landroidx/widget/COUIDrawerLayout;->getWidth()I

    move-result v0

    .line 2590
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 2592
    .end local v0    # "width":I
    :cond_1
    return v1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .line 2597
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v0}, Landroidx/widget/COUIDrawerLayout;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-static {v1}, Landroidx/widget/COUIDrawerLayout;->access$400(Landroidx/widget/COUIDrawerLayout;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2598
    .local v0, "viewTop":I
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v1}, Landroidx/widget/COUIDrawerLayout;->getHeight()I

    move-result v1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 2581
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/widget/COUIDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    const/16 v1, 0x50

    invoke-virtual {v0, p1, v1}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onEdgeDragStarted(II)V
    .locals 2
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .line 2566
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2567
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/widget/COUIDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2568
    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2569
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/widget/COUIDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2571
    :cond_1
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroidx/widget/COUIDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 2574
    .local v0, "toCapture":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v1, v0}, Landroidx/widget/COUIDrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_2

    .line 2575
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1, v0, p2}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 2577
    :cond_2
    return-void
.end method

.method public onEdgeLock(I)Z
    .locals 1
    .param p1, "edgeFlags"    # I

    .line 2560
    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeTouched(II)V
    .locals 4
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .line 2511
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/widget/COUIDrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2512
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 2
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .line 2439
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    .line 2440
    .local v0, "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->isPeeking:Z

    .line 2442
    invoke-direct {p0}, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    .line 2443
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 2407
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->getCapturedView()Landroid/view/View;

    move-result-object v0

    .line 2408
    .local v0, "capturedView":Landroid/view/View;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 2409
    if-nez v0, :cond_0

    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v1}, Landroidx/widget/COUIDrawerLayout;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    iput v1, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->mLastSettlePosition:I

    .line 2411
    :cond_1
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    iget v2, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->mAbsGravity:I

    invoke-virtual {v1, v2, p1, v0}, Landroidx/widget/COUIDrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 2412
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .line 2417
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2418
    .local v0, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2420
    .local v1, "childHeight":I
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    const/4 v3, 0x3

    invoke-virtual {v2, p1, v3}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 2421
    add-int v2, v0, p2

    int-to-float v2, v2

    int-to-float v5, v0

    div-float/2addr v2, v5

    goto :goto_1

    .line 2422
    :cond_0
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    const/4 v5, 0x5

    invoke-virtual {v2, p1, v5}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2423
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v2}, Landroidx/widget/COUIDrawerLayout;->getWidth()I

    move-result v2

    .line 2424
    .local v2, "width":I
    sub-int v5, v2, p2

    int-to-float v5, v5

    int-to-float v6, v0

    div-float v2, v5, v6

    .line 2425
    .local v2, "offset":F
    goto :goto_1

    .line 2426
    .end local v2    # "offset":F
    :cond_1
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v2}, Landroidx/widget/COUIDrawerLayout;->getMeasuredHeight()I

    move-result v2

    .line 2427
    .local v2, "height":I
    sub-int v5, v2, p3

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    .line 2428
    .local v5, "offset":F
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 2429
    cmpl-float v6, v5, v4

    if-nez v6, :cond_2

    move v6, v3

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    :goto_0
    invoke-static {p1, v6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 2432
    move v2, v5

    .end local v5    # "offset":F
    .local v2, "offset":F
    :goto_1
    iget-object v5, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v5, p1, v2}, Landroidx/widget/COUIDrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 2433
    cmpl-float v4, v2, v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2434
    iget-object v3, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v3}, Landroidx/widget/COUIDrawerLayout;->invalidate()V

    .line 2435
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 10
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .line 2474
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/widget/COUIDrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v0

    .line 2475
    .local v0, "offset":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 2476
    .local v1, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2478
    .local v2, "childHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2479
    .local v3, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2480
    .local v4, "top":I
    iget-object v5, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    const/4 v6, 0x3

    invoke-virtual {v5, p1, v6}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    .line 2481
    cmpl-float v5, p2, v8

    if-gtz v5, :cond_1

    cmpl-float v5, p2, v8

    if-nez v5, :cond_0

    cmpl-float v5, v0, v6

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    neg-int v7, v1

    nop

    :cond_1
    :goto_0
    move v3, v7

    goto/16 :goto_3

    .line 2482
    :cond_2
    iget-object v5, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    const/4 v9, 0x5

    invoke-virtual {v5, p1, v9}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2483
    iget-object v5, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v5}, Landroidx/widget/COUIDrawerLayout;->getWidth()I

    move-result v5

    .line 2484
    .local v5, "width":I
    cmpg-float v7, p2, v8

    if-ltz v7, :cond_4

    cmpl-float v7, p2, v8

    if-nez v7, :cond_3

    cmpl-float v6, v0, v6

    if-lez v6, :cond_3

    goto :goto_1

    :cond_3
    move v6, v5

    goto :goto_2

    :cond_4
    :goto_1
    sub-int v6, v5, v1

    :goto_2
    move v3, v6

    .line 2485
    .end local v5    # "width":I
    goto :goto_3

    .line 2486
    :cond_5
    iget-object v5, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v5}, Landroidx/widget/COUIDrawerLayout;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v6

    sub-int v4, v5, v6

    .line 2487
    iget-object v5, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroidx/widget/COUIDrawerLayout;->access$002(Landroidx/widget/COUIDrawerLayout;I)I

    .line 2489
    iget v5, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->mLastSettlePosition:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    .line 2497
    .local v5, "dragOffset":I
    iget-object v6, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-static {v6}, Landroidx/widget/COUIDrawerLayout;->access$100(Landroidx/widget/COUIDrawerLayout;)I

    move-result v6

    if-le v5, v6, :cond_6

    .line 2498
    iget-object v6, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v6}, Landroidx/widget/COUIDrawerLayout;->getHeight()I

    move-result v6

    sub-int v4, v6, v2

    .line 2499
    iget-object v6, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-static {v6, v7}, Landroidx/widget/COUIDrawerLayout;->access$002(Landroidx/widget/COUIDrawerLayout;I)I

    goto :goto_3

    .line 2500
    :cond_6
    iget-object v6, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-static {v6}, Landroidx/widget/COUIDrawerLayout;->access$100(Landroidx/widget/COUIDrawerLayout;)I

    move-result v6

    neg-int v6, v6

    if-ge v5, v6, :cond_7

    iget-object v6, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-static {v6}, Landroidx/widget/COUIDrawerLayout;->access$200(Landroidx/widget/COUIDrawerLayout;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2501
    iget-object v6, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-static {v6}, Landroidx/widget/COUIDrawerLayout;->access$300(Landroidx/widget/COUIDrawerLayout;)I

    move-result v4

    .line 2502
    iget-object v6, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroidx/widget/COUIDrawerLayout;->access$002(Landroidx/widget/COUIDrawerLayout;I)I

    .line 2505
    .end local v5    # "dragOffset":I
    :cond_7
    :goto_3
    iget-object v5, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v5, v3, v4}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 2506
    iget-object v5, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v5}, Landroidx/widget/COUIDrawerLayout;->invalidate()V

    .line 2507
    return-void
.end method

.method peekDrawer()V
    .locals 11

    .line 2518
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->getEdgeSize()I

    move-result v0

    .line 2519
    .local v0, "peekDistance":I
    iget v1, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->mAbsGravity:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 2520
    .local v1, "leftEdge":Z
    :goto_0
    iget v5, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->mAbsGravity:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    .line 2521
    .local v5, "rightEdge":Z
    :goto_1
    iget v7, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->mAbsGravity:I

    const/16 v8, 0x50

    if-ne v7, v8, :cond_2

    move v7, v3

    goto :goto_2

    :cond_2
    move v7, v4

    .line 2523
    .local v7, "bottomEdge":Z
    :goto_2
    if-eqz v1, :cond_5

    .line 2524
    iget-object v6, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v6, v2}, Landroidx/widget/COUIDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v2

    .line 2525
    .local v2, "toCapture":Landroid/view/View;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    neg-int v6, v6

    goto :goto_3

    :cond_3
    move v6, v4

    :goto_3
    add-int/2addr v6, v0

    .line 2526
    .local v6, "childLeft":I
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    nop

    :cond_4
    goto :goto_4

    .line 2527
    .end local v2    # "toCapture":Landroid/view/View;
    .end local v6    # "childLeft":I
    :cond_5
    if-eqz v5, :cond_7

    .line 2528
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v2, v6}, Landroidx/widget/COUIDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v2

    .line 2529
    .restart local v2    # "toCapture":Landroid/view/View;
    iget-object v6, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v6}, Landroidx/widget/COUIDrawerLayout;->getWidth()I

    move-result v6

    sub-int/2addr v6, v0

    .line 2530
    .restart local v6    # "childLeft":I
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    nop

    :cond_6
    goto :goto_4

    .line 2532
    .end local v2    # "toCapture":Landroid/view/View;
    .end local v6    # "childLeft":I
    :cond_7
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v2, v8}, Landroidx/widget/COUIDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v2

    .line 2533
    .restart local v2    # "toCapture":Landroid/view/View;
    iget-object v6, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v6}, Landroidx/widget/COUIDrawerLayout;->getHeight()I

    move-result v6

    sub-int/2addr v6, v0

    .line 2534
    .local v6, "childTop":I
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    nop

    :cond_8
    move v10, v6

    move v6, v4

    move v4, v10

    .line 2537
    .local v4, "childTop":I
    .local v6, "childLeft":I
    :goto_4
    if-eqz v2, :cond_c

    if-eqz v1, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v8, v6, :cond_b

    :cond_9
    if-eqz v5, :cond_a

    .line 2538
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v6, :cond_b

    :cond_a
    if-eqz v7, :cond_c

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    if-le v8, v4, :cond_c

    :cond_b
    iget-object v8, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    .line 2539
    invoke-virtual {v8, v2}, Landroidx/widget/COUIDrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v8

    if-nez v8, :cond_c

    .line 2540
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    .line 2541
    .local v8, "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    iget-object v9, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v9, v2, v6, v4}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 2542
    iput-boolean v3, v8, Landroidx/widget/COUIDrawerLayout$LayoutParams;->isPeeking:Z

    .line 2543
    iget-object v3, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v3}, Landroidx/widget/COUIDrawerLayout;->invalidate()V

    .line 2545
    invoke-direct {p0}, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    .line 2547
    iget-object v3, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v3}, Landroidx/widget/COUIDrawerLayout;->cancelChildViewTouch()V

    .line 2549
    .end local v8    # "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    :cond_c
    return-void
.end method

.method public removeCallbacks()V
    .locals 2

    .line 2394
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/widget/COUIDrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2395
    return-void
.end method

.method public setDragger(Landroidx/customview/widget/ViewDragHelper;)V
    .locals 0
    .param p1, "dragger"    # Landroidx/customview/widget/ViewDragHelper;

    .line 2390
    iput-object p1, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 2391
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .line 2401
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/widget/COUIDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    iget v1, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->mAbsGravity:I

    invoke-virtual {v0, p1, v1}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->this$0:Landroidx/widget/COUIDrawerLayout;

    .line 2402
    invoke-virtual {v0, p1}, Landroidx/widget/COUIDrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
