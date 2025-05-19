.class Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$3;
.super Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$EndAnimatorListener;
.source "ExpandableRecyclerConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandAnimationStart(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

.field final synthetic val$dummyView:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;

.field final synthetic val$flatListPos:I

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    .line 622
    iput-object p1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$3;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    iput-object p2, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$3;->val$dummyView:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;

    iput p3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$3;->val$groupPosition:I

    iput p4, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$3;->val$flatListPos:I

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$EndAnimatorListener;-><init>(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 625
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$3;->val$dummyView:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;->clearViews()V

    .line 626
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$3;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    iget v1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$3;->val$groupPosition:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->access$300(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;I)V

    .line 627
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$3;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->access$400(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;ZZ)V

    .line 628
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$3;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    iget v2, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$3;->val$flatListPos:I

    sub-int/2addr v2, v1

    iget-object v3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$3;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getItemCount()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$3;->val$flatListPos:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->notifyItemRangeChanged(II)V

    .line 629
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$3;->val$dummyView:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;->setTag(Ljava/lang/Object;)V

    .line 630
    return-void
.end method
