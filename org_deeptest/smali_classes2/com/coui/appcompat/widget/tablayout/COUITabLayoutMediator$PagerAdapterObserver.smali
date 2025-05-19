.class Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$PagerAdapterObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "COUITabLayoutMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->populateTabsFromPagerAdapter()V

    .line 317
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 321
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->populateTabsFromPagerAdapter()V

    .line 322
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 326
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->populateTabsFromPagerAdapter()V

    .line 327
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 331
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->populateTabsFromPagerAdapter()V

    .line 332
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 341
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->populateTabsFromPagerAdapter()V

    .line 342
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 336
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->populateTabsFromPagerAdapter()V

    .line 337
    return-void
.end method
