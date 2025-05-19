.class public final Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
.super Ljava/lang/Object;
.source "COUITabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/tablayout/COUITabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tab"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field mParent:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

.field private mPointMode:I

.field private mPointNumber:I

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field mView:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1377
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mPosition:I

    .line 1383
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mPointMode:I

    .line 1388
    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1660
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1465
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1511
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPointMode()I
    .locals 1

    .line 1395
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mPointMode:I

    return v0
.end method

.method public getPointNumber()I
    .locals 1

    .line 1417
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mPointNumber:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 1521
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1441
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1535
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isSelected()Z
    .locals 2

    .line 1612
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mParent:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    if-eqz v0, :cond_1

    .line 1615
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mParent:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mPosition:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1613
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method reset()V
    .locals 2

    .line 1670
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mParent:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    .line 1671
    iput-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mView:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    .line 1672
    iput-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mTag:Ljava/lang/Object;

    .line 1673
    iput-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1674
    iput-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mText:Ljava/lang/CharSequence;

    .line 1675
    iput-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    .line 1676
    const/4 v1, -0x1

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mPosition:I

    .line 1677
    iput-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mCustomView:Landroid/view/View;

    .line 1678
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mPointMode:I

    .line 1679
    iput v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mPointNumber:I

    .line 1680
    return-void
.end method

.method public select()V
    .locals 2

    .line 1600
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mParent:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mParent:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->selectTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V

    .line 1604
    return-void

    .line 1601
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentDescription(I)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1629
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mParent:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    if-eqz v0, :cond_0

    .line 1632
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mParent:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    move-result-object v0

    return-object v0

    .line 1630
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    .locals 0
    .param p1, "contentDesc"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1646
    iput-object p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    .line 1647
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->updateView()V

    .line 1648
    return-object p0
.end method

.method public setCustomView(I)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    .locals 0
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1501
    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1483
    return-object p0
.end method

.method public setIcon(I)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1559
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mParent:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    if-eqz v0, :cond_0

    .line 1564
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mParent:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    move-result-object v0

    return-object v0

    .line 1560
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1546
    iput-object p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1547
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->updateView()V

    .line 1548
    return-object p0
.end method

.method public setPointMode(I)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    .locals 1
    .param p1, "pointMode"    # I

    .line 1405
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mPointMode:I

    if-eq p1, v0, :cond_0

    .line 1406
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mPointMode:I

    .line 1407
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mParent:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$300(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->invalidate()V

    .line 1409
    :cond_0
    return-object p0
.end method

.method public setPointNumber(I)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    .locals 1
    .param p1, "pointNumber"    # I

    .line 1427
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mPointNumber:I

    if-eq p1, v0, :cond_0

    .line 1428
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mPointNumber:I

    .line 1429
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mParent:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$300(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->invalidate()V

    .line 1431
    :cond_0
    return-object p0
.end method

.method setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 1525
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mPosition:I

    .line 1526
    return-void
.end method

.method public setTag(Ljava/lang/Object;)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1452
    iput-object p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mTag:Ljava/lang/Object;

    .line 1453
    return-object p0
.end method

.method public setText(I)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1590
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mParent:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mParent:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    move-result-object v0

    return-object v0

    .line 1591
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1576
    iput-object p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mText:Ljava/lang/CharSequence;

    .line 1577
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->updateView()V

    .line 1578
    return-object p0
.end method

.method updateView()V
    .locals 1

    .line 1664
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mView:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    if-eqz v0, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mView:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->update()V

    .line 1667
    :cond_0
    return-void
.end method
