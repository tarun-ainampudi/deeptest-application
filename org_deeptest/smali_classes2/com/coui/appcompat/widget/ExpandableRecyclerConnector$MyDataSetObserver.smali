.class public Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$MyDataSetObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "ExpandableRecyclerConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;


# direct methods
.method protected constructor <init>(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    .line 1188
    iput-object p1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$MyDataSetObserver;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1192
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$MyDataSetObserver;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->access$400(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;ZZ)V

    .line 1193
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$MyDataSetObserver;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->notifyDataSetChanged()V

    .line 1194
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 1198
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$MyDataSetObserver;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->access$400(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;ZZ)V

    .line 1199
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$MyDataSetObserver;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->notifyItemRangeChanged(II)V

    .line 1200
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 1204
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$MyDataSetObserver;->onItemRangeChanged(II)V

    .line 1205
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 1209
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$MyDataSetObserver;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->access$400(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;ZZ)V

    .line 1210
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$MyDataSetObserver;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->notifyItemRangeInserted(II)V

    .line 1211
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 2
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 1221
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$MyDataSetObserver;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->access$400(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;ZZ)V

    .line 1222
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$MyDataSetObserver;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->notifyItemMoved(II)V

    .line 1223
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 1215
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$MyDataSetObserver;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->access$400(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;ZZ)V

    .line 1216
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$MyDataSetObserver;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->notifyItemRangeRemoved(II)V

    .line 1217
    return-void
.end method
