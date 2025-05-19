.class public abstract Lcom/coui/appcompat/widget/COUIAdapterView;
.super Landroid/view/ViewGroup;
.source "COUIAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUIAdapterView$SelectionNotifier;,
        Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;,
        Lcom/coui/appcompat/widget/COUIAdapterView$AdapterContextMenuInfo;,
        Lcom/coui/appcompat/widget/COUIAdapterView$OnItemSelectedListener;,
        Lcom/coui/appcompat/widget/COUIAdapterView$OnItemLongClickListener;,
        Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListenerWrapper;,
        Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/coui/appcompat/widget/COUIAdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/coui/appcompat/widget/COUIAdapterView$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/coui/appcompat/widget/COUIAdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coui/appcompat/widget/COUIAdapterView<",
            "TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 230
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mFirstPosition:I

    .line 86
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSyncRowId:J

    .line 96
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNeedSync:Z

    .line 128
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mInLayout:Z

    .line 154
    const/4 v3, -0x1

    iput v3, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNextSelectedPosition:I

    .line 160
    iput-wide v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNextSelectedRowId:J

    .line 165
    iput v3, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSelectedPosition:I

    .line 171
    iput-wide v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSelectedRowId:J

    .line 203
    iput v3, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOldSelectedPosition:I

    .line 208
    iput-wide v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOldSelectedRowId:J

    .line 227
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mBlockLayoutRequests:Z

    .line 231
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 234
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mFirstPosition:I

    .line 86
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSyncRowId:J

    .line 96
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNeedSync:Z

    .line 128
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mInLayout:Z

    .line 154
    const/4 v3, -0x1

    iput v3, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNextSelectedPosition:I

    .line 160
    iput-wide v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNextSelectedRowId:J

    .line 165
    iput v3, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSelectedPosition:I

    .line 171
    iput-wide v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSelectedRowId:J

    .line 203
    iput v3, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOldSelectedPosition:I

    .line 208
    iput-wide v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOldSelectedRowId:J

    .line 227
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mBlockLayoutRequests:Z

    .line 235
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 238
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mFirstPosition:I

    .line 86
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSyncRowId:J

    .line 96
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNeedSync:Z

    .line 128
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mInLayout:Z

    .line 154
    const/4 v3, -0x1

    iput v3, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNextSelectedPosition:I

    .line 160
    iput-wide v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNextSelectedRowId:J

    .line 165
    iput v3, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSelectedPosition:I

    .line 171
    iput-wide v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSelectedRowId:J

    .line 203
    iput v3, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOldSelectedPosition:I

    .line 208
    iput-wide v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOldSelectedRowId:J

    .line 227
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mBlockLayoutRequests:Z

    .line 239
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUIAdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIAdapterView;
    .param p1, "x1"    # Landroid/os/Parcelable;

    .line 52
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUIAdapterView;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIAdapterView;

    .line 52
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUIAdapterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIAdapterView;

    .line 52
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->fireOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 8

    .line 894
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOnItemSelectedListener:Lcom/coui/appcompat/widget/COUIAdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 895
    return-void

    .line 897
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 898
    .local v0, "selection":I
    if-ltz v0, :cond_1

    .line 899
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v7

    .line 900
    .local v7, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOnItemSelectedListener:Lcom/coui/appcompat/widget/COUIAdapterView$OnItemSelectedListener;

    .line 901
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v5

    .line 900
    move-object v2, p0

    move-object v3, v7

    move v4, v0

    invoke-interface/range {v1 .. v6}, Lcom/coui/appcompat/widget/COUIAdapterView$OnItemSelectedListener;->onItemSelected(Lcom/coui/appcompat/widget/COUIAdapterView;Landroid/view/View;IJ)V

    .line 902
    .end local v7    # "v":Landroid/view/View;
    goto :goto_0

    .line 903
    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOnItemSelectedListener:Lcom/coui/appcompat/widget/COUIAdapterView$OnItemSelectedListener;

    invoke-interface {v1, p0}, Lcom/coui/appcompat/widget/COUIAdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/coui/appcompat/widget/COUIAdapterView;)V

    .line 905
    :goto_0
    return-void
.end method

