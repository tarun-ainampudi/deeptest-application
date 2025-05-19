.class Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ExpandableRecyclerConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;,
        Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;,
        Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;,
        Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$MyDataSetObserver;,
        Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$EndAnimatorListener;,
        Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;,
        Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;,
        Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$AnimationViewHolder;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x190L

.field private static final ANIMATION_TYPE:I = -0x80000000

.field private static final EXPAND_THRESHOLD:I = 0x2

.field private static final STATE_COLLAPSING:I = 0x2

.field private static final STATE_EXPANDING:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ExpandRecyclerConnector"


# instance fields
.field private animatorSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private cacheChildView:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private expandableRecyclerView:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;

.field private groupInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mExpGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

.field private mMaxExpGroupCount:I

.field private mTotalExpChildrenCount:I

.field private showChildView:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private typeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;)V
    .locals 1
    .param p1, "expandableListAdapter"    # Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;
    .param p2, "recyclerView"    # Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;

    .line 101
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->groupInfo:Landroid/util/SparseArray;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->animatorSparseArray:Landroid/util/SparseArray;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->cacheChildView:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->showChildView:Landroid/util/SparseArray;

    .line 91
    const v0, 0x7fffffff

    iput v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mMaxExpGroupCount:I

    .line 96
    new-instance v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$MyDataSetObserver;-><init>(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 833
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->typeMap:Landroid/util/SparseArray;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 103
    iput-object p2, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;

    .line 104
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->setExpandableListAdapter(Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;)V

    .line 105
    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;)Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    .line 64
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;
    .param p1, "x1"    # I

    .line 64
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->stopAnimation(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->refreshExpGroupMetadataList(ZZ)V

    return-void
.end method

.method private addCache(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .locals 3
    .param p1, "view"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "groupPosition"    # I
    .param p3, "childPosition"    # I

    .line 530
    invoke-direct {p0, p2, p3}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getRealChildType(II)I

    move-result v0

    .line 531
    .local v0, "childType":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->showChildView:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 532
    .local v1, "showViews":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    if-nez v1, :cond_0

    .line 533
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 535
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    iget-object v2, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->showChildView:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 537
    return-void
.end method

.method private collapseAnimationStart(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;III)V
    .locals 10
    .param p1, "dummyView"    # Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;
    .param p2, "flatListPos"    # I
    .param p3, "groupPosition"    # I
    .param p4, "height"    # I

    .line 638
    const-string v0, "ExpandRecyclerConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collapseAnimationStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,groupPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-direct {p0, p3}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getGroupInfo(I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;

    move-result-object v0

    .line 640
    .local v0, "info":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;
    iget-object v1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->animatorSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;

    .line 641
    .local v1, "ani":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;
    if-nez v1, :cond_0

    .line 642
    new-instance v2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;

    iget-object v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;

    const-wide/16 v4, 0x190

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3e99999a    # 0.3f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v6, v7, v9, v9, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;-><init>(Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;JLandroid/animation/TimeInterpolator;)V

    move-object v1, v2

    .line 643
    iget-object v2, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->animatorSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 645
    :cond_0
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->removeAllListeners()V

    .line 646
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->cancel()V

    .line 648
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getItemCount()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    if-ne p2, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    move v4, v2

    :goto_1
    iget v2, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->dummyHeight:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    move v8, p4

    goto :goto_2

    :cond_2
    iget v2, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->dummyHeight:I

    move v8, v2

    :goto_2
    const/4 v9, 0x0

    move-object v2, v1

    move v5, p2

    move-object v6, p1

    move-object v7, v0

    invoke-virtual/range {v2 .. v9}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->setParam(ZZILandroid/view/View;Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;II)V

    .line 650
    new-instance v2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$4;

    invoke-direct {v2, p0, p1, p3}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$4;-><init>(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;I)V

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 659
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->start()V

    .line 660
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;->setTag(Ljava/lang/Object;)V

    .line 661
    return-void
.end method

.method private expandAnimationStart(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;III)V
    .locals 11
    .param p1, "dummyView"    # Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;
    .param p2, "flatListPos"    # I
    .param p3, "groupPosition"    # I
    .param p4, "totalHeight"    # I

    .line 609
    const-string v0, "ExpandRecyclerConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expandAnimationStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,groupPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-direct {p0, p3}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getGroupInfo(I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;

    move-result-object v0

    .line 612
    .local v0, "info":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;
    iget-object v1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->animatorSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;

    .line 613
    .local v1, "ani":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;
    if-nez v1, :cond_0

    .line 614
    new-instance v2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;

    iget-object v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;

    const-wide/16 v4, 0x190

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3e99999a    # 0.3f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v6, v7, v9, v9, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;-><init>(Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;JLandroid/animation/TimeInterpolator;)V

    move-object v1, v2

    .line 615
    iget-object v2, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->animatorSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 617
    :cond_0
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->removeAllListeners()V

    .line 618
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->cancel()V

    .line 620
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getItemCount()I

    move-result v2

    const/4 v10, 0x1

    sub-int/2addr v2, v10

    const/4 v4, 0x0

    if-ne p2, v2, :cond_1

    move v5, v10

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    iget v2, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->dummyHeight:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_2

    move v8, v4

    goto :goto_2

    :cond_2
    iget v2, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->dummyHeight:I

    move v8, v2

    :goto_2
    move-object v2, v1

    move v4, v5

    move v5, p2

    move-object v6, p1

    move-object v7, v0

    move v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->setParam(ZZILandroid/view/View;Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;II)V

    .line 622
    new-instance v2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$3;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$3;-><init>(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;II)V

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 632
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->start()V

    .line 633
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;->setTag(Ljava/lang/Object;)V

    .line 634
    return-void
.end method

.method private getCacheViewHolder(II)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .line 540
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getRealChildType(II)I

    move-result v0

    .line 542
    .local v0, "childType":I
    const/4 v1, 0x0

    .line 543
    .local v1, "cacheView":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v2, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->cacheChildView:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v3, v2

    .local v3, "cacheViews":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    if-eqz v2, :cond_0

    .line 544
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 545
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 548
    :cond_0
    return-object v1
.end method

.method private getChildAllHeight(ZILcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;)I
    .locals 17
    .param p1, "expand"    # Z
    .param p2, "groupPosition"    # I
    .param p3, "dummyView"    # Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;

    .line 553
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    .line 554
    .local v2, "childCount":I
    const/4 v3, 0x0

    .line 555
    .local v3, "groupBottom":I
    if-lez v2, :cond_0

    .line 556
    iget-object v4, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;

    invoke-virtual {v4}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 558
    :cond_0
    const/4 v4, 0x0

    .line 559
    .local v4, "totalHeight":I
    iget-object v5, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;

    .line 560
    invoke-virtual {v5}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->getWidth()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 561
    .local v5, "measureSpecW":I
    const/4 v7, 0x0

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 563
    .local v8, "measureSpecH":I
    if-eqz p1, :cond_1

    iget-object v9, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;

    invoke-virtual {v9}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_1

    .line 564
    iget-object v9, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;

    invoke-virtual {v9}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 565
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 567
    :cond_1
    iget-object v9, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;

    invoke-virtual {v9}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->getBottom()I

    move-result v9

    .line 569
    .local v9, "expandableRecyclerHeight":I
    :goto_0
    iget-object v10, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    invoke-interface {v10, v1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->getChildrenCount(I)I

    move-result v10

    .line 570
    .local v10, "len":I
    move v11, v4

    move v4, v7

    .local v4, "i":I
    .local v11, "totalHeight":I
    :goto_1
    if-ge v4, v10, :cond_7

    .line 571
    invoke-direct {v0, v1, v4}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getCacheViewHolder(II)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v12

    .line 572
    .local v12, "cacheView":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-nez v12, :cond_2

    .line 573
    iget-object v13, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    iget-object v14, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;

    .line 574
    invoke-direct {v0, v1, v4}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getRealChildType(II)I

    move-result v6

    invoke-interface {v13, v14, v6}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->onCreateChildView(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v12

    .line 576
    :cond_2
    invoke-direct {v0, v12, v1, v4}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->addCache(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    .line 577
    iget-object v6, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 578
    .local v6, "childView":Landroid/view/View;
    iget-object v13, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    invoke-interface {v13, v1, v4, v7, v12}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->onBindChildView(IIZLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 580
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 581
    .local v13, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v13, :cond_3

    .line 582
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 583
    invoke-virtual {v6, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    :cond_3
    iget v14, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 589
    .local v14, "lpHeight":I
    if-lez v14, :cond_4

    .line 590
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v14, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    goto :goto_2

    .line 592
    :cond_4
    const/high16 v7, 0x40000000    # 2.0f

    move v15, v8

    .local v15, "childHeightSpec":I
    :goto_2
    move/from16 v16, v15

    .line 595
    .end local v15    # "childHeightSpec":I
    .local v16, "childHeightSpec":I
    iget-object v7, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;

    invoke-virtual {v7}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->getLayoutDirection()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutDirection(I)V

    .line 596
    move/from16 v7, v16

    .end local v16    # "childHeightSpec":I
    .local v7, "childHeightSpec":I
    invoke-virtual {v6, v5, v7}, Landroid/view/View;->measure(II)V

    .line 597
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v11, v15

    .line 598
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;->addFakeView(Landroid/view/View;)V

    .line 599
    if-nez p1, :cond_5

    add-int v0, v11, v3

    if-gt v0, v9, :cond_7

    :cond_5
    if-eqz p1, :cond_6

    sub-int v0, v9, v3

    mul-int/lit8 v0, v0, 0x2

    if-le v11, v0, :cond_6

    .line 601
    goto :goto_3

    .line 570
    .end local v6    # "childView":Landroid/view/View;
    .end local v7    # "childHeightSpec":I
    .end local v12    # "cacheView":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v13    # "p":Landroid/view/ViewGroup$LayoutParams;
    .end local v14    # "lpHeight":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    goto :goto_1

    .line 604
    .end local v4    # "i":I
    :cond_7
    :goto_3
    return v11
.end method

.method private getGroupInfo(I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;
    .locals 3
    .param p1, "groupPosition"    # I

    .line 123
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->groupInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;

    .line 124
    .local v0, "info":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;
    if-nez v0, :cond_0

    .line 125
    new-instance v1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;-><init>(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$1;)V

    move-object v0, v1

    .line 126
    iget-object v1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->groupInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    :cond_0
    return-object v0
.end method

.method private getRealChildType(II)I
    .locals 2
    .param p1, "groupPos"    # I
    .param p2, "childPos"    # I

    .line 837
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    .line 838
    invoke-interface {v0, p1, p2}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->getChildType(II)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    invoke-interface {v1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->getGroupTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 839
    .local v0, "retValue":I
    return v0
.end method

.method private refreshExpGroupMetadataList(ZZ)V
    .locals 11
    .param p1, "forceChildrenCountRefresh"    # Z
    .param p2, "syncGroupPositions"    # Z

    .line 870
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 871
    .local v0, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 872
    .local v1, "egmlSize":I
    const/4 v2, 0x0

    .line 875
    .local v2, "curFlPos":I
    const/4 v3, 0x0

    iput v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mTotalExpChildrenCount:I

    .line 877
    const/4 v4, -0x1

    if-eqz p2, :cond_3

    .line 879
    const/4 v5, 0x0

    .line 881
    .local v5, "positionsChanged":Z
    add-int/lit8 v6, v1, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_2

    .line 882
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    .line 883
    .local v7, "curGm":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    iget-wide v8, v7, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->gId:J

    iget v10, v7, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v8, v9, v10}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->findGroupPosition(JI)I

    move-result v8

    .line 884
    .local v8, "newGPos":I
    iget v9, v7, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    if-eq v8, v9, :cond_1

    .line 885
    if-ne v8, v4, :cond_0

    .line 887
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 888
    add-int/lit8 v1, v1, -0x1

    .line 891
    :cond_0
    iput v8, v7, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    .line 892
    if-nez v5, :cond_1

    .line 893
    const/4 v5, 0x1

    .line 881
    .end local v7    # "curGm":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    .end local v8    # "newGPos":I
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 897
    .end local v6    # "i":I
    :cond_2
    if-eqz v5, :cond_3

    .line 899
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 904
    .end local v5    # "positionsChanged":Z
    :cond_3
    const/4 v5, 0x0

    .line 905
    .local v5, "lastGPos":I
    nop

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_6

    .line 907
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    .line 913
    .local v6, "curGm":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    iget v7, v6, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->lastChildFlPos:I

    if-eq v7, v4, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    .line 919
    :cond_4
    iget v7, v6, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->lastChildFlPos:I

    iget v8, v6, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    sub-int/2addr v7, v8

    goto :goto_3

    .line 914
    :cond_5
    :goto_2
    iget v7, v6, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v7}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getChildCount(I)I

    move-result v7

    .line 919
    .local v7, "gChildrenCount":I
    :goto_3
    nop

    .line 923
    iget v8, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mTotalExpChildrenCount:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mTotalExpChildrenCount:I

    .line 929
    iget v8, v6, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    sub-int/2addr v8, v5

    add-int/2addr v2, v8

    .line 930
    iget v5, v6, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    .line 933
    iput v2, v6, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    .line 934
    add-int/2addr v2, v7

    .line 935
    iput v2, v6, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->lastChildFlPos:I

    .line 905
    .end local v6    # "curGm":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 937
    .end local v3    # "i":I
    .end local v7    # "gChildrenCount":I
    :cond_6
    return-void
.end method

.method private resetCache()V
    .locals 5

    .line 182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->showChildView:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->showChildView:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 184
    .local v1, "views":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    iget-object v2, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->showChildView:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 185
    .local v2, "type":I
    iget-object v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->cacheChildView:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 186
    .local v3, "cache":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    if-nez v3, :cond_0

    .line 187
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 188
    iget-object v4, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->cacheChildView:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    .end local v1    # "views":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    .end local v2    # "type":I
    .end local v3    # "cache":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->showChildView:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 193
    return-void
.end method

.method private startExpandAnimation(I)Z
    .locals 2
    .param p1, "groupPosition"    # I

    .line 132
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getGroupInfo(I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;

    move-result-object v0

    .line 133
    .local v0, "info":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;
    iget-boolean v1, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->animating:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->expanding:Z

    if-eqz v1, :cond_0

    .line 134
    const/4 v1, 0x0

    return v1

    .line 136
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->animating:Z

    .line 137
    iput-boolean v1, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->expanding:Z

    .line 138
    return v1
.end method

.method private stopAnimation(I)V
    .locals 2
    .param p1, "groupPos"    # I

    .line 175
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getGroupInfo(I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;

    move-result-object v0

    .line 176
    .local v0, "info":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->animating:Z

    .line 177
    const/4 v1, -0x1

    iput v1, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->dummyHeight:I

    .line 178
    invoke-direct {p0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->resetCache()V

    .line 179
    return-void
.end method


# virtual methods
.method collapseGroup(I)Z
    .locals 3
    .param p1, "groupPos"    # I

    .line 945
    nop

    .line 946
    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-static {v1, p1, v0, v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->obtain(IIII)Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    move-result-object v0

    .line 947
    .local v0, "elGroupPos":Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getFlattenedPos(Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v1

    .line 948
    .local v1, "pm":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->recycle()V

    .line 949
    if-nez v1, :cond_0

    .line 950
    const/4 v2, 0x0

    return v2

    .line 952
    :cond_0
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->collapseGroup(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;)Z

    move-result v2

    .line 953
    .local v2, "retValue":Z
    return v2
.end method

.method collapseGroup(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;)Z
    .locals 3
    .param p1, "posMetadata"    # Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;

    .line 965
    iget-object v0, p1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->groupMetadata:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 966
    return v1

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->groupMetadata:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 968
    invoke-direct {p0, v1, v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 969
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->notifyItemRangeChanged(II)V

    .line 970
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    iget-object v1, p1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->groupMetadata:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    iget v1, v1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    invoke-interface {v0, v1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->onGroupCollapsed(I)V

    .line 971
    const/4 v0, 0x1

    return v0
.end method

.method public collapseGroupAnimator()V
    .locals 2

    .line 679
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 680
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->notifyItemRangeChanged(II)V

    .line 681
    return-void
.end method

.method expandGroup(I)Z
    .locals 3
    .param p1, "groupPos"    # I

    .line 975
    nop

    .line 976
    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-static {v1, p1, v0, v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->obtain(IIII)Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    move-result-object v0

    .line 977
    .local v0, "elGroupPos":Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getFlattenedPos(Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v1

    .line 978
    .local v1, "pm":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->recycle()V

    .line 979
    if-nez v1, :cond_0

    .line 980
    const/4 v2, 0x0

    return v2

    .line 982
    :cond_0
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandGroup(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;)Z

    move-result v2

    return v2
.end method

.method expandGroup(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;)Z
    .locals 7
    .param p1, "posMetadata"    # Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;

    .line 990
    iget-object v0, p1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    iget v0, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    if-ltz v0, :cond_5

    .line 995
    iget v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mMaxExpGroupCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 996
    return v1

    .line 999
    :cond_0
    iget-object v0, p1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->groupMetadata:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    if-eqz v0, :cond_1

    .line 1000
    return v1

    .line 1003
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mMaxExpGroupCount:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_2

    .line 1007
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    .line 1009
    .local v0, "collapsedGm":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    iget-object v2, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1011
    .local v2, "collapsedIndex":I
    iget v4, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->collapseGroup(I)Z

    .line 1014
    iget v4, p1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->groupInsertIndex:I

    if-le v4, v2, :cond_2

    .line 1015
    iget v4, p1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->groupInsertIndex:I

    sub-int/2addr v4, v3

    iput v4, p1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->groupInsertIndex:I

    .line 1020
    .end local v0    # "collapsedGm":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    .end local v2    # "collapsedIndex":I
    :cond_2
    iget-object v0, p1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    iget v0, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    iget-object v4, p1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    iget v4, v4, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    .line 1021
    invoke-interface {v2, v4}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->getGroupId(I)J

    move-result-wide v4

    .line 1020
    const/4 v2, -0x1

    invoke-static {v2, v2, v0, v4, v5}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->obtain(IIIJ)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    move-result-object v0

    .line 1022
    .local v0, "expandedGm":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    iget-object v2, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    iget-object v4, p1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    iget v4, v4, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->flatListPos:I

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/COUILinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 1023
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;

    invoke-virtual {v5}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;

    invoke-virtual {v6}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_3

    .line 1024
    iget-object v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget v4, p1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1025
    invoke-direct {p0, v1, v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 1026
    iget-object v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    iget v4, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    invoke-interface {v3, v4}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->onGroupExpanded(I)V

    .line 1027
    iget v3, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->notifyItemChanged(I)V

    .line 1028
    return v1

    .line 1031
    :cond_3
    iget v4, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    invoke-direct {p0, v4}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->startExpandAnimation(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1032
    return v1

    .line 1034
    :cond_4
    iget-object v4, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget v5, p1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1035
    invoke-direct {p0, v1, v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 1036
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getItemCount()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->notifyItemRangeChanged(II)V

    .line 1037
    iget-object v1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    iget v4, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    invoke-interface {v1, v4}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->onGroupExpanded(I)V

    .line 1039
    return v3

    .line 992
    .end local v0    # "expandedGm":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    .end local v2    # "child":Landroid/view/View;
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Need group"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method findGroupPosition(JI)I
    .locals 15
    .param p1, "groupIdToMatch"    # J
    .param p3, "seedGroupPosition"    # I

    .line 1113
    move-object v0, p0

    iget-object v1, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    invoke-interface {v1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->getGroupCount()I

    move-result v1

    .line 1115
    .local v1, "count":I
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 1116
    return v2

    .line 1120
    :cond_0
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, p1, v3

    if-nez v3, :cond_1

    .line 1121
    return v2

    .line 1125
    :cond_1
    const/4 v3, 0x0

    move/from16 v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1126
    .end local p3    # "seedGroupPosition":I
    .local v4, "seedGroupPosition":I
    add-int/lit8 v5, v1, -0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x64

    add-long/2addr v5, v7

    .line 1133
    .local v5, "endTime":J
    move v7, v4

    .line 1136
    .local v7, "first":I
    move v8, v4

    .line 1139
    .local v8, "last":I
    const/4 v9, 0x0

    .line 1149
    .local v9, "next":Z
    iget-object v10, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    .line 1150
    .local v10, "adapter":Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;
    if-nez v10, :cond_2

    .line 1151
    return v2

    .line 1154
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    cmp-long v11, v11, v5

    if-gtz v11, :cond_a

    .line 1155
    invoke-interface {v10, v4}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->getGroupId(I)J

    move-result-wide v11

    .line 1156
    .local v11, "rowId":J
    cmp-long v13, v11, p1

    if-nez v13, :cond_3

    .line 1158
    return v4

    .line 1161
    :cond_3
    add-int/lit8 v13, v1, -0x1

    const/4 v14, 0x1

    if-ne v8, v13, :cond_4

    move v13, v14

    goto :goto_1

    :cond_4
    move v13, v3

    .line 1162
    .local v13, "hitLast":Z
    :goto_1
    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    move v14, v3

    .line 1164
    .local v14, "hitFirst":Z
    :goto_2
    if-eqz v13, :cond_6

    if-eqz v14, :cond_6

    .line 1166
    goto :goto_4

    .line 1169
    :cond_6
    if-nez v14, :cond_9

    if-eqz v9, :cond_7

    if-nez v13, :cond_7

    goto :goto_3

    .line 1175
    :cond_7
    if-nez v13, :cond_8

    if-nez v9, :cond_2

    if-nez v14, :cond_2

    .line 1177
    :cond_8
    add-int/lit8 v7, v7, -0x1

    .line 1178
    move v4, v7

    .line 1180
    const/4 v9, 0x1

    goto :goto_0

    .line 1171
    :cond_9
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 1172
    move v4, v8

    .line 1174
    const/4 v9, 0x0

    goto :goto_0

    .line 1185
    .end local v11    # "rowId":J
    .end local v13    # "hitLast":Z
    .end local v14    # "hitFirst":Z
    :cond_a
    :goto_4
    return v2
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .line 462
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method getChildCount(I)I
    .locals 2
    .param p1, "group"    # I

    .line 522
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getGroupInfo(I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;

    move-result-object v0

    .line 523
    .local v0, "info":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;
    iget-boolean v1, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->animating:Z

    if-eqz v1, :cond_0

    .line 524
    const/4 v1, 0x1

    return v1

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    invoke-interface {v1, p1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->getChildrenCount(I)I

    move-result v1

    return v1
.end method

.method getExpandedGroupMetadataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;",
            ">;"
        }
    .end annotation

    .line 1081
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method getFlattenedPos(Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;
    .locals 21
    .param p1, "pos"    # Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    .line 335
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 336
    .local v2, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 339
    .local v3, "numExpGroups":I
    const/4 v4, 0x0

    .line 340
    .local v4, "leftExpGroupIndex":I
    add-int/lit8 v5, v3, -0x1

    .line 341
    .local v5, "rightExpGroupIndex":I
    const/4 v6, 0x0

    .line 344
    .local v6, "midExpGroupIndex":I
    if-nez v3, :cond_0

    .line 349
    iget v7, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    iget v8, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->type:I

    iget v9, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    iget v10, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->childPos:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->obtain(IIIILcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v7

    return-object v7

    .line 356
    :cond_0
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-gt v4, v5, :cond_5

    .line 357
    sub-int v10, v5, v4

    div-int/2addr v10, v8

    add-int v6, v10, v4

    .line 358
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    .line 360
    .local v10, "midExpGm":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    iget v11, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    iget v12, v10, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    if-le v11, v12, :cond_1

    .line 364
    add-int/lit8 v4, v6, 0x1

    goto :goto_0

    .line 365
    :cond_1
    iget v11, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    iget v12, v10, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    if-ge v11, v12, :cond_2

    .line 369
    add-int/lit8 v5, v6, -0x1

    goto :goto_0

    .line 370
    :cond_2
    iget v11, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    iget v12, v10, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    if-ne v11, v12, :cond_0

    .line 375
    iget v11, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->type:I

    if-ne v11, v8, :cond_3

    .line 377
    iget v11, v10, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    iget v12, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->type:I

    iget v13, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    iget v14, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->childPos:I

    move-object v15, v10

    move/from16 v16, v6

    invoke-static/range {v11 .. v16}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->obtain(IIIILcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v7

    return-object v7

    .line 379
    :cond_3
    iget v8, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->type:I

    if-ne v8, v9, :cond_4

    .line 381
    iget v7, v10, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    iget v8, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->childPos:I

    add-int/2addr v7, v8

    add-int/lit8 v11, v7, 0x1

    iget v12, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->type:I

    iget v13, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    iget v14, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->childPos:I

    move-object v15, v10

    move/from16 v16, v6

    invoke-static/range {v11 .. v16}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->obtain(IIIILcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v7

    return-object v7

    .line 384
    :cond_4
    return-object v7

    .line 393
    .end local v10    # "midExpGm":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    :cond_5
    iget v10, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->type:I

    if-eq v10, v8, :cond_6

    .line 395
    return-object v7

    .line 402
    :cond_6
    if-le v4, v6, :cond_7

    .line 411
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    .line 412
    .local v7, "leftExpGm":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    iget v8, v7, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->lastChildFlPos:I

    iget v9, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    iget v10, v7, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    sub-int/2addr v9, v10

    add-int v14, v8, v9

    .line 414
    .local v14, "flPos":I
    iget v9, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->type:I

    iget v10, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    iget v11, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->childPos:I

    const/4 v12, 0x0

    move v8, v14

    move v13, v4

    invoke-static/range {v8 .. v13}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->obtain(IIIILcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v8

    return-object v8

    .line 415
    .end local v7    # "leftExpGm":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    .end local v14    # "flPos":I
    :cond_7
    if-ge v5, v6, :cond_8

    .line 422
    add-int/2addr v5, v9

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    .line 423
    .local v7, "rightExpGm":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    iget v8, v7, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    iget v9, v7, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    iget v10, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    .line 424
    .local v8, "flPos":I
    iget v9, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->type:I

    iget v10, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    iget v11, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->childPos:I

    const/16 v19, 0x0

    move v15, v8

    move/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v20, v5

    invoke-static/range {v15 .. v20}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->obtain(IIIILcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v9

    return-object v9

    .line 426
    .end local v7    # "rightExpGm":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    .end local v8    # "flPos":I
    :cond_8
    return-object v7
.end method

.method public getItemCount()I
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->getGroupCount()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mTotalExpChildrenCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "flatListPos"    # I

    .line 441
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getUnflattenedPos(I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v0

    .line 442
    .local v0, "posMetadata":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;
    iget-object v1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    iget-object v2, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    iget v2, v2, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    invoke-interface {v1, v2}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->getGroupId(I)J

    move-result-wide v1

    .line 445
    .local v1, "groupId":J
    iget-object v3, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    iget v3, v3, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 446
    iget-object v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    invoke-interface {v3, v1, v2}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->getCombinedGroupId(J)J

    move-result-wide v3

    goto :goto_0

    .line 447
    :cond_0
    iget-object v3, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    iget v3, v3, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 448
    iget-object v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    iget-object v4, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    iget v4, v4, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    iget-object v5, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    iget v5, v5, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->childPos:I

    .line 449
    invoke-interface {v3, v4, v5}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->getChildId(II)J

    move-result-wide v3

    .line 450
    .local v3, "childId":J
    iget-object v5, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    invoke-interface {v5, v1, v2, v3, v4}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->getCombinedChildId(JJ)J

    move-result-wide v3

    .line 451
    .local v3, "retValue":J
    nop

    .line 453
    :goto_0
    nop

    .line 456
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->recycle()V

    .line 458
    return-wide v3

    .line 453
    .end local v3    # "retValue":J
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Flat list position is of unknown type"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "flatListPos"    # I

    .line 844
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getUnflattenedPos(I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v0

    .line 845
    .local v0, "metadata":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;
    iget-object v1, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    .line 847
    .local v1, "pos":Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;
    iget v2, v1, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 848
    iget-object v2, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    iget v3, v1, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    invoke-interface {v2, v3}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->getGroupType(I)I

    move-result v2

    goto :goto_0

    .line 849
    :cond_0
    iget v2, v1, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getGroupInfo(I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->animating:Z

    if-eqz v2, :cond_1

    .line 850
    const/high16 v2, -0x80000000

    goto :goto_0

    .line 852
    :cond_1
    iget v2, v1, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    iget v3, v1, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->childPos:I

    invoke-direct {p0, v2, v3}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getRealChildType(II)I

    move-result v2

    .line 855
    .local v2, "retValue":I
    :goto_0
    iget-object v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->typeMap:Landroid/util/SparseArray;

    iget v4, v1, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 856
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->recycle()V

    .line 858
    return v2
.end method

.method getUnflattenedPos(I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;
    .locals 15
    .param p1, "flPos"    # I

    .line 206
    move/from16 v6, p1

    move-object v7, p0

    iget-object v8, v7, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 207
    .local v8, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 210
    .local v9, "numExpGroups":I
    const/4 v10, 0x0

    .line 211
    .local v10, "leftExpGroupIndex":I
    add-int/lit8 v11, v9, -0x1

    .line 212
    .local v11, "rightExpGroupIndex":I
    const/4 v12, 0x0

    .line 215
    .local v12, "midExpGroupIndex":I
    if-nez v9, :cond_0

    .line 220
    const/4 v1, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, p1

    move/from16 v2, p1

    invoke-static/range {v0 .. v5}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->obtain(IIIILcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v0

    return-object v0

    .line 231
    :cond_0
    :goto_0
    if-gt v10, v11, :cond_4

    .line 232
    sub-int v0, v11, v10

    div-int/lit8 v0, v0, 0x2

    add-int v12, v0, v10

    .line 233
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    .line 235
    .local v13, "midExpGm":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    iget v0, v13, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->lastChildFlPos:I

    if-le v6, v0, :cond_1

    .line 240
    add-int/lit8 v10, v12, 0x1

    goto :goto_0

    .line 241
    :cond_1
    iget v0, v13, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    if-ge v6, v0, :cond_2

    .line 245
    add-int/lit8 v11, v12, -0x1

    goto :goto_0

    .line 246
    :cond_2
    iget v0, v13, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    if-ne v6, v0, :cond_3

    .line 250
    const/4 v1, 0x2

    iget v2, v13, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    const/4 v3, -0x1

    move/from16 v0, p1

    move-object v4, v13

    move v5, v12

    invoke-static/range {v0 .. v5}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->obtain(IIIILcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v0

    return-object v0

    .line 252
    :cond_3
    iget v0, v13, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->lastChildFlPos:I

    if-gt v6, v0, :cond_0

    .line 262
    iget v0, v13, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    add-int/lit8 v0, v0, 0x1

    sub-int v14, v6, v0

    .line 263
    .local v14, "childPos":I
    const/4 v1, 0x1

    iget v2, v13, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    move/from16 v0, p1

    move v3, v14

    move-object v4, v13

    move v5, v12

    invoke-static/range {v0 .. v5}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->obtain(IIIILcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v0

    return-object v0

    .line 276
    .end local v13    # "midExpGm":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    .end local v14    # "childPos":I
    :cond_4
    const/4 v0, 0x0

    .line 279
    .local v0, "insertPosition":I
    const/4 v1, 0x0

    .line 285
    .local v1, "groupPos":I
    if-le v10, v12, :cond_5

    .line 292
    add-int/lit8 v2, v10, -0x1

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    .line 294
    .local v2, "leftExpGm":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    move v0, v10

    .line 300
    iget v3, v2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->lastChildFlPos:I

    sub-int v3, v6, v3

    iget v4, v2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    add-int/2addr v3, v4

    .line 301
    .end local v1    # "groupPos":I
    .end local v2    # "leftExpGm":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    .local v3, "groupPos":I
    nop

    .line 322
    .end local v0    # "insertPosition":I
    .end local v3    # "groupPos":I
    .local v11, "groupPos":I
    .local v13, "insertPosition":I
    .local v14, "rightExpGroupIndex":I
    :goto_1
    move v13, v0

    move v14, v11

    move v11, v3

    goto :goto_2

    .line 301
    .end local v13    # "insertPosition":I
    .end local v14    # "rightExpGroupIndex":I
    .restart local v0    # "insertPosition":I
    .restart local v1    # "groupPos":I
    .local v11, "rightExpGroupIndex":I
    :cond_5
    if-ge v11, v12, :cond_6

    .line 307
    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    .line 309
    .local v2, "rightExpGm":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    move v0, v11

    .line 316
    iget v3, v2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    iget v4, v2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    sub-int/2addr v4, v6

    sub-int/2addr v3, v4

    .line 317
    .end local v1    # "groupPos":I
    .end local v2    # "rightExpGm":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    .restart local v3    # "groupPos":I
    goto :goto_1

    .line 322
    .end local v0    # "insertPosition":I
    .end local v3    # "groupPos":I
    .local v11, "groupPos":I
    .restart local v13    # "insertPosition":I
    .restart local v14    # "rightExpGroupIndex":I
    :goto_2
    const/4 v1, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    move/from16 v0, p1

    move v2, v11

    move v5, v13

    invoke-static/range {v0 .. v5}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->obtain(IIIILcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v0

    return-object v0

    .line 319
    .end local v13    # "insertPosition":I
    .end local v14    # "rightExpGroupIndex":I
    .restart local v0    # "insertPosition":I
    .restart local v1    # "groupPos":I
    .local v11, "rightExpGroupIndex":I
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown state"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method isAllAnimatorEnd()Z
    .locals 4

    .line 1063
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUILinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 1064
    .local v0, "first":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/COUILinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 1065
    .local v1, "last":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_1

    .line 1066
    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getGroupInfo(I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;

    move-result-object v3

    iget-boolean v3, v3, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->animating:Z

    if-eqz v3, :cond_0

    .line 1067
    const/4 v3, 0x0

    return v3

    .line 1065
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1070
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public isGroupExpanded(I)Z
    .locals 5
    .param p1, "groupPosition"    # I

    .line 1049
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getGroupInfo(I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;

    move-result-object v0

    .line 1051
    .local v0, "info":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;
    iget-object v1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1052
    iget-object v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    .line 1054
    .local v3, "groupMetadata":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    iget v4, v3, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    if-ne v4, p1, :cond_1

    iget-boolean v4, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->animating:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->expanding:Z

    if-eqz v4, :cond_1

    .line 1055
    :cond_0
    return v2

    .line 1051
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1059
    .end local v1    # "i":I
    .end local v3    # "groupMetadata":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "flatListPos"    # I

    .line 473
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getUnflattenedPos(I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v0

    .line 474
    .local v0, "posMetadata":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;
    iget-object v1, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    iget v1, v1, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    .line 475
    .local v1, "groupPosition":I
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getGroupInfo(I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;

    move-result-object v2

    .line 476
    .local v2, "info":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    iget-object v3, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    iget v3, v3, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 478
    iget-object v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    invoke-interface {v3, v1, v4, p1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->onBindGroupView(IZLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 479
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$1;

    invoke-direct {v4, p0, p2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$1;-><init>(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 485
    :cond_0
    iget-boolean v3, v2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->animating:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    .line 486
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;

    .line 487
    .local v3, "dummyView":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;
    invoke-virtual {v3}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;->clearViews()V

    .line 489
    iget-boolean v7, v2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->expanding:Z

    invoke-direct {p0, v7, v1, v3}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getChildAllHeight(ZILcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;)I

    move-result v7

    .line 490
    .local v7, "totalHeight":I
    iput v7, v2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->totalHeight:I

    .line 491
    iput-object v3, v2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->dummyView:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;

    .line 494
    invoke-virtual {v3}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;->getTag()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    .local v9, "o":Ljava/lang/Object;
    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v9

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 496
    .local v5, "state":I
    :goto_0
    iget-boolean v8, v2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->expanding:Z

    if-eqz v8, :cond_2

    if-eq v5, v6, :cond_2

    .line 497
    invoke-direct {p0, v3, p2, v1, v7}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandAnimationStart(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;III)V

    goto :goto_1

    .line 498
    :cond_2
    iget-boolean v6, v2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->expanding:Z

    if-nez v6, :cond_3

    if-eq v5, v4, :cond_3

    .line 499
    invoke-direct {p0, v3, p2, v1, v7}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->collapseAnimationStart(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;III)V

    goto :goto_1

    .line 501
    :cond_3
    const-string v4, "ExpandRecyclerConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onBindViewHolder: state is no match:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .end local v3    # "dummyView":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;
    .end local v5    # "state":I
    .end local v7    # "totalHeight":I
    .end local v9    # "o":Ljava/lang/Object;
    :goto_1
    goto :goto_2

    :cond_4
    iget-object v3, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    iget v3, v3, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->type:I

    if-ne v3, v6, :cond_7

    .line 504
    iget-object v3, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->groupMetadata:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    iget v3, v3, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v3, p2, :cond_5

    move v5, v6

    nop

    :cond_5
    move v3, v5

    .line 505
    .local v3, "isLastChild":Z
    iget-object v4, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    iget-object v5, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    iget v5, v5, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->childPos:I

    invoke-interface {v4, v1, v5, v3, p1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->onBindChildView(IIZLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 507
    iget-object v4, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    iget-object v5, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    iget v5, v5, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->childPos:I

    invoke-interface {v4, v1, v5}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->isChildSelectable(II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 508
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v5, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$2;

    invoke-direct {v5, p0, p2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$2;-><init>(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    .end local v3    # "isLastChild":Z
    :cond_6
    nop

    .line 518
    :goto_2
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->recycle()V

    .line 519
    return-void

    .line 516
    :cond_7
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Flat list position is of unknown type"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 666
    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    .line 667
    new-instance v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$AnimationViewHolder;

    new-instance v1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$AnimationViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->typeMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 669
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    invoke-interface {v0, p1, p2}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->onCreateGroupView(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->typeMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 671
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    invoke-interface {v0, p1, p2}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->onCreateChildView(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 673
    .local v0, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :goto_0
    nop

    .line 675
    return-object v0

    .line 673
    .end local v0    # "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flat list position is of unknown type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExpandableListAdapter(Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;)V
    .locals 2
    .param p1, "expandableListAdapter"    # Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    .line 113
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    iget-object v1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-interface {v0, v1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    .line 118
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->hasStableIds()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->setHasStableIds(Z)V

    .line 119
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-interface {p1, v0}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 120
    return-void
.end method

.method setExpandedGroupMetadataList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    .line 1086
    .local p1, "expandedGroupMetadataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;>;"
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->getGroupCount()I

    move-result v0

    .line 1093
    .local v0, "numGroups":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1094
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    iget v3, v3, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    if-lt v3, v0, :cond_1

    .line 1096
    return-void

    .line 1093
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1100
    .end local v1    # "i":I
    :cond_2
    iput-object p1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 1101
    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 1102
    return-void

    .line 1087
    .end local v0    # "numGroups":I
    :cond_3
    :goto_1
    return-void
.end method

.method public setMaxExpGroupCount(I)V
    .locals 0
    .param p1, "maxExpGroupCount"    # I

    .line 1077
    iput p1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mMaxExpGroupCount:I

    .line 1078
    return-void
.end method

.method public startCollapseAnimation(I)Z
    .locals 9
    .param p1, "groupPosition"    # I

    .line 145
    nop

    .line 146
    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-static {v1, p1, v0, v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->obtain(IIII)Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    move-result-object v0

    .line 147
    .local v0, "elGroupPos":Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getFlattenedPos(Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v1

    .line 148
    .local v1, "pm":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->recycle()V

    .line 149
    iget-object v2, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    iget-object v3, v1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    iget v3, v3, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->flatListPos:I

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/COUILinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 150
    .local v2, "child":Landroid/view/View;
    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;

    invoke-virtual {v5}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;

    invoke-virtual {v6}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_0

    .line 151
    iget-object v4, v1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->groupMetadata:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    iget v4, v4, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    .line 152
    .local v4, "flatListposition":I
    iget-object v5, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->groupMetadata:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 153
    invoke-direct {p0, v3, v3}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 154
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->notifyItemChanged(I)V

    .line 155
    iget-object v5, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    iget-object v6, v1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->groupMetadata:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    iget v6, v6, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    invoke-interface {v5, v6}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->onGroupCollapsed(I)V

    .line 156
    return v3

    .line 159
    .end local v4    # "flatListposition":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getGroupInfo(I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;

    move-result-object v4

    .line 160
    .local v4, "info":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;
    iget-boolean v5, v4, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->animating:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v4, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->expanding:Z

    if-eqz v5, :cond_1

    .line 161
    iput-boolean v3, v4, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->expanding:Z

    .line 162
    iget-object v5, v4, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->dummyView:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;

    iget-object v6, v1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->groupMetadata:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    iget v6, v6, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    iget v7, v4, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->dummyHeight:I

    invoke-direct {p0, v5, v6, p1, v7}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->collapseAnimationStart(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;III)V

    .line 163
    return v3

    .line 164
    :cond_1
    iget-boolean v5, v4, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->animating:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    iget-boolean v5, v4, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->expanding:Z

    if-nez v5, :cond_2

    .line 165
    iget-object v5, v4, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->dummyView:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;

    iget-object v7, v1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->groupMetadata:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    iget v7, v7, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    iget v8, v4, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->totalHeight:I

    invoke-direct {p0, v5, v7, p1, v8}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandAnimationStart(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;III)V

    .line 166
    iput-boolean v6, v4, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->expanding:Z

    .line 167
    return v3

    .line 169
    :cond_2
    iput-boolean v6, v4, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->animating:Z

    .line 170
    iput-boolean v3, v4, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->expanding:Z

    .line 171
    return v6
.end method
