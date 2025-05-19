.class Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;
.super Ljava/lang/Object;
.source "COUIExpandableListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->setParam(ZZILandroid/view/View;Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;

.field final synthetic val$expand:Z

.field final synthetic val$groupInfo:Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;

.field final synthetic val$groupPosition:I

.field final synthetic val$isLastChild:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;ZIZLandroid/view/View;Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;

    .line 670
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;

    iput-boolean p2, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->val$isLastChild:Z

    iput p3, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->val$groupPosition:I

    iput-boolean p4, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->val$expand:Z

    iput-object p5, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->val$view:Landroid/view/View;

    iput-object p6, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->val$groupInfo:Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 673
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->access$800(Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUIExpandableListView;

    .line 674
    .local v0, "listView":Lcom/coui/appcompat/widget/COUIExpandableListView;
    if-nez v0, :cond_0

    .line 675
    const-string v1, "COUIExpandableListView"

    const-string v2, "onAnimationUpdate: expandable list is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->access$900(Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;)V

    .line 677
    return-void

    .line 680
    :cond_0
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    .line 681
    .local v1, "firstPackedPos":J
    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    .line 683
    .local v3, "firstGroupPos":I
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v4

    .line 684
    .local v4, "lastPackedPos":J
    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v6

    .line 685
    .local v6, "lastGroupPos":I
    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v7

    .line 688
    .local v7, "lastChildPos":I
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;

    invoke-static {v8}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->access$1000(Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->val$isLastChild:Z

    if-nez v8, :cond_2

    iget v8, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->val$groupPosition:I

    if-gt v3, v8, :cond_1

    iget v8, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->val$groupPosition:I

    if-ge v6, v8, :cond_2

    .line 689
    :cond_1
    const-string v8, "COUIExpandableListView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onAnimationUpdate: all is screen out, first:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",groupPos:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->val$groupPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",last:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;

    invoke-static {v8}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->access$900(Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;)V

    .line 692
    return-void

    .line 696
    :cond_2
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;

    invoke-static {v8}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->access$1000(Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-boolean v8, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->val$isLastChild:Z

    if-nez v8, :cond_3

    iget-boolean v8, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->val$expand:Z

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->val$groupPosition:I

    if-ne v6, v8, :cond_3

    if-nez v7, :cond_3

    .line 697
    const-string v8, "COUIExpandableListView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onAnimationUpdate: expand is screen over, last:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;

    invoke-static {v8}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->access$900(Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;)V

    .line 699
    return-void

    .line 702
    :cond_3
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;

    invoke-static {v8}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->access$1000(Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->val$isLastChild:Z

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->val$expand:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->val$view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getBottom()I

    move-result v9

    if-le v8, v9, :cond_4

    .line 703
    const-string v8, "COUIExpandableListView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onAnimationUpdate3: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->val$view:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getBottom()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;

    invoke-static {v8}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->access$900(Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;)V

    .line 705
    return-void

    .line 708
    :cond_4
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->access$1002(Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;Z)Z

    .line 709
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 710
    .local v8, "val":I
    iget-object v9, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->val$groupInfo:Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;

    iput v8, v9, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->dummyHeight:I

    .line 711
    iget-object v9, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->val$view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iput v8, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 712
    iget-object v9, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;->val$view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->requestLayout()V

    .line 713
    return-void
.end method