.method private updateEmptyStatus(Z)V
    .locals 7
    .param p1, "empty"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .line 736
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    const/4 p1, 0x0

    .line 740
    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 741
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 742
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 743
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIAdapterView;->setVisibility(I)V

    goto :goto_0

    .line 746
    :cond_1
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIAdapterView;->setVisibility(I)V

    .line 752
    :goto_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_4

    .line 753
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getBottom()I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/coui/appcompat/widget/COUIAdapterView;->onLayout(ZIIII)V

    goto :goto_1

    .line 756
    :cond_2
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 757
    :cond_3
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIAdapterView;->setVisibility(I)V

    .line 759
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 463
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 476
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 504
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 489
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .line 919
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method checkFocus()V
    .locals 6

    .line 716
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 717
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    .line 718
    .local v3, "empty":Z
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v2

    .line 722
    .local v4, "focusable":Z
    :goto_3
    if-eqz v4, :cond_4

    iget-boolean v5, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v5, :cond_4

    move v5, v2

    goto :goto_4

    :cond_4
    move v5, v1

    :goto_4
    invoke-super {p0, v5}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 723
    if-eqz v4, :cond_5

    iget-boolean v5, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mDesiredFocusableState:Z

    if-eqz v5, :cond_5

    move v5, v2

    goto :goto_5

    :cond_5
    move v5, v1

    :goto_5
    invoke-super {p0, v5}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 724
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v5, :cond_8

    .line 725
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_6

    :cond_6
    goto :goto_7

    :cond_7
    :goto_6
    move v1, v2

    :goto_7
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUIAdapterView;->updateEmptyStatus(Z)V

    .line 727
    :cond_8
    return-void
.end method

.method checkSelectionChanged()V
    .locals 4

    .line 986
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 987
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->selectionChanged()V

    .line 988
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOldSelectedPosition:I

    .line 989
    iget-wide v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOldSelectedRowId:J

    .line 991
    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 909
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 910
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 911
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 912
    const/4 v1, 0x1

    return v1

    .line 914
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 796
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIAdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 797
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 788
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIAdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 789
    return-void
.end method

