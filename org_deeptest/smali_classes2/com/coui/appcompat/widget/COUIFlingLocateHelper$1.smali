.class Lcom/coui/appcompat/widget/COUIFlingLocateHelper$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "COUIFlingLocateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIFlingLocateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mScrolled:Z

.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIFlingLocateHelper;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIFlingLocateHelper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIFlingLocateHelper;

    .line 52
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper$1;->this$0:Lcom/coui/appcompat/widget/COUIFlingLocateHelper;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper$1;->mScrolled:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "newState"    # I

    .line 57
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 58
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper$1;->mScrolled:Z

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper$1;->mScrolled:Z

    .line 60
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper$1;->this$0:Lcom/coui/appcompat/widget/COUIFlingLocateHelper;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->access$000(Lcom/coui/appcompat/widget/COUIFlingLocateHelper;)V

    .line 62
    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 66
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 67
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper$1;->mScrolled:Z

    .line 69
    :cond_1
    return-void
.end method
