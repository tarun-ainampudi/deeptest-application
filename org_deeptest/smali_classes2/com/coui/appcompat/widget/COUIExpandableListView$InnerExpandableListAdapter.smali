.class Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "COUIExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerExpandableListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter$MyDataSetObserver;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x190L

.field private static final EXPAND_THRESHOLD:I = 0x2

.field private static final STATE_COLLAPSING:I = 0x2

.field private static final STATE_EXPANDING:I = 0x1

.field private static final STATE_IDLE:I


# instance fields
.field private animatorSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private cacheChildView:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private expandableListView:Lcom/coui/appcompat/widget/COUIExpandableListView;

.field private groupInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private listAdapter:Landroid/widget/ExpandableListAdapter;

.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field private showChildView:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/ExpandableListAdapter;Lcom/coui/appcompat/widget/COUIExpandableListView;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;
    .param p2, "listView"    # Lcom/coui/appcompat/widget/COUIExpandableListView;

    .line 215
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 203
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->groupInfo:Landroid/util/SparseArray;

    .line 205
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->animatorSparseArray:Landroid/util/SparseArray;

    .line 206
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->cacheChildView:Landroid/util/SparseArray;

    .line 207
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->showChildView:Landroid/util/SparseArray;

    .line 210
    new-instance v0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter$MyDataSetObserver;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter$MyDataSetObserver;-><init>(Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 216
    iput-object p2, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->expandableListView:Lcom/coui/appcompat/widget/COUIExpandableListView;

    .line 217
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->listAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->listAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 221
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->listAdapter:Landroid/widget/ExpandableListAdapter;

    .line 222
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->listAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 223
    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;
    .param p1, "x1"    # I

    .line 200
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->startExpandAnimation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;
    .param p1, "x1"    # I

    .line 200
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->stopAnimation(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;
    .param p1, "x1"    # I

    .line 200
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->startCollapseAnimation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;)Lcom/coui/appcompat/widget/COUIExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;

    .line 200
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->expandableListView:Lcom/coui/appcompat/widget/COUIExpandableListView;

    return-object v0
.end method

.method private addCache(Landroid/view/View;II)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "groupPosition"    # I
    .param p3, "childPosition"    # I

    .line 394
    invoke-direct {p0, p2, p3}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->getRealChildType(II)I

    move-result v0

    .line 395
    .local v0, "childType":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->showChildView:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 396
    .local v1, "showViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-nez v1, :cond_0

    .line 397
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 399
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->showChildView:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 401
    return-void
.end method

.method private collapseAnimationStart(Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;IZI)V
    .locals 10
    .param p1, "dummyView"    # Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;
    .param p2, "groupPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "height"    # I

    .line 495
    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->getGroupInfo(I)Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;

    move-result-object v8

    .line 496
    .local v8, "info":Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->animatorSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;

    .line 497
    .local v0, "ani":Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;
    if-nez v0, :cond_0

    .line 498
    new-instance v1, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->expandableListView:Lcom/coui/appcompat/widget/COUIExpandableListView;

    const-wide/16 v3, 0x190

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e99999a    # 0.3f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v5, v6, v9, v9, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;-><init>(Lcom/coui/appcompat/widget/COUIExpandableListView;JLandroid/animation/TimeInterpolator;)V

    move-object v0, v1

    .line 499
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->animatorSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 504
    .end local v0    # "ani":Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;
    .local v9, "ani":Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;
    :goto_0
    move-object v9, v0

    goto :goto_1

    .line 501
    .end local v9    # "ani":Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;
    .restart local v0    # "ani":Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;
    :cond_0
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->removeAllListeners()V

    .line 502
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->cancel()V

    goto :goto_0

    .line 504
    .end local v0    # "ani":Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;
    .restart local v9    # "ani":Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;
    :goto_1
    const/4 v1, 0x0

    iget v0, v8, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->dummyHeight:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move v6, p4

    goto :goto_2

    :cond_1
    iget v0, v8, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->dummyHeight:I

    move v6, v0

    :goto_2
    const/4 v7, 0x0

    move-object v0, v9

    move v2, p3

    move v3, p2

    move-object v4, p1

    move-object v5, v8

    invoke-virtual/range {v0 .. v7}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->setParam(ZZILandroid/view/View;Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;II)V

    .line 506
    new-instance v0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter$2;-><init>(Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;I)V

    invoke-virtual {v9, v0}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 515
    invoke-virtual {v9}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->start()V

    .line 516
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->setTag(Ljava/lang/Object;)V

    .line 517
    return-void
.end method

.method private expandAnimationStart(Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;IZI)V
    .locals 10
    .param p1, "dummyView"    # Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;
    .param p2, "groupPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "totalHeight"    # I

    .line 468
    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->getGroupInfo(I)Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;

    move-result-object v8

    .line 470
    .local v8, "info":Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->animatorSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;

    .line 471
    .local v0, "ani":Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;
    if-nez v0, :cond_0

    .line 472
    new-instance v1, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->expandableListView:Lcom/coui/appcompat/widget/COUIExpandableListView;

    const-wide/16 v3, 0x190

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e99999a    # 0.3f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v5, v6, v9, v9, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;-><init>(Lcom/coui/appcompat/widget/COUIExpandableListView;JLandroid/animation/TimeInterpolator;)V

    move-object v0, v1

    .line 473
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->animatorSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 478
    .end local v0    # "ani":Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;
    .local v9, "ani":Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;
    :goto_0
    move-object v9, v0

    goto :goto_1

    .line 475
    .end local v9    # "ani":Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;
    .restart local v0    # "ani":Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;
    :cond_0
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->removeAllListeners()V

    .line 476
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->cancel()V

    goto :goto_0

    .line 478
    .end local v0    # "ani":Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;
    .restart local v9    # "ani":Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;
    :goto_1
    const/4 v1, 0x1

    iget v0, v8, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->dummyHeight:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_2
    move v6, v0

    goto :goto_3

    :cond_1
    iget v0, v8, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->dummyHeight:I

    goto :goto_2

    :goto_3
    move-object v0, v9

    move v2, p3

    move v3, p2

    move-object v4, p1

    move-object v5, v8

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->setParam(ZZILandroid/view/View;Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;II)V

    .line 480
    new-instance v0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter$1;-><init>(Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;I)V

    invoke-virtual {v9, v0}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 489
    invoke-virtual {v9}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->start()V

    .line 490
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->setTag(Ljava/lang/Object;)V

    .line 491
    return-void
.end method

.method private getAnimationView(IZLandroid/view/View;)Landroid/view/View;
    .locals 8
    .param p1, "groupPosition"    # I
    .param p2, "isLastChild"    # Z
    .param p3, "convertView"    # Landroid/view/View;

    .line 366
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->getGroupInfo(I)Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;

    move-result-object v0

    .line 367
    .local v0, "info":Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;
    instance-of v1, p3, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 368
    new-instance v1, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->expandableListView:Lcom/coui/appcompat/widget/COUIExpandableListView;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;-><init>(Landroid/content/Context;)V

    move-object p3, v1

    .line 369
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    :cond_0
    move-object v1, p3

    check-cast v1, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;

    .line 373
    .local v1, "dummyView":Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->clearViews()V

    .line 374
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->expandableListView:Lcom/coui/appcompat/widget/COUIExpandableListView;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->expandableListView:Lcom/coui/appcompat/widget/COUIExpandableListView;

    invoke-virtual {v4}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->expandableListView:Lcom/coui/appcompat/widget/COUIExpandableListView;

    .line 375
    invoke-virtual {v5}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getDividerHeight()I

    move-result v5

    .line 374
    invoke-virtual {v1, v3, v4, v5}, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->setDivider(Landroid/graphics/drawable/Drawable;II)V

    .line 377
    iget-boolean v3, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->expanding:Z

    invoke-direct {p0, v3, p1, v1}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->getChildAllHeight(ZILcom/coui/appcompat/widget/COUIExpandableListView$DummyView;)I

    move-result v3

    .line 378
    .local v3, "totalHeight":I
    iput-object v1, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->dummyView:Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;

    .line 379
    iput v3, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->totalHeight:I

    .line 381
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->getTag()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    .local v5, "o":Ljava/lang/Object;
    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v5

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 383
    .local v2, "state":I
    :goto_0
    iget-boolean v4, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->expanding:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    .line 384
    invoke-direct {p0, v1, p1, p2, v3}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->expandAnimationStart(Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;IZI)V

    goto :goto_1

    .line 385
    :cond_2
    iget-boolean v4, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->expanding:Z

    if-nez v4, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    .line 386
    invoke-direct {p0, v1, p1, p2, v3}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->collapseAnimationStart(Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;IZI)V

    goto :goto_1

    .line 388
    :cond_3
    const-string v4, "COUIExpandableListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAnimationView: state is no match:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_1
    return-object p3
.end method

.method private getCacheView(II)Landroid/view/View;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .line 404
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->getRealChildType(II)I

    move-result v0

    .line 406
    .local v0, "childType":I
    const/4 v1, 0x0

    .line 407
    .local v1, "cacheView":Landroid/view/View;
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->cacheChildView:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v3, v2

    .local v3, "cacheViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v2, :cond_0

    .line 408
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 409
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    .line 412
    :cond_0
    return-object v1
.end method

.method private getChildAllHeight(ZILcom/coui/appcompat/widget/COUIExpandableListView$DummyView;)I
    .locals 19
    .param p1, "expand"    # Z
    .param p2, "groupPosition"    # I
    .param p3, "dummyView"    # Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;

    .line 417
    move-object/from16 v0, p0

    move/from16 v7, p2

    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->expandableListView:Lcom/coui/appcompat/widget/COUIExpandableListView;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getChildCount()I

    move-result v8

    .line 418
    .local v8, "childCount":I
    const/4 v9, 0x0

    .line 419
    .local v9, "groupBottom":I
    const/4 v10, 0x1

    if-lez v8, :cond_0

    .line 420
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->expandableListView:Lcom/coui/appcompat/widget/COUIExpandableListView;

    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->expandableListView:Lcom/coui/appcompat/widget/COUIExpandableListView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 422
    :cond_0
    const/4 v1, 0x0

    .line 423
    .local v1, "totalHeight":I
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->expandableListView:Lcom/coui/appcompat/widget/COUIExpandableListView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getWidth()I

    move-result v2

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 424
    .local v12, "measureSpecW":I
    const/4 v13, 0x0

    invoke-static {v13, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 427
    .local v14, "measureSpecH":I
    if-eqz p1, :cond_1

    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->expandableListView:Lcom/coui/appcompat/widget/COUIExpandableListView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 428
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->expandableListView:Lcom/coui/appcompat/widget/COUIExpandableListView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 429
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 431
    :cond_1
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->expandableListView:Lcom/coui/appcompat/widget/COUIExpandableListView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getBottom()I

    move-result v2

    .local v2, "expandableListHeight":I
    :goto_0
    move v6, v2

    .line 433
    .end local v2    # "expandableListHeight":I
    .local v6, "expandableListHeight":I
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->listAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2, v7}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    .line 434
    .local v5, "len":I
    move v15, v1

    move v1, v13

    .local v1, "i":I
    .local v15, "totalHeight":I
    :goto_1
    move v4, v1

    .end local v1    # "i":I
    .local v4, "i":I
    if-ge v4, v5, :cond_8

    .line 435
    invoke-direct {v0, v7, v4}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->getCacheView(II)Landroid/view/View;

    move-result-object v16

    .line 436
    .local v16, "cacheView":Landroid/view/View;
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->listAdapter:Landroid/widget/ExpandableListAdapter;

    add-int/lit8 v2, v5, -0x1

    if-ne v4, v2, :cond_2

    move/from16 v17, v10

    goto :goto_2

    :cond_2
    move/from16 v17, v13

    :goto_2
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->expandableListView:Lcom/coui/appcompat/widget/COUIExpandableListView;

    .line 437
    move/from16 v2, p2

    move-object/from16 v18, v3

    move v3, v4

    move v10, v4

    .end local v4    # "i":I
    .local v10, "i":I
    move/from16 v4, v17

    move/from16 v17, v5

    .end local v5    # "len":I
    .local v17, "len":I
    move-object/from16 v5, v16

    move v13, v6

    .end local v6    # "expandableListHeight":I
    .local v13, "expandableListHeight":I
    move-object/from16 v6, v18

    invoke-interface/range {v1 .. v6}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 438
    .local v1, "childView":Landroid/view/View;
    invoke-direct {v0, v1, v7, v10}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->addCache(Landroid/view/View;II)V

    .line 440
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    .line 441
    .local v2, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v2, :cond_3

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    .line 443
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    :cond_3
    iget v3, v2, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 449
    .local v3, "lpHeight":I
    if-lez v3, :cond_4

    .line 450
    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_3

    .line 452
    :cond_4
    move v4, v14

    .line 454
    .local v4, "childHeightSpec":I
    :goto_3
    iget-object v5, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->expandableListView:Lcom/coui/appcompat/widget/COUIExpandableListView;

    invoke-virtual {v5}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getLayoutDirection()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutDirection(I)V

    .line 455
    invoke-virtual {v1, v12, v4}, Landroid/view/View;->measure(II)V

    .line 456
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v15

    .line 457
    .end local v15    # "totalHeight":I
    .local v5, "totalHeight":I
    move-object/from16 v6, p3

    invoke-virtual {v6, v1}, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->addFakeView(Landroid/view/View;)V

    .line 458
    if-nez p1, :cond_5

    add-int v11, v5, v9

    if-gt v11, v13, :cond_6

    :cond_5
    if-eqz p1, :cond_7

    sub-int v11, v13, v9

    mul-int/lit8 v11, v11, 0x2

    if-le v5, v11, :cond_7

    .line 460
    nop

    .line 463
    .end local v1    # "childView":Landroid/view/View;
    .end local v2    # "p":Landroid/widget/AbsListView$LayoutParams;
    .end local v3    # "lpHeight":I
    .end local v4    # "childHeightSpec":I
    .end local v10    # "i":I
    .end local v16    # "cacheView":Landroid/view/View;
    :cond_6
    move v15, v5

    goto :goto_4

    .line 434
    .restart local v10    # "i":I
    :cond_7
    add-int/lit8 v1, v10, 0x1

    move v15, v5

    move v6, v13

    move/from16 v5, v17

    const/4 v10, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v13, 0x0

    goto :goto_1

    .line 463
    .end local v10    # "i":I
    .end local v13    # "expandableListHeight":I
    .end local v17    # "len":I
    .local v5, "len":I
    .restart local v6    # "expandableListHeight":I
    .restart local v15    # "totalHeight":I
    :cond_8
    move/from16 v17, v5

    move v13, v6

    move-object/from16 v6, p3

    .end local v5    # "len":I
    .end local v6    # "expandableListHeight":I
    .restart local v13    # "expandableListHeight":I
    .restart local v17    # "len":I
    :goto_4
    return v15
.end method

.method private getGroupInfo(I)Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;
    .locals 3
    .param p1, "groupPosition"    # I

    .line 238
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->groupInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;

    .line 239
    .local v0, "info":Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;
    if-nez v0, :cond_0

    .line 240
    new-instance v1, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;-><init>(Lcom/coui/appcompat/widget/COUIExpandableListView$1;)V

    move-object v0, v1

    .line 241
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->groupInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    :cond_0
    return-object v0
.end method

.method private getRealChildType(II)I
    .locals 3
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .line 320
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->listAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v0, v0, Landroid/widget/HeterogeneousExpandableList;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->listAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 322
    invoke-interface {v0, p1, p2}, Landroid/widget/HeterogeneousExpandableList;->getChildType(II)I

    move-result v0

    add-int/2addr v0, v1

    .line 323
    .local v0, "retValue":I
    if-ltz v0, :cond_0

    .line 326
    return v0

    .line 324
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "getChildType must is greater than 0"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    .end local v0    # "retValue":I
    :cond_1
    return v1
.end method

.method private isAllAnimatorEnd()Z
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->expandableListView:Lcom/coui/appcompat/widget/COUIExpandableListView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getFirstVisiblePosition()I

    move-result v0

    .line 253
    .local v0, "first":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->expandableListView:Lcom/coui/appcompat/widget/COUIExpandableListView;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getLastVisiblePosition()I

    move-result v1

    .line 254
    .local v1, "last":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_1

    .line 255
    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->getGroupInfo(I)Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;

    move-result-object v3

    iget-boolean v3, v3, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->animating:Z

    if-eqz v3, :cond_0

    .line 256
    const/4 v3, 0x0

    return v3

    .line 254
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private isGroupExpanded(I)Z
    .locals 2
    .param p1, "groupPos"    # I

    .line 247
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->getGroupInfo(I)Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;

    move-result-object v0

    .line 248
    .local v0, "info":Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->expandableListView:Lcom/coui/appcompat/widget/COUIExpandableListView;

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/widget/COUIExpandableListView;->isGroupExpanded(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->animating:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->expanding:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private resetCache()V
    .locals 5

    .line 297
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->showChildView:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->showChildView:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 299
    .local v1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->showChildView:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 300
    .local v2, "type":I
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->cacheChildView:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 301
    .local v3, "cache":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-nez v3, :cond_0

    .line 302
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 303
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->cacheChildView:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 305
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 297
    .end local v1    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v2    # "type":I
    .end local v3    # "cache":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->showChildView:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 308
    return-void
.end method

.method private startCollapseAnimation(I)Z
    .locals 6
    .param p1, "groupPosition"    # I

    .line 273
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->getGroupInfo(I)Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;

    move-result-object v0

    .line 274
    .local v0, "info":Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;
    iget-boolean v1, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->animating:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->expanding:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->dummyView:Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;

    if-eqz v1, :cond_0

    .line 275
    iput-boolean v2, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->expanding:Z

    .line 276
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->dummyView:Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;

    iget-boolean v3, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->isLastChild:Z

    iget v4, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->dummyHeight:I

    invoke-direct {p0, v1, p1, v3, v4}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->collapseAnimationStart(Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;IZI)V

    .line 277
    return v2

    .line 278
    :cond_0
    iget-boolean v1, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->animating:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->expanding:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->dummyView:Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->dummyView:Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;

    iget-boolean v4, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->isLastChild:Z

    iget v5, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->totalHeight:I

    invoke-direct {p0, v1, p1, v4, v5}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->expandAnimationStart(Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;IZI)V

    .line 280
    iput-boolean v3, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->expanding:Z

    .line 281
    return v2

    .line 284
    :cond_1
    iput-boolean v3, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->animating:Z

    .line 285
    iput-boolean v2, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->expanding:Z

    .line 286
    return v3
.end method

.method private startExpandAnimation(I)Z
    .locals 2
    .param p1, "groupPosition"    # I

    .line 263
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->getGroupInfo(I)Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;

    move-result-object v0

    .line 264
    .local v0, "info":Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;
    iget-boolean v1, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->animating:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->expanding:Z

    if-eqz v1, :cond_0

    .line 265
    const/4 v1, 0x0

    return v1

    .line 267
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->animating:Z

    .line 268
    iput-boolean v1, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->expanding:Z

    .line 269
    return v1
.end method

.method private stopAnimation(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    .line 290
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->getGroupInfo(I)Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;

    move-result-object v0

    .line 291
    .local v0, "info":Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;
    const/4 v1, -0x1

    iput v1, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->dummyHeight:I

    .line 292
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->animating:Z

    .line 293
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->resetCache()V

    .line 294
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .line 345
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .line 545
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->listAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, p1, p1}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .line 555
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->listAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, p1, p2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getChildType(II)I
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .line 312
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->getGroupInfo(I)Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;

    move-result-object v0

    .line 313
    .local v0, "info":Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;
    iget-boolean v1, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->animating:Z

    if-eqz v1, :cond_0

    .line 314
    const/high16 v1, -0x80000000

    return v1

    .line 316
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->getRealChildType(II)I

    move-result v1

    return v1
.end method

.method public final getChildTypeCount()I
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->listAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v0, v0, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->listAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getChildTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 341
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .line 355
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->getGroupInfo(I)Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;

    move-result-object v0

    .line 356
    .local v0, "info":Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;
    iput-boolean p3, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->isLastChild:Z

    .line 357
    iget-boolean v1, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->animating:Z

    if-eqz v1, :cond_1

    .line 358
    const/4 v1, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->getGroupCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, v1, p4}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->getAnimationView(IZLandroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 361
    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->listAdapter:Landroid/widget/ExpandableListAdapter;

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public final getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .line 530
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->getGroupInfo(I)Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;

    move-result-object v0

    .line 531
    .local v0, "info":Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;
    iget-boolean v1, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->animating:Z

    if-eqz v1, :cond_0

    .line 532
    const/4 v1, 0x1

    return v1

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->listAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v1

    return v1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .line 540
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->listAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->listAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "i"    # I

    .line 550
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->listAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "i"    # I
    .param p2, "b"    # Z
    .param p3, "view"    # Landroid/view/View;
    .param p4, "viewGroup"    # Landroid/view/ViewGroup;

    .line 565
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->listAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->listAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 2
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .line 521
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->getGroupInfo(I)Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;

    move-result-object v0

    .line 522
    .local v0, "info":Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;
    iget-boolean v1, v0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->animating:Z

    if-eqz v1, :cond_0

    .line 523
    const/4 v1, 0x0

    return v1

    .line 525
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->listAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1, p1, p2}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v1

    return v1
.end method
