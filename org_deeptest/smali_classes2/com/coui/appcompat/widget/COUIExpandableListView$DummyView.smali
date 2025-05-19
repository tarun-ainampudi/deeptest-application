.class Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;
.super Landroid/view/View;
.source "COUIExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummyView"
.end annotation


# instance fields
.field private divider:Landroid/graphics/drawable/Drawable;

.field private dividerHeight:I

.field private dividerWidth:I

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

    .line 576
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->views:Ljava/util/List;

    .line 577
    return-void
.end method


# virtual methods
.method public addFakeView(Landroid/view/View;)V
    .locals 1
    .param p1, "childView"    # Landroid/view/View;

    .line 595
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    return-void
.end method

.method public clearViews()V
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 618
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 622
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 623
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->divider:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->divider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->dividerWidth:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->dividerHeight:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 628
    .local v0, "len":I
    const/4 v2, 0x0

    .line 629
    .local v2, "totalHeight":I
    move v3, v2

    move v2, v1

    .local v2, "i":I
    .local v3, "totalHeight":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 630
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->views:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 632
    .local v4, "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 633
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 634
    .local v5, "height":I
    add-int/2addr v3, v5

    .line 635
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->getWidth()I

    move-result v6

    invoke-virtual {p1, v1, v1, v6, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 636
    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 637
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 639
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->divider:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 640
    iget v6, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->dividerHeight:I

    add-int/2addr v3, v6

    .line 641
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 642
    iget v6, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->dividerHeight:I

    int-to-float v6, v6

    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 645
    :cond_1
    int-to-float v6, v5

    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 646
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    if-le v3, v6, :cond_2

    .line 647
    goto :goto_1

    .line 629
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "height":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 651
    .end local v2    # "i":I
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 652
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 600
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 601
    sub-int v0, p5, p3

    .line 602
    .local v0, "height":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->views:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 603
    .local v1, "len":I
    const/4 v2, 0x0

    .line 604
    .local v2, "totalHeight":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 605
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->views:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 606
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 607
    .local v5, "vHeight":I
    add-int/2addr v2, v5

    .line 608
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, p2

    add-int v7, p3, v5

    invoke-virtual {v4, p2, p3, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 609
    iget v6, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->dividerHeight:I

    add-int/2addr v2, v6

    .line 610
    if-le v2, v0, :cond_0

    .line 611
    goto :goto_1

    .line 604
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "vHeight":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 614
    .end local v3    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;II)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;
    .param p2, "dividerWidth"    # I
    .param p3, "dividerHeight"    # I

    .line 580
    if-eqz p1, :cond_0

    .line 581
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->divider:Landroid/graphics/drawable/Drawable;

    .line 582
    iput p2, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->dividerWidth:I

    .line 583
    iput p3, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;->dividerHeight:I

    .line 585
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 587
    :cond_0
    return-void
.end method