.method findSyncPosition()I
    .locals 17

    .line 1002
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v1, v0, Lcom/coui/appcompat/widget/COUIAdapterView;->mItemCount:I

    .line 1004
    .local v1, "count":I
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 1005
    return v2

    .line 1008
    :cond_0
    iget-wide v3, v0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSyncRowId:J

    .line 1009
    .local v3, "idToMatch":J
    iget v5, v0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSyncPosition:I

    .line 1012
    .local v5, "seed":I
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v3, v6

    if-nez v6, :cond_1

    .line 1013
    return v2

    .line 1017
    :cond_1
    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1018
    add-int/lit8 v7, v1, -0x1

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1020
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x64

    add-long/2addr v7, v9

    .line 1025
    .local v7, "endTime":J
    move v9, v5

    .line 1028
    .local v9, "first":I
    move v10, v5

    .line 1031
    .local v10, "last":I
    const/4 v11, 0x0

    .line 1041
    .local v11, "next":Z
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v12

    .line 1042
    .local v12, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v12, :cond_2

    .line 1043
    return v2

    .line 1046
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    cmp-long v13, v13, v7

    if-gtz v13, :cond_a

    .line 1047
    invoke-interface {v12, v5}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v13

    .line 1048
    .local v13, "rowId":J
    cmp-long v15, v13, v3

    if-nez v15, :cond_3

    .line 1050
    return v5

    .line 1053
    :cond_3
    add-int/lit8 v15, v1, -0x1

    const/16 v16, 0x1

    if-ne v10, v15, :cond_4

    move/from16 v15, v16

    goto :goto_1

    :cond_4
    move v15, v6

    .line 1054
    .local v15, "hitLast":Z
    :goto_1
    if-nez v9, :cond_5

    goto :goto_2

    :cond_5
    move/from16 v16, v6

    .line 1056
    .local v16, "hitFirst":Z
    :goto_2
    if-eqz v15, :cond_6

    if-eqz v16, :cond_6

    .line 1058
    goto :goto_4

    .line 1061
    :cond_6
    if-nez v16, :cond_9

    if-eqz v11, :cond_7

    if-nez v15, :cond_7

    goto :goto_3

    .line 1067
    :cond_7
    if-nez v15, :cond_8

    if-nez v11, :cond_2

    if-nez v16, :cond_2

    .line 1069
    :cond_8
    add-int/lit8 v9, v9, -0x1

    .line 1070
    move v5, v9

    .line 1072
    const/4 v11, 0x1

    goto :goto_0

    .line 1063
    :cond_9
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 1064
    move v5, v10

    .line 1066
    const/4 v11, 0x0

    goto :goto_0

    .line 1077
    .end local v13    # "rowId":J
    .end local v15    # "hitLast":Z
    .end local v16    # "hitFirst":Z
    :cond_a
    :goto_4
    return v2
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 593
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .line 676
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .line 636
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .line 768
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 769
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public getItemIdAtPosition(I)J
    .locals 3
    .param p1, "position"    # I

    .line 773
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 774
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v1, -0x8000000000000000L

    :goto_1
    return-wide v1
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .line 646
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;
    .locals 1

    .line 292
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOnItemClickListener:Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/coui/appcompat/widget/COUIAdapterView$OnItemLongClickListener;
    .locals 1

    .line 358
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOnItemLongClickListener:Lcom/coui/appcompat/widget/COUIAdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/coui/appcompat/widget/COUIAdapterView$OnItemSelectedListener;
    .locals 1

    .line 404
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOnItemSelectedListener:Lcom/coui/appcompat/widget/COUIAdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 606
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    move-object v0, p1

    .line 609
    .local v0, "listItem":Landroid/view/View;
    :goto_0
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v3, v2

    .local v3, "v":Landroid/view/View;
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    .line 610
    move-object v0, v3

    goto :goto_0

    .line 615
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    nop

    .line 618
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getChildCount()I

    move-result v2

    .line 619
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 620
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUIAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 621
    iget v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mFirstPosition:I

    add-int/2addr v1, v3

    return v1

    .line 619
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 626
    .end local v3    # "i":I
    :cond_2
    return v1

    .line 612
    .end local v2    # "childCount":I
    :catch_0
    move-exception v2

    .line 614
    .local v2, "e":Ljava/lang/ClassCastException;
    return v1
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .line 577
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 578
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 579
    .local v1, "selection":I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 580
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 582
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 563
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    iget-wide v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 554
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 6

    .line 923
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mItemCount:I

    .line 924
    .local v0, "count":I
    const/4 v1, 0x0

    .line 926
    .local v1, "found":Z
    const/4 v2, 0x0

    if-lez v0, :cond_4

    .line 931
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNeedSync:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 934
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNeedSync:Z

    .line 938
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->findSyncPosition()I

    move-result v3

    .line 939
    .local v3, "newPos":I
    if-ltz v3, :cond_0

    .line 941
    invoke-virtual {p0, v3, v4}, Lcom/coui/appcompat/widget/COUIAdapterView;->lookForSelectablePosition(IZ)I

    move-result v5

    .line 942
    .local v5, "selectablePos":I
    if-ne v5, v3, :cond_0

    .line 944
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUIAdapterView;->setNextSelectedPositionInt(I)V

    .line 945
    const/4 v1, 0x1

    .line 949
    .end local v3    # "newPos":I
    .end local v5    # "selectablePos":I
    :cond_0
    if-nez v1, :cond_4

    .line 951
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 954
    .restart local v3    # "newPos":I
    if-lt v3, v0, :cond_1

    .line 955
    add-int/lit8 v3, v0, -0x1

    .line 957
    :cond_1
    if-gez v3, :cond_2

    .line 958
    const/4 v3, 0x0

    .line 962
    :cond_2
    invoke-virtual {p0, v3, v4}, Lcom/coui/appcompat/widget/COUIAdapterView;->lookForSelectablePosition(IZ)I

    move-result v4

    .line 963
    .local v4, "selectablePos":I
    if-gez v4, :cond_3

    .line 965
    invoke-virtual {p0, v3, v2}, Lcom/coui/appcompat/widget/COUIAdapterView;->lookForSelectablePosition(IZ)I

    move-result v4

    .line 967
    :cond_3
    if-ltz v4, :cond_4

    .line 968
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/widget/COUIAdapterView;->setNextSelectedPositionInt(I)V

    .line 969
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->checkSelectionChanged()V

    .line 970
    const/4 v1, 0x1

    .line 974
    .end local v3    # "newPos":I
    .end local v4    # "selectablePos":I
    :cond_4
    if-nez v1, :cond_5

    .line 976
    const/4 v3, -0x1

    iput v3, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSelectedPosition:I

    .line 977
    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSelectedRowId:J

    .line 978
    iput v3, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNextSelectedPosition:I

    .line 979
    iput-wide v4, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNextSelectedRowId:J

    .line 980
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNeedSync:Z

    .line 981
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->checkSelectionChanged()V

    .line 983
    :cond_5
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    .line 686
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .line 1089
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 852
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 853
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSelectionNotifier:Lcom/coui/appcompat/widget/COUIAdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIAdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 854
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 544
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mLayoutHeight:I

    .line 545
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 305
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOnItemClickListener:Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIAdapterView;->playSoundEffect(I)V

    .line 307
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 308
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOnItemClickListener:Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;->onItemClick(Lcom/coui/appcompat/widget/COUIAdapterView;Landroid/view/View;IJ)V

    .line 311
    return v0

    .line 314
    :cond_1
    return v1
.end method

