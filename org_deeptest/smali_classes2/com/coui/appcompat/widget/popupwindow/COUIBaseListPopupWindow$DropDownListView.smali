.class Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;
.super Lcom/coui/appcompat/widget/COUIListViewCompat;
.source "COUIBaseListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation


# instance fields
.field private mClickAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mListSelectionHidden:Z

.field private mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .line 1654
    sget v0, Lcoui/support/appcompat/R$attr;->dropDownListViewStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/coui/appcompat/widget/COUIListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1655
    iput-boolean p2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->mHijackFocus:Z

    .line 1656
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->setCacheColorHint(I)V

    .line 1657
    return-void
.end method

.method static synthetic access$402(Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;
    .param p1, "x1"    # Z

    .line 1602
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    return p1
.end method

.method private clearPressedItem()V
    .locals 1

    .line 1731
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    .line 1732
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->setPressed(Z)V

    .line 1734
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->drawableStateChanged()V

    .line 1736
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->mClickAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 1737
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->mClickAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 1738
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->mClickAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 1740
    :cond_0
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 1726
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1727
    .local v0, "id":J
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1728
    return-void
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 1743
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    .line 1747
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->setPressed(Z)V

    .line 1748
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->layoutChildren()V

    .line 1751
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->setSelection(I)V

    .line 1752
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V

    .line 1757
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->setSelectorEnabled(Z)V

    .line 1761
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->refreshDrawableState()V

    .line 1762
    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .line 1802
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIListViewCompat;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .line 1782
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIListViewCompat;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFocused()Z
    .locals 1

    .line 1792
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIListViewCompat;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isInTouchMode()Z
    .locals 1

    .line 1772
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIListViewCompat;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    .line 1666
    const/4 v0, 0x1

    .line 1667
    .local v0, "handledEvent":Z
    const/4 v1, 0x0

    .line 1669
    .local v1, "clearPressedItem":Z
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1670
    .local v2, "actionMasked":I
    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1672
    :pswitch_0
    const/4 v0, 0x0

    .line 1673
    goto :goto_0

    .line 1675
    :pswitch_1
    const/4 v0, 0x0

    .line 1678
    :pswitch_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 1679
    .local v4, "activeIndex":I
    if-gez v4, :cond_0

    .line 1680
    const/4 v0, 0x0

    .line 1681
    goto :goto_0

    .line 1684
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    .line 1685
    .local v5, "x":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    .line 1686
    .local v6, "y":I
    invoke-virtual {p0, v5, v6}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->pointToPosition(II)I

    move-result v7

    .line 1687
    .local v7, "position":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 1688
    const/4 v1, 0x1

    .line 1689
    goto :goto_0

    .line 1692
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v7, v8

    invoke-virtual {p0, v8}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1693
    .local v8, "child":Landroid/view/View;
    int-to-float v9, v5

    int-to-float v10, v6

    invoke-direct {p0, v8, v7, v9, v10}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    .line 1694
    const/4 v0, 0x1

    .line 1696
    if-ne v2, v3, :cond_2

    .line 1697
    invoke-direct {p0, v8, v7}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->clickPressedItem(Landroid/view/View;I)V

    .line 1703
    .end local v4    # "activeIndex":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v7    # "position":I
    .end local v8    # "child":Landroid/view/View;
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    if-eqz v1, :cond_4

    .line 1704
    :cond_3
    invoke-direct {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->clearPressedItem()V

    .line 1708
    :cond_4
    if-eqz v0, :cond_6

    .line 1709
    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    if-nez v4, :cond_5

    .line 1710
    new-instance v4, Landroidx/core/widget/ListViewAutoScrollHelper;

    invoke-direct {v4, p0}, Landroidx/core/widget/ListViewAutoScrollHelper;-><init>(Landroid/widget/ListView;)V

    iput-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    .line 1712
    :cond_5
    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    invoke-virtual {v4, v3}, Landroidx/core/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroidx/core/widget/AutoScrollHelper;

    .line 1713
    iget-object v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    invoke-virtual {v3, p0, p1}, Landroidx/core/widget/ListViewAutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1714
    :cond_6
    iget-object v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    if-eqz v3, :cond_7

    .line 1715
    iget-object v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/core/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroidx/core/widget/AutoScrollHelper;

    .line 1718
    :cond_7
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected touchModeDrawsInPressedStateCompat()Z
    .locals 1

    .line 1766
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIListViewCompat;->touchModeDrawsInPressedStateCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
