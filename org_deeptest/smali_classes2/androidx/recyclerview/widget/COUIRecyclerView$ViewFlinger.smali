.class public Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "COUIRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/COUIRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field final synthetic this$0:Landroidx/recyclerview/widget/COUIRecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/COUIRecyclerView;)V
    .locals 1
    .param p1, "this$0"    # Landroidx/recyclerview/widget/COUIRecyclerView;

    .line 1197
    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1189
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1192
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 1195
    iput-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 1204
    return-void
.end method

.method private computeScrollDuration(IIII)I
    .locals 14
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .line 1506
    move-object v0, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1507
    .local v1, "absDx":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1508
    .local v2, "absDy":I
    if-le v1, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1509
    .local v3, "horizontal":Z
    :goto_0
    mul-int v4, p3, p3

    mul-int v5, p4, p4

    add-int/2addr v4, v5

    int-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v4, v5

    .line 1510
    .local v4, "velocity":I
    mul-int v6, p1, p1

    mul-int v7, p2, p2

    add-int/2addr v6, v7

    int-to-double v7, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-int v6, v7

    .line 1511
    .local v6, "delta":I
    if-eqz v3, :cond_1

    iget-object v7, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/COUIRecyclerView;->getWidth()I

    move-result v7

    goto :goto_1

    :cond_1
    iget-object v7, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/COUIRecyclerView;->getHeight()I

    move-result v7

    .line 1512
    .local v7, "containerSize":I
    :goto_1
    div-int/lit8 v8, v7, 0x2

    .line 1513
    .local v8, "halfContainerSize":I
    int-to-float v9, v6

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    int-to-float v11, v7

    div-float/2addr v9, v11

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1514
    .local v9, "distanceRatio":F
    int-to-float v11, v8

    int-to-float v12, v8

    .line 1515
    invoke-direct {p0, v9}, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result v13

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    .line 1518
    .local v11, "distance":F
    if-lez v4, :cond_2

    .line 1519
    const/high16 v10, 0x447a0000    # 1000.0f

    int-to-float v12, v4

    div-float v12, v11, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-int/lit8 v10, v10, 0x4

    goto :goto_3

    .line 1521
    :cond_2
    if-eqz v3, :cond_3

    move v12, v1

    goto :goto_2

    :cond_3
    move v12, v2

    :goto_2
    int-to-float v12, v12

    .line 1522
    .local v12, "absDelta":F
    int-to-float v0, v7

    div-float v0, v12, v0

    add-float/2addr v0, v10

    const/high16 v10, 0x43960000    # 300.0f

    mul-float/2addr v0, v10

    float-to-int v10, v0

    .end local v12    # "absDelta":F
    .local v10, "duration":I
    :goto_3
    move v0, v10

    .line 1524
    .end local v10    # "duration":I
    .local v0, "duration":I
    const/16 v10, 0x7d0

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    return v10
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 2
    .param p1, "f"    # F

    .line 1500
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 1501
    const v0, 0x3ef1463b

    mul-float/2addr p1, v0

    .line 1502
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private internalPostOnAnimation()V
    .locals 1

    .line 1436
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1437
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1438
    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 10
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .line 1441
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    .line 1442
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mLastFlingX:I

    .line 1446
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, v1, :cond_0

    .line 1447
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1448
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/widget/COUIIOverScroller;

    move-result-object v0

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v1}, Lcom/coui/appcompat/widget/COUIIOverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1451
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/widget/COUIIOverScroller;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-interface/range {v1 .. v9}, Lcom/coui/appcompat/widget/COUIIOverScroller;->fling(IIIIIIII)V

    .line 1456
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/widget/COUIIOverScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIIOverScroller;->getCOUIFinalX()I

    move-result v0

    .line 1457
    .local v0, "flingEndX":I
    iget-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/widget/COUIIOverScroller;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$600(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/widget/COUIFlingLocateHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getTargetViewDistance(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/coui/appcompat/widget/COUIIOverScroller;->setFinalX(I)V

    .line 1460
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->postOnAnimation()V

    .line 1461
    return-void
.end method

.method postOnAnimation()V
    .locals 1

    .line 1428
    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    .line 1429
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    goto :goto_0

    .line 1431
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->internalPostOnAnimation()V

    .line 1433
    :goto_0
    return-void
.end method

.method public run()V
    .locals 26

    .line 1208
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 1209
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->stop()V

    .line 1210
    return-void

    .line 1213
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 1214
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 1216
    iget-object v3, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/COUIRecyclerView;->consumePendingUpdateOperations()V

    .line 1236
    iget-object v3, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v3}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/widget/COUIIOverScroller;

    move-result-object v3

    .line 1238
    .local v3, "scroller":Lcom/coui/appcompat/widget/COUIIOverScroller;
    invoke-interface {v3}, Lcom/coui/appcompat/widget/COUIIOverScroller;->computeScrollOffset()Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_15

    .line 1246
    invoke-interface {v3}, Lcom/coui/appcompat/widget/COUIIOverScroller;->getCOUICurrX()I

    move-result v4

    .line 1247
    .local v4, "x":I
    invoke-interface {v3}, Lcom/coui/appcompat/widget/COUIIOverScroller;->getCOUICurrY()I

    move-result v6

    .line 1250
    .local v6, "y":I
    iget v7, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v7, v4, v7

    .line 1251
    .local v7, "unconsumedX":I
    iget v8, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v14, v6, v8

    .line 1252
    .local v14, "unconsumedY":I
    iput v4, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mLastFlingX:I

    .line 1253
    iput v6, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mLastFlingY:I

    .line 1254
    const/4 v15, 0x0

    .line 1255
    .local v15, "consumedX":I
    const/16 v16, 0x0

    .line 1258
    .local v16, "consumedY":I
    iget-object v8, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aput v1, v8, v1

    .line 1259
    iget-object v8, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aput v1, v8, v2

    .line 1260
    iget-object v8, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v11, v9, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    const/4 v12, 0x0

    const/4 v13, 0x1

    move v9, v7

    move v10, v14

    invoke-virtual/range {v8 .. v13}, Landroidx/recyclerview/widget/COUIRecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1262
    iget-object v8, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aget v8, v8, v1

    sub-int/2addr v7, v8

    .line 1263
    iget-object v8, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aget v8, v8, v2

    sub-int/2addr v14, v8

    .line 1278
    :cond_1
    iget-object v8, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/COUIRecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v8, :cond_4

    .line 1279
    iget-object v8, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aput v1, v8, v1

    .line 1280
    iget-object v8, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aput v1, v8, v2

    .line 1281
    iget-object v8, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    invoke-virtual {v8, v7, v14, v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->scrollStep(II[I)V

    .line 1282
    iget-object v8, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aget v15, v8, v1

    .line 1283
    iget-object v8, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aget v8, v8, v2

    .line 1284
    .end local v16    # "consumedY":I
    .local v8, "consumedY":I
    sub-int/2addr v7, v15

    .line 1285
    sub-int/2addr v14, v8

    .line 1289
    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 1290
    .local v9, "smoothScroller":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v10

    if-nez v10, :cond_5

    .line 1291
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1292
    iget-object v10, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v10, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v10

    .line 1293
    .local v10, "adapterSize":I
    if-nez v10, :cond_2

    .line 1294
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_0

    .line 1295
    :cond_2
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v11

    if-lt v11, v10, :cond_3

    .line 1296
    add-int/lit8 v11, v10, -0x1

    invoke-virtual {v9, v11}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 1297
    invoke-virtual {v9, v15, v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    goto :goto_0

    .line 1299
    :cond_3
    invoke-virtual {v9, v15, v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    goto :goto_0

    .line 1304
    .end local v8    # "consumedY":I
    .end local v9    # "smoothScroller":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    .end local v10    # "adapterSize":I
    .restart local v16    # "consumedY":I
    :cond_4
    move/from16 v8, v16

    .end local v16    # "consumedY":I
    .restart local v8    # "consumedY":I
    :cond_5
    :goto_0
    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/COUIRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1305
    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->invalidate()V

    .line 1309
    :cond_6
    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aput v1, v9, v1

    .line 1310
    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aput v1, v9, v2

    .line 1311
    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/16 v21, 0x0

    const/16 v22, 0x1

    iget-object v10, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v10, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    move-object/from16 v16, v9

    move/from16 v17, v15

    move/from16 v18, v8

    move/from16 v19, v7

    move/from16 v20, v14

    move-object/from16 v23, v10

    invoke-virtual/range {v16 .. v23}, Landroidx/recyclerview/widget/COUIRecyclerView;->dispatchNestedScroll(IIII[II[I)V

    .line 1313
    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aget v9, v9, v1

    sub-int/2addr v7, v9

    .line 1314
    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aget v9, v9, v2

    sub-int v9, v14, v9

    .line 1316
    .end local v14    # "unconsumedY":I
    .local v9, "unconsumedY":I
    if-nez v15, :cond_7

    if-eqz v8, :cond_8

    .line 1317
    :cond_7
    iget-object v10, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v10, v15, v8}, Landroidx/recyclerview/widget/COUIRecyclerView;->dispatchOnScrolled(II)V

    .line 1322
    :cond_8
    const/16 v10, 0xe

    if-eqz v9, :cond_a

    .line 1323
    iget-object v11, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-boolean v11, v11, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz v11, :cond_a

    .line 1324
    iget-object v11, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v11, v5}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$102(Landroidx/recyclerview/widget/COUIRecyclerView;I)I

    .line 1325
    iget-object v11, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/COUIRecyclerView;->performHapticFeedback(I)Z

    .line 1326
    iget-object v11, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/16 v17, 0x0

    const/16 v19, 0x0

    iget-object v12, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollY()I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget-object v12, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v12}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$200(Landroidx/recyclerview/widget/COUIRecyclerView;)I

    move-result v24

    const/16 v25, 0x0

    move-object/from16 v16, v11

    move/from16 v18, v9

    invoke-virtual/range {v16 .. v25}, Landroidx/recyclerview/widget/COUIRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    .line 1327
    iget-object v11, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v11}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$300(Landroidx/recyclerview/widget/COUIRecyclerView;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1328
    iget-object v11, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v11}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$400(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/widget/SpringOverScroller;

    move-result-object v11

    invoke-interface {v3}, Lcom/coui/appcompat/widget/COUIIOverScroller;->getCurrVelocityY()F

    move-result v12

    invoke-virtual {v11, v12}, Lcom/coui/appcompat/widget/SpringOverScroller;->setCurrVelocityY(F)V

    .line 1329
    iget-object v11, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v11}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$400(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/widget/SpringOverScroller;

    move-result-object v11

    iget-object v12, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollY()I

    move-result v12

    iget-object v13, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v13}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$200(Landroidx/recyclerview/widget/COUIRecyclerView;)I

    move-result v13

    invoke-virtual {v11, v12, v1, v13}, Lcom/coui/appcompat/widget/SpringOverScroller;->notifyVerticalEdgeReached(III)V

    goto :goto_1

    .line 1331
    :cond_9
    iget-object v11, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v11}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/widget/COUIIOverScroller;

    move-result-object v11

    iget-object v12, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollY()I

    move-result v12

    iget-object v13, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v13}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$200(Landroidx/recyclerview/widget/COUIRecyclerView;)I

    move-result v13

    invoke-interface {v11, v12, v1, v13}, Lcom/coui/appcompat/widget/COUIIOverScroller;->notifyVerticalEdgeReached(III)V

    .line 1336
    :cond_a
    :goto_1
    if-eqz v7, :cond_c

    .line 1337
    iget-object v11, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-boolean v11, v11, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz v11, :cond_c

    .line 1338
    iget-object v11, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v11, v5}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$102(Landroidx/recyclerview/widget/COUIRecyclerView;I)I

    .line 1339
    iget-object v11, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/COUIRecyclerView;->performHapticFeedback(I)Z

    .line 1340
    iget-object v10, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/16 v18, 0x0

    iget-object v11, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollX()I

    move-result v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget-object v11, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v11}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$200(Landroidx/recyclerview/widget/COUIRecyclerView;)I

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v16, v10

    move/from16 v17, v7

    invoke-virtual/range {v16 .. v25}, Landroidx/recyclerview/widget/COUIRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    .line 1341
    iget-object v10, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v10}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$300(Landroidx/recyclerview/widget/COUIRecyclerView;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1342
    iget-object v10, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v10}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$400(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/widget/SpringOverScroller;

    move-result-object v10

    invoke-interface {v3}, Lcom/coui/appcompat/widget/COUIIOverScroller;->getCurrVelocityX()F

    move-result v11

    invoke-virtual {v10, v11}, Lcom/coui/appcompat/widget/SpringOverScroller;->setCurrVelocityX(F)V

    .line 1343
    iget-object v10, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v10}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$400(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/widget/SpringOverScroller;

    move-result-object v10

    iget-object v11, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollX()I

    move-result v11

    iget-object v12, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v12}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$200(Landroidx/recyclerview/widget/COUIRecyclerView;)I

    move-result v12

    invoke-virtual {v10, v11, v1, v12}, Lcom/coui/appcompat/widget/SpringOverScroller;->notifyHorizontalEdgeReached(III)V

    goto :goto_2

    .line 1345
    :cond_b
    iget-object v10, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v10}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/widget/COUIIOverScroller;

    move-result-object v10

    iget-object v11, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollX()I

    move-result v11

    iget-object v12, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v12}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$200(Landroidx/recyclerview/widget/COUIRecyclerView;)I

    move-result v12

    invoke-interface {v10, v11, v1, v12}, Lcom/coui/appcompat/widget/COUIIOverScroller;->notifyHorizontalEdgeReached(III)V

    .line 1351
    :cond_c
    :goto_2
    iget-object v10, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v10}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$500(Landroidx/recyclerview/widget/COUIRecyclerView;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 1352
    iget-object v10, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/COUIRecyclerView;->invalidate()V

    .line 1360
    :cond_d
    invoke-interface {v3}, Lcom/coui/appcompat/widget/COUIIOverScroller;->getCOUICurrX()I

    move-result v10

    invoke-interface {v3}, Lcom/coui/appcompat/widget/COUIIOverScroller;->getCOUIFinalX()I

    move-result v11

    if-ne v10, v11, :cond_e

    move v10, v2

    goto :goto_3

    :cond_e
    move v10, v1

    .line 1361
    .local v10, "scrollerFinishedX":Z
    :goto_3
    invoke-interface {v3}, Lcom/coui/appcompat/widget/COUIIOverScroller;->getCOUICurrY()I

    move-result v11

    invoke-interface {v3}, Lcom/coui/appcompat/widget/COUIIOverScroller;->getCOUIFinalY()I

    move-result v12

    if-ne v11, v12, :cond_f

    move v11, v2

    goto :goto_4

    :cond_f
    move v11, v1

    .line 1362
    .local v11, "scrollerFinishedY":Z
    :goto_4
    invoke-interface {v3}, Lcom/coui/appcompat/widget/COUIIOverScroller;->isCOUIFinished()Z

    move-result v12

    if-nez v12, :cond_12

    if-nez v10, :cond_10

    if-eqz v7, :cond_11

    :cond_10
    if-nez v11, :cond_12

    if-eqz v9, :cond_11

    goto :goto_5

    :cond_11
    move v12, v1

    goto :goto_6

    :cond_12
    :goto_5
    move v12, v2

    .line 1369
    .local v12, "doneScrolling":Z
    :goto_6
    iget-object v13, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v13, v13, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 1370
    .local v13, "smoothScroller":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    if-eqz v13, :cond_13

    .line 1371
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v14

    if-eqz v14, :cond_13

    move v14, v2

    goto :goto_7

    :cond_13
    move v14, v1

    .line 1373
    .local v14, "smoothScrollerPending":Z
    :goto_7
    if-nez v14, :cond_14

    if-eqz v12, :cond_14

    .line 1389
    sget-boolean v16, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v16, :cond_15

    .line 1390
    iget-object v2, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/COUIRecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    goto :goto_8

    .line 1395
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->postOnAnimation()V

    .line 1396
    iget-object v2, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/COUIRecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    if-eqz v2, :cond_15

    .line 1397
    iget-object v2, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/COUIRecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    iget-object v5, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v2, v5, v15, v8}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 1402
    .end local v4    # "x":I
    .end local v6    # "y":I
    .end local v7    # "unconsumedX":I
    .end local v8    # "consumedY":I
    .end local v9    # "unconsumedY":I
    .end local v10    # "scrollerFinishedX":Z
    .end local v11    # "scrollerFinishedY":Z
    .end local v12    # "doneScrolling":Z
    .end local v13    # "smoothScroller":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    .end local v14    # "smoothScrollerPending":Z
    .end local v15    # "consumedX":I
    :cond_15
    :goto_8
    iget-object v2, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 1404
    .local v2, "smoothScroller":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1405
    invoke-virtual {v2, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    .line 1408
    :cond_16
    iput-boolean v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 1409
    iget-boolean v4, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v4, :cond_17

    .line 1410
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->internalPostOnAnimation()V

    goto :goto_9

    .line 1419
    :cond_17
    iget-object v4, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$100(Landroidx/recyclerview/widget/COUIRecyclerView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_18

    iget-object v4, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-nez v4, :cond_19

    .line 1420
    :cond_18
    iget-object v4, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    .line 1421
    iget-object v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->stopNestedScroll(I)V

    .line 1425
    :cond_19
    :goto_9
    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 7
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1467
    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-ne p3, v1, :cond_0

    .line 1468
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result p3

    .line 1470
    :cond_0
    if-nez p4, :cond_1

    .line 1471
    sget-object p4, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 1476
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v1, p4, :cond_2

    .line 1477
    iput-object p4, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1478
    iget-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/widget/COUIIOverScroller;

    move-result-object v1

    invoke-interface {v1, p4}, Lcom/coui/appcompat/widget/COUIIOverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1483
    :cond_2
    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mLastFlingX:I

    .line 1486
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    .line 1487
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/widget/COUIIOverScroller;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/coui/appcompat/widget/COUIIOverScroller;->startScroll(IIIII)V

    .line 1489
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_3

    .line 1493
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/widget/COUIIOverScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIIOverScroller;->computeScrollOffset()Z

    .line 1496
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->postOnAnimation()V

    .line 1497
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1528
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1529
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$700(Landroidx/recyclerview/widget/COUIRecyclerView;Landroid/content/Context;)V

    .line 1530
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/widget/COUIIOverScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIIOverScroller;->abortAnimation()V

    .line 1531
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$400(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/widget/SpringOverScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/SpringOverScroller;->abortAnimation()V

    .line 1532
    return-void
.end method