.method rememberSyncState()V
    .locals 5

    .line 1122
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNeedSync:Z

    .line 1124
    iget v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mLayoutHeight:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSyncHeight:J

    .line 1125
    iget v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSelectedPosition:I

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    .line 1127
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1128
    .local v0, "v":Landroid/view/View;
    iget-wide v3, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNextSelectedRowId:J

    iput-wide v3, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSyncRowId:J

    .line 1129
    iget v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNextSelectedPosition:I

    iput v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSyncPosition:I

    .line 1130
    if-eqz v0, :cond_0

    .line 1131
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSpecificTop:I

    .line 1133
    :cond_0
    iput v2, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSyncMode:I

    .line 1134
    .end local v0    # "v":Landroid/view/View;
    goto :goto_1

    .line 1136
    :cond_1
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUIAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1137
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1138
    .local v2, "adapter":Landroid/widget/Adapter;, "TT;"
    iget v3, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mFirstPosition:I

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mFirstPosition:I

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1139
    iget v3, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mFirstPosition:I

    invoke-interface {v2, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSyncRowId:J

    goto :goto_0

    .line 1141
    :cond_2
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSyncRowId:J

    .line 1143
    :goto_0
    iget v3, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mFirstPosition:I

    iput v3, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSyncPosition:I

    .line 1144
    if-eqz v1, :cond_3

    .line 1145
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSpecificTop:I

    .line 1147
    :cond_3
    iput v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSyncMode:I

    .line 1150
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "adapter":Landroid/widget/Adapter;, "TT;"
    :cond_4
    :goto_1
    return-void
.end method

.method public removeAllViews()V
    .locals 2

    .line 539
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 517
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .line 529
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    .line 872
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOnItemSelectedListener:Lcom/coui/appcompat/widget/COUIAdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_3

    .line 873
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mInLayout:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 883
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->fireOnSelected()V

    goto :goto_1

    .line 878
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSelectionNotifier:Lcom/coui/appcompat/widget/COUIAdapterView$SelectionNotifier;

    if-nez v0, :cond_2

    .line 879
    new-instance v0, Lcom/coui/appcompat/widget/COUIAdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/widget/COUIAdapterView$SelectionNotifier;-><init>(Lcom/coui/appcompat/widget/COUIAdapterView;Lcom/coui/appcompat/widget/COUIAdapterView$1;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSelectionNotifier:Lcom/coui/appcompat/widget/COUIAdapterView$SelectionNotifier;

    .line 881
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSelectionNotifier:Lcom/coui/appcompat/widget/COUIAdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIAdapterView;->post(Ljava/lang/Runnable;)Z

    .line 888
    :cond_3
    :goto_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 889
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIAdapterView;->sendAccessibilityEvent(I)V

    .line 891
    :cond_4
    return-void
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 2
    .param p1, "emptyView"    # Landroid/view/View;

    .line 661
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mEmptyView:Landroid/view/View;

    .line 663
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 664
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 665
    .local v1, "empty":Z
    :goto_1
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUIAdapterView;->updateEmptyStatus(Z)V

    .line 666
    return-void
.end method

.method public setFocusable(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .line 691
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 692
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    .line 694
    .local v3, "empty":Z
    :goto_1
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mDesiredFocusableState:Z

    .line 695
    if-nez p1, :cond_2

    .line 696
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 699
    :cond_2
    if-eqz p1, :cond_4

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 700
    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .line 704
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 705
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    .line 707
    .local v3, "empty":Z
    :goto_1
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 708
    if-eqz p1, :cond_2

    .line 709
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mDesiredFocusableState:Z

    .line 712
    :cond_2
    if-eqz p1, :cond_4

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v1, v2

    nop

    :cond_4
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 713
    return-void
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .line 1107
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    iput p1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNextSelectedPosition:I

    .line 1108
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNextSelectedRowId:J

    .line 1110
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1111
    iput p1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSyncPosition:I

    .line 1112
    iget-wide v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSyncRowId:J

    .line 1114
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 779
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;

    .line 284
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOnItemClickListener:Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;

    .line 285
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/coui/appcompat/widget/COUIAdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/coui/appcompat/widget/COUIAdapterView$OnItemLongClickListener;

    .line 347
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIAdapterView;->setLongClickable(Z)V

    .line 350
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOnItemLongClickListener:Lcom/coui/appcompat/widget/COUIAdapterView$OnItemLongClickListener;

    .line 351
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/coui/appcompat/widget/COUIAdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/widget/COUIAdapterView$OnItemSelectedListener;

    .line 400
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mOnItemSelectedListener:Lcom/coui/appcompat/widget/COUIAdapterView$OnItemSelectedListener;

    .line 401
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .line 1097
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>;"
    iput p1, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSelectedPosition:I

    .line 1098
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView;->mSelectedRowId:J

    .line 1099
    return-void
.end method

.method public abstract setSelection(I)V
.end method
