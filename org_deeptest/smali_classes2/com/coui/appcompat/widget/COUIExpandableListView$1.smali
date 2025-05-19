.class Lcom/coui/appcompat/widget/COUIExpandableListView$1;
.super Ljava/lang/Object;
.source "COUIExpandableListView.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIExpandableListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIExpandableListView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIExpandableListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIExpandableListView;

    .line 68
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$1;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 8
    .param p1, "expandableListView"    # Landroid/widget/ExpandableListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "group"    # I
    .param p4, "id"    # J

    .line 71
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$1;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIExpandableListView;->access$000(Lcom/coui/appcompat/widget/COUIExpandableListView;)Landroid/widget/ExpandableListView$OnGroupClickListener;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$1;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIExpandableListView;->access$000(Lcom/coui/appcompat/widget/COUIExpandableListView;)Landroid/widget/ExpandableListView$OnGroupClickListener;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/widget/ExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$1;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$1;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    .line 73
    .local v2, "lastPackedPos":J
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 74
    .local v0, "lastGroupPos":I
    const/4 v4, 0x0

    if-ne v0, p3, :cond_1

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$1;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView;

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$1;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView;

    invoke-virtual {v6}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v5, v6}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$1;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView;

    invoke-virtual {v6}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$1;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView;

    invoke-virtual {v7}, Lcom/coui/appcompat/widget/COUIExpandableListView;->getListPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    if-lt v5, v6, :cond_1

    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 79
    return v4

    .line 82
    :cond_1
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$1;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView;

    invoke-virtual {v5, v4}, Lcom/coui/appcompat/widget/COUIExpandableListView;->playSoundEffect(I)V

    .line 83
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 84
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$1;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView;

    invoke-virtual {v4, p3}, Lcom/coui/appcompat/widget/COUIExpandableListView;->collapseGroup(I)Z

    goto :goto_0

    .line 86
    :cond_2
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$1;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView;

    invoke-virtual {v4, p3}, Lcom/coui/appcompat/widget/COUIExpandableListView;->expandGroup(I)Z

    .line 90
    .end local v0    # "lastGroupPos":I
    .end local v2    # "lastPackedPos":J
    :cond_3
    :goto_0
    return v1
.end method
