.class Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;
.super Landroid/view/View;
.source "ExpandableRecyclerConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummyView"
.end annotation


# instance fields
.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 694
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;->views:Ljava/util/List;

    .line 695
    return-void
.end method


# virtual methods
.method public addFakeView(Landroid/view/View;)V
    .locals 1
    .param p1, "childView"    # Landroid/view/View;

    .line 703
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    return-void
.end method

.method public clearViews()V
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 724
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 728
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 729
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 730
    .local v0, "len":I
    const/4 v1, 0x0

    .line 731
    .local v1, "totalHeight":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "totalHeight":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 732
    iget-object v4, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;->views:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 734
    .local v4, "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 735
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 736
    .local v5, "height":I
    add-int/2addr v3, v5

    .line 737
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;->getWidth()I

    move-result v6

    invoke-virtual {p1, v2, v2, v6, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 738
    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 739
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 741
    const/4 v6, 0x0

    int-to-float v7, v5

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 742
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    if-le v3, v6, :cond_0

    .line 743
    goto :goto_1

    .line 731
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "height":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 747
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 748
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 708
    sub-int v0, p5, p3

    .line 709
    .local v0, "height":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;->views:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 710
    .local v1, "len":I
    const/4 v2, 0x0

    .line 711
    .local v2, "totalHeight":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 712
    iget-object v4, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;->views:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 713
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 714
    .local v5, "vHeight":I
    add-int/2addr v2, v5

    .line 715
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, p2

    add-int v7, p3, v5

    invoke-virtual {v4, p2, p3, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 716
    if-le v2, v0, :cond_0

    .line 717
    goto :goto_1

    .line 711
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "vHeight":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 720
    .end local v3    # "i":I
    :cond_1
    :goto_1
    return-void
.end method
