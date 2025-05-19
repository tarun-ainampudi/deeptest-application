.class public Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;
.super Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;
.source "COUIFloatingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollViewBehavior"
.end annotation


# instance fields
.field private mOnScrollListenerIsAdd:Z

.field objectAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1525
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;-><init>()V

    .line 1522
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;->objectAnimator:Landroid/animation/ObjectAnimator;

    .line 1523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;->mOnScrollListenerIsAdd:Z

    .line 1526
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1529
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1522
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;->objectAnimator:Landroid/animation/ObjectAnimator;

    .line 1523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;->mOnScrollListenerIsAdd:Z

    .line 1530
    return-void
.end method

.method static synthetic access$2000(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;I)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;
    .param p1, "x1"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;
    .param p2, "x2"    # I

    .line 1521
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;->behaviorAnimate(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;I)V

    return-void
.end method

.method private behaviorAnimate(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;I)V
    .locals 5
    .param p1, "COUIFloatingButton"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;
    .param p2, "dy"    # I

    .line 1615
    const/16 v0, 0xa

    if-le p2, v0, :cond_1

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1616
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1617
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1618
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->animationFloatingButtonSlideOut()Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;->objectAnimator:Landroid/animation/ObjectAnimator;

    .line 1619
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;->objectAnimator:Landroid/animation/ObjectAnimator;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->rotateBackward(Z)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1620
    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1621
    const/16 v1, 0xfa

    invoke-virtual {p1, v2, v1, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->closeFloatingButtonMenu(ZIZ)V

    .line 1622
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1623
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    goto :goto_0

    .line 1624
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1625
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->animationFloatingButtonSlideOut()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;->objectAnimator:Landroid/animation/ObjectAnimator;

    .line 1626
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 1629
    :cond_1
    const/16 v0, -0xa

    if-ge p2, v0, :cond_2

    .line 1630
    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->animationFloatingButtonSlideIn(I)V

    .line 1633
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 1
    .param p1, "coordinatorLayout"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "target"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "type"    # I

    .line 1608
    invoke-super/range {p0 .. p7}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V

    .line 1609
    instance-of v0, p2, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    if-eqz v0, :cond_0

    .line 1610
    move-object v0, p2

    check-cast v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-direct {p0, v0, p5}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;->behaviorAnimate(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;I)V

    .line 1612
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 13
    .param p1, "coordinatorLayout"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "directTargetChild"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "target"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "axes"    # I
    .param p6, "type"    # I

    .line 1559
    move-object v0, p0

    move-object/from16 v1, p4

    instance-of v2, v1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 1560
    move-object v2, v1

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    .line 1561
    .local v2, "totalRecyclerViewItemCount":I
    move-object v5, v1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 1563
    iget-boolean v5, v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;->mOnScrollListenerIsAdd:Z

    if-nez v5, :cond_0

    .line 1564
    move-object v5, v1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v6, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior$1;

    move-object v7, p2

    invoke-direct {v6, p0, p2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior$1;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1578
    iput-boolean v3, v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;->mOnScrollListenerIsAdd:Z

    goto :goto_0

    .line 1581
    :cond_0
    move-object v7, p2

    :goto_0
    return v4

    .line 1583
    :cond_1
    move-object v7, p2

    return v4

    .line 1584
    .end local v2    # "totalRecyclerViewItemCount":I
    :cond_2
    move-object v7, p2

    instance-of v2, v1, Landroid/widget/AbsListView;

    if-eqz v2, :cond_5

    .line 1585
    move-object v2, v1

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    .line 1586
    .local v2, "totalCountOfListView":I
    move-object v5, v1

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 1587
    .local v5, "currentVisibleItemCount":I
    move-object v6, v1

    check-cast v6, Landroid/widget/AbsListView;

    invoke-virtual {v6, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1588
    .local v6, "firstItem":Landroid/view/View;
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    .line 1589
    .local v8, "listViewTop":I
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    .line 1590
    .local v9, "listViewBottom":I
    move-object v10, v1

    check-cast v10, Landroid/widget/AbsListView;

    add-int/lit8 v11, v5, -0x1

    invoke-virtual {v10, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1592
    .local v10, "lastItem":Landroid/view/View;
    if-lez v5, :cond_4

    if-lez v2, :cond_4

    .line 1593
    move-object v11, v1

    check-cast v11, Landroid/widget/AbsListView;

    invoke-virtual {v11}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    neg-int v12, v8

    if-lt v11, v12, :cond_3

    .line 1594
    return v4

    .line 1595
    :cond_3
    if-eqz v10, :cond_4

    move-object v11, v1

    check-cast v11, Landroid/widget/AbsListView;

    invoke-virtual {v11}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v11

    add-int/lit8 v12, v2, -0x1

    if-ne v11, v12, :cond_4

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    if-gt v11, v9, :cond_4

    .line 1596
    return v4

    .line 1600
    :cond_4
    return v3

    .line 1602
    .end local v2    # "totalCountOfListView":I
    .end local v5    # "currentVisibleItemCount":I
    .end local v6    # "firstItem":Landroid/view/View;
    .end local v8    # "listViewTop":I
    .end local v9    # "listViewBottom":I
    .end local v10    # "lastItem":Landroid/view/View;
    :cond_5
    return v3
.end method
