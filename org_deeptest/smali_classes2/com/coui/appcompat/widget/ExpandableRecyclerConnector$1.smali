.class Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$1;
.super Ljava/lang/Object;
.source "ExpandableRecyclerConnector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

.field final synthetic val$flatListPos:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    .line 479
    iput-object p1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$1;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    iput p2, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$1;->val$flatListPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 482
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$1;->this$0:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    invoke-static {v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->access$100(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;)Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$1;->val$flatListPos:I

    invoke-virtual {v0, p1, v1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->handleClick(Landroid/view/View;I)Z

    .line 483
    return-void
.end method
