.class public Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;
.super Landroidx/recyclerview/widget/COUIRecyclerView;
.source "COUIExpandableRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;,
        Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$Adapter;,
        Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;,
        Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnGroupExpandListener;,
        Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnGroupCollapseListener;,
        Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnChildClickListener;,
        Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnGroupClickListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

.field private mConnector:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

.field private mOnChildClickListener:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnChildClickListener;

.field private mOnGroupClickListener:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnGroupExpandListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyle"    # I

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/COUIRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 34
    return-void
.end method

.method private getChildOrGroupId(Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;)J
    .locals 3
    .param p1, "position"    # Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    .line 62
    iget v0, p1, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    iget v1, p1, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    iget v2, p1, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->getChildId(II)J

    move-result-wide v0

    return-wide v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    iget v1, p1, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    invoke-interface {v0, v1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;->getGroupId(I)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public collapseGroup(I)Z
    .locals 1
    .param p1, "groupPos"    # I

    .line 163
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mConnector:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->startCollapseAnimation(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    return v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mConnector:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->collapseGroupAnimator()V

    .line 168
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mOnGroupCollapseListener:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnGroupCollapseListener;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mOnGroupCollapseListener:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnGroupCollapseListener;

    invoke-interface {v0, p1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 172
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public expandGroup(I)Z
    .locals 2
    .param p1, "groupPos"    # I

    .line 176
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mConnector:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->expandGroup(I)Z

    move-result v0

    .line 177
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mOnGroupExpandListener:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnGroupExpandListener;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mOnGroupExpandListener:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnGroupExpandListener;

    invoke-interface {v1, p1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 182
    :cond_0
    return v0
.end method

.method handleClick(Landroid/view/View;I)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 70
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mConnector:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getUnflattenedPos(I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v0

    .line 72
    .local v0, "posMetadata":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;
    iget-object v1, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->getChildOrGroupId(Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;)J

    move-result-wide v9

    .line 75
    .local v9, "id":J
    iget-object v1, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    iget v1, v1, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 76
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mOnGroupClickListener:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnGroupClickListener;

    if-eqz v1, :cond_0

    .line 77
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mOnGroupClickListener:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnGroupClickListener;

    iget-object v1, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    iget v5, v1, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    move-object v3, p0

    move-object v4, p1

    move-wide v6, v9

    invoke-interface/range {v2 .. v7}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnGroupClickListener;->onGroupClick(Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;Landroid/view/View;IJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->recycle()V

    .line 79
    const/4 v1, 0x1

    return v1

    .line 83
    :cond_0
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    iget v1, v1, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->collapseGroup(I)Z

    goto :goto_0

    .line 87
    :cond_1
    iget-object v1, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    iget v1, v1, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->expandGroup(I)Z

    .line 90
    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mOnChildClickListener:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnChildClickListener;

    if-eqz v1, :cond_3

    .line 94
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mOnChildClickListener:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnChildClickListener;

    iget-object v1, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    iget v5, v1, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->groupPos:I

    iget-object v1, v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;

    iget v6, v1, Lcom/coui/appcompat/widget/ExpandableRecyclerPosition;->childPos:I

    move-object v3, p0

    move-object v4, p1

    move-wide v7, v9

    invoke-interface/range {v2 .. v8}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnChildClickListener;->onChildClick(Landroidx/recyclerview/widget/COUIRecyclerView;Landroid/view/View;IIJ)Z

    move-result v1

    return v1

    .line 98
    :cond_3
    const/4 v1, 0x0

    .line 101
    .local v1, "returnValue":Z
    :goto_1
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$PositionMetadata;->recycle()V

    .line 102
    return v1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 267
    instance-of v0, p1, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;

    if-nez v0, :cond_0

    .line 268
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 269
    return-void

    .line 272
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;

    .line 273
    .local v0, "ss":Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 275
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mConnector:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mConnector:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    .line 278
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 261
    invoke-super {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 262
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mConnector:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mConnector:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v0, v2}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 107
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "adapter instansof COUIExpandableRecyclerAdapter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAdapter(Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    .line 56
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mAdapter:Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;

    .line 57
    new-instance v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    invoke-direct {v0, p1, p0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;-><init>(Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mConnector:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    .line 58
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mConnector:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    invoke-super {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 59
    return-void
.end method

.method public setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 2
    .param p1, "animator"    # Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 49
    if-nez p1, :cond_0

    .line 52
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 53
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not set ItemAnimator"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 2
    .param p1, "layout"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 38
    instance-of v0, p1, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    if-eqz v0, :cond_1

    .line 41
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUILinearLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 44
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 45
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "only vertical orientation"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "only COUILinearLayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnChildClickListener(Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnChildClickListener;)V
    .locals 0
    .param p1, "onChildClickListener"    # Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnChildClickListener;

    .line 152
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mOnChildClickListener:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnChildClickListener;

    .line 153
    return-void
.end method

.method public setOnGroupClickListener(Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnGroupClickListener;)V
    .locals 0
    .param p1, "onGroupClickListener"    # Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnGroupClickListener;

    .line 129
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mOnGroupClickListener:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnGroupClickListener;

    .line 130
    return-void
.end method

.method public setOnGroupCollapseListener(Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnGroupCollapseListener;)V
    .locals 0
    .param p1, "onGroupCollapseListener"    # Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnGroupCollapseListener;

    .line 200
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mOnGroupCollapseListener:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnGroupCollapseListener;

    .line 201
    return-void
.end method

.method public setOnGroupExpandListener(Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnGroupExpandListener;)V
    .locals 0
    .param p1, "onGroupExpandListener"    # Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnGroupExpandListener;

    .line 218
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->mOnGroupExpandListener:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$OnGroupExpandListener;

    .line 219
    return-void
.end method
