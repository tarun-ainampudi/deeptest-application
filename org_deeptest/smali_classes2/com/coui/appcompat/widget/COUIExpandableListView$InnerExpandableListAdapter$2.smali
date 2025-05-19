.class Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter$2;
.super Lcom/coui/appcompat/widget/COUIExpandableListView$EndAnimatorListener;
.source "COUIExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->collapseAnimationStart(Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;

.field final synthetic val$dummyView:Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;

    .line 506
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter$2;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;

    iput-object p2, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter$2;->val$dummyView:Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;

    iput p3, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter$2;->val$groupPosition:I

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/COUIExpandableListView$EndAnimatorListener;-><init>(Lcom/coui/appcompat/widget/COUIExpandableListView$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 509
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter$2;->val$dummyView:Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->clearViews()V

    .line 510
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter$2;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter$2;->val$groupPosition:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->access$200(Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;I)V

    .line 511
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter$2;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->access$600(Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;)Lcom/coui/appcompat/widget/COUIExpandableListView;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter$2;->val$groupPosition:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIExpandableListView;->access$700(Lcom/coui/appcompat/widget/COUIExpandableListView;I)V

    .line 512
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter$2;->val$dummyView:Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->setTag(Ljava/lang/Object;)V

    .line 513
    return-void
.end method
