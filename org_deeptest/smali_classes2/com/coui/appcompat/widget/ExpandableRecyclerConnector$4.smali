.class Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$4;
.super Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$EndAnimatorListener;
.source "ExpandableRecyclerConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->collapseAnimationStart(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

.field final synthetic val$dummyView:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    .line 650
    iput-object p1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$4;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    iput-object p2, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$4;->val$dummyView:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;

    iput p3, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$4;->val$groupPosition:I

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$EndAnimatorListener;-><init>(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 653
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$4;->val$dummyView:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;->clearViews()V

    .line 654
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$4;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    iget v1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$4;->val$groupPosition:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->access$300(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;I)V

    .line 655
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$4;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    iget v1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$4;->val$groupPosition:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->collapseGroup(I)Z

    .line 656
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$4;->val$dummyView:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;->setTag(Ljava/lang/Object;)V

    .line 657
    return-void
.end method
