.class public Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "COUIExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;


# direct methods
.method protected constructor <init>(Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;

    .line 225
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter$MyDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter$MyDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->notifyDataSetChanged()V

    .line 229
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter$MyDataSetObserver;->this$0:Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->notifyDataSetInvalidated()V

    .line 234
    return-void
.end method
