.class Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "COUIFloatingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;

.field final synthetic val$child:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;

    .line 1564
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior$1;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;

    iput-object p2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior$1;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newState"    # I

    .line 1567
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 1568
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 1572
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 1573
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior$1;->val$child:Landroid/view/View;

    instance-of v0, v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    if-eqz v0, :cond_0

    .line 1574
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior$1;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;

    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior$1;->val$child:Landroid/view/View;

    check-cast v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {v0, v1, p3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;->access$2000(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;I)V

    .line 1576
    :cond_0
    return-void
.end method
