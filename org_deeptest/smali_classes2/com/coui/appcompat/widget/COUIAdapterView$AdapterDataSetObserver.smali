.class Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "COUIAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIAdapterView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIAdapterView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIAdapterView;

    .line 799
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>.AdapterDataSetObserver;"
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 801
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    .line 846
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>.AdapterDataSetObserver;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 847
    return-void
.end method

.method public onChanged()V
    .locals 2

    .line 805
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>.AdapterDataSetObserver;"
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/widget/COUIAdapterView;->mDataChanged:Z

    .line 806
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    iget v1, v1, Lcom/coui/appcompat/widget/COUIAdapterView;->mItemCount:I

    iput v1, v0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOldItemCount:I

    .line 807
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/widget/COUIAdapterView;->mItemCount:I

    .line 811
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    iget v0, v0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOldItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    iget v0, v0, Lcom/coui/appcompat/widget/COUIAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIAdapterView;->access$000(Lcom/coui/appcompat/widget/COUIAdapterView;Landroid/os/Parcelable;)V

    .line 814
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    goto :goto_0

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIAdapterView;->rememberSyncState()V

    .line 818
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIAdapterView;->checkFocus()V

    .line 819
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIAdapterView;->requestLayout()V

    .line 820
    return-void
.end method

.method public onInvalidated()V
    .locals 5

    .line 824
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>.AdapterDataSetObserver;"
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/widget/COUIAdapterView;->mDataChanged:Z

    .line 826
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIAdapterView;->access$100(Lcom/coui/appcompat/widget/COUIAdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    iget v1, v1, Lcom/coui/appcompat/widget/COUIAdapterView;->mItemCount:I

    iput v1, v0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOldItemCount:I

    .line 834
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/coui/appcompat/widget/COUIAdapterView;->mItemCount:I

    .line 835
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    const/4 v2, -0x1

    iput v2, v0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSelectedPosition:I

    .line 836
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    const-wide/high16 v3, -0x8000000000000000L

    iput-wide v3, v0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSelectedRowId:J

    .line 837
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    iput v2, v0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNextSelectedPosition:I

    .line 838
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    iput-wide v3, v0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNextSelectedRowId:J

    .line 839
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    iput-boolean v1, v0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNeedSync:Z

    .line 841
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIAdapterView;->checkFocus()V

    .line 842
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIAdapterView;->requestLayout()V

    .line 843
    return-void
.end method
