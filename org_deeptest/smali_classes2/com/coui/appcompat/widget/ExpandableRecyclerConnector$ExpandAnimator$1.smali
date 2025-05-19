.class Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;
.super Ljava/lang/Object;
.source "ExpandableRecyclerConnector.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->setParam(ZZILandroid/view/View;Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;

.field final synthetic val$expand:Z

.field final synthetic val$flatPos:I

.field final synthetic val$groupInfo:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;

.field final synthetic val$isLastChild:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;ZIZLandroid/view/View;Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;

    .line 768
    iput-object p1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;

    iput-boolean p2, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$isLastChild:Z

    iput p3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$flatPos:I

    iput-boolean p4, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$expand:Z

    iput-object p5, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$view:Landroid/view/View;

    iput-object p6, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$groupInfo:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 771
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;

    invoke-static {v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->access$500(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;

    .line 772
    .local v0, "recyclerView":Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;
    if-nez v0, :cond_0

    .line 773
    iget-object v1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;

    invoke-static {v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->access$600(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;)V

    .line 774
    return-void

    .line 777
    :cond_0
    nop

    .line 778
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/COUILinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 779
    .local v1, "firstVisibleItemPosition":I
    nop

    .line 780
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/COUILinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .line 783
    .local v2, "lastVisibleItemPosition":I
    iget-object v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;

    invoke-static {v3}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->access$700(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$isLastChild:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$flatPos:I

    if-gt v1, v3, :cond_1

    iget v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$flatPos:I

    if-ge v2, v3, :cond_2

    .line 785
    :cond_1
    const-string v3, "ExpandRecyclerConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAnimationUpdate1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$flatPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;

    invoke-static {v3}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->access$600(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;)V

    .line 788
    return-void

    .line 792
    :cond_2
    iget-object v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;

    invoke-static {v3}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->access$700(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$isLastChild:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$expand:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$flatPos:I

    if-ne v3, v2, :cond_3

    .line 793
    const-string v3, "ExpandRecyclerConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAnimationUpdate2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$flatPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;

    invoke-static {v3}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->access$600(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;)V

    .line 795
    return-void

    .line 798
    :cond_3
    iget-object v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;

    invoke-static {v3}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->access$700(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$isLastChild:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$expand:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->getBottom()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 799
    const-string v3, "ExpandRecyclerConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAnimationUpdate3: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->getBottom()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;

    invoke-static {v3}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->access$600(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;)V

    .line 801
    return-void

    .line 804
    :cond_4
    iget-object v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->access$702(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;Z)Z

    .line 805
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 806
    .local v3, "val":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$groupInfo:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;

    iput v3, v4, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->dummyHeight:I

    .line 807
    iget-object v4, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 808
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->requestLayout()V

    .line 809
    return-void
.end method
