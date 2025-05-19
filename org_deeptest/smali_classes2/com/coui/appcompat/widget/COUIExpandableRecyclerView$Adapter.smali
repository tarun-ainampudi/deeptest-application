.class public abstract Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$Adapter;
.super Ljava/lang/Object;
.source "COUIExpandableRecyclerView.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private mObservable:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    new-instance v0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$Adapter;->mObservable:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$Adapter;->mHasStableIds:Z

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 344
    const/4 v0, 0x1

    return v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .line 418
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildType(II)I
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public getCombinedChildId(JJ)J
    .locals 4
    .param p1, "groupId"    # J
    .param p3, "childId"    # J

    .line 364
    const-wide/32 v0, 0x7fffffff

    and-long/2addr v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide/high16 v2, -0x8000000000000000L

    or-long/2addr v0, v2

    const-wide/16 v2, -0x1

    and-long/2addr v2, p3

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getCombinedGroupId(J)J
    .locals 3
    .param p1, "groupId"    # J

    .line 378
    const-wide/32 v0, 0x7fffffff

    and-long/2addr v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .line 413
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupType(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupTypeCount()I
    .locals 1

    .line 408
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$Adapter;->mHasStableIds:Z

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .line 423
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 385
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$Adapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$Adapter;->mObservable:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;->notifyChanged()V

    .line 305
    return-void
.end method

.method public final notifyItemChanged(I)V
    .locals 2
    .param p1, "position"    # I

    .line 308
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$Adapter;->mObservable:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;->notifyItemRangeChanged(II)V

    .line 309
    return-void
.end method

.method public final notifyItemChanged(ILjava/lang/Object;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "payload"    # Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$Adapter;->mObservable:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 313
    return-void
.end method

.method public final notifyItemInserted(I)V
    .locals 2
    .param p1, "position"    # I

    .line 324
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$Adapter;->mObservable:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;->notifyItemRangeInserted(II)V

    .line 325
    return-void
.end method

.method public final notifyItemMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 328
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$Adapter;->mObservable:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;->notifyItemMoved(II)V

    .line 329
    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 316
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$Adapter;->mObservable:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;->notifyItemRangeChanged(II)V

    .line 317
    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 320
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$Adapter;->mObservable:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 321
    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 332
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$Adapter;->mObservable:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;->notifyItemRangeInserted(II)V

    .line 333
    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 340
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$Adapter;->mObservable:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;->notifyItemRangeRemoved(II)V

    .line 341
    return-void
.end method

.method public final notifyItemRemoved(I)V
    .locals 2
    .param p1, "position"    # I

    .line 336
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$Adapter;->mObservable:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;->notifyItemRangeRemoved(II)V

    .line 337
    return-void
.end method

.method public onGroupCollapsed(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .line 348
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .line 351
    return-void
.end method

.method public registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 295
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$Adapter;->mObservable:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;->registerObserver(Ljava/lang/Object;)V

    .line 296
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 0
    .param p1, "hasStableIds"    # Z

    .line 285
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$Adapter;->mHasStableIds:Z

    .line 286
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 300
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$Adapter;->mObservable:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;->unregisterObserver(Ljava/lang/Object;)V

    .line 301
    return-void
.end method
