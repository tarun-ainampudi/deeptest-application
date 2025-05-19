.class public interface abstract Lcom/coui/appcompat/widget/COUIExpandableRecyclerAdapter;
.super Ljava/lang/Object;
.source "COUIExpandableRecyclerAdapter.java"


# virtual methods
.method public abstract areAllItemsEnabled()Z
.end method

.method public abstract getChild(II)Ljava/lang/Object;
.end method

.method public abstract getChildId(II)J
.end method

.method public abstract getChildType(II)I
.end method

.method public abstract getChildrenCount(I)I
.end method

.method public abstract getCombinedChildId(JJ)J
.end method

.method public abstract getCombinedGroupId(J)J
.end method

.method public abstract getGroup(I)Ljava/lang/Object;
.end method

.method public abstract getGroupCount()I
.end method

.method public abstract getGroupId(I)J
.end method

.method public abstract getGroupType(I)I
.end method

.method public abstract getGroupTypeCount()I
.end method

.method public abstract hasStableIds()Z
.end method

.method public abstract isChildSelectable(II)Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract onBindChildView(IIZLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method public abstract onBindGroupView(IZLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method public abstract onCreateChildView(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end method

.method public abstract onCreateGroupView(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end method

.method public abstract onGroupCollapsed(I)V
.end method

.method public abstract onGroupExpanded(I)V
.end method

.method public abstract registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
.end method

.method public abstract setHasStableIds(Z)V
.end method

.method public abstract unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
.end method
