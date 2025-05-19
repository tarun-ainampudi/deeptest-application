.class Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "COUITabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/tablayout/COUITabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field private mCustomIconView:Landroid/widget/ImageView;

.field private mCustomTextView:Landroid/widget/TextView;

.field private mCustomView:Landroid/view/View;

.field private mDefaultMaxLines:I

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;Landroid/content/Context;)V
    .locals 5
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout;
    .param p2, "context"    # Landroid/content/Context;

    .line 1694
    iput-object p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    .line 1695
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1692
    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mDefaultMaxLines:I

    .line 1696
    iget v1, p1, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabBackgroundResId:I

    if-eqz v1, :cond_0

    .line 1700
    nop

    .line 1701
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabBackgroundResId:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1700
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1703
    :cond_0
    iget v1, p1, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingStart:I

    iget v2, p1, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingTop:I

    iget v3, p1, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingEnd:I

    iget v4, p1, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingBottom:I

    invoke-static {p0, v1, v2, v3, v4}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1704
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->setGravity(I)V

    .line 1705
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->setOrientation(I)V

    .line 1706
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->setClickable(Z)V

    .line 1707
    nop

    .line 1708
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Landroidx/core/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroidx/core/view/PointerIconCompat;

    move-result-object v0

    .line 1707
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    .line 1709
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    .line 1683
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .locals 2
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "textSize"    # F

    .line 1933
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    div-float v1, p3, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 9
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "iconView"    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1871
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTab:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTab:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1872
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTab:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTab:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 1873
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_1
    iget-object v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTab:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTab:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    .line 1875
    .local v3, "contentDesc":Ljava/lang/CharSequence;
    :goto_2
    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz p2, :cond_4

    .line 1876
    if-eqz v0, :cond_3

    .line 1877
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1878
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1879
    invoke-virtual {p0, v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->setVisibility(I)V

    goto :goto_3

    .line 1881
    :cond_3
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1882
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1884
    :goto_3
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1887
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 1888
    .local v6, "hasText":Z
    if-eqz p1, :cond_7

    .line 1889
    if-eqz v6, :cond_6

    .line 1890
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1891
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1892
    iget-object v7, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v7}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$500(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1893
    iget-object v7, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v7}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$300(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1894
    iget-object v7, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v7, v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$502(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;Z)Z

    .line 1895
    iget-object v7, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v7}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$300(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    move-result-object v7

    invoke-virtual {v7}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->requestLayout()V

    .line 1900
    :cond_5
    iget v7, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mDefaultMaxLines:I

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1902
    invoke-virtual {p0, v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->setVisibility(I)V

    goto :goto_4

    .line 1904
    :cond_6
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1905
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1907
    :goto_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1910
    :cond_7
    if-eqz p2, :cond_9

    .line 1911
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1912
    .local v5, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v7, 0x0

    .line 1913
    .local v7, "bottomMargin":I
    if-eqz v6, :cond_8

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_8

    .line 1915
    iget-object v8, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-virtual {v8, v4}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->dpToPx(I)I

    move-result v7

    .line 1917
    :cond_8
    iget v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v7, v4, :cond_9

    .line 1918
    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1919
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    .line 1922
    .end local v5    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v7    # "bottomMargin":I
    :cond_9
    if-eqz v6, :cond_a

    goto :goto_5

    :cond_a
    move-object v1, v3

    :goto_5
    invoke-static {p0, v1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1923
    return-void
.end method


# virtual methods
.method public getTab()Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    .locals 1

    .line 1926
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTab:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1772
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1774
    const-class v0, Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1775
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1779
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1781
    const-class v0, Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1782
    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 1713
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 1715
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTab:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    if-eqz v1, :cond_1

    .line 1716
    if-nez v0, :cond_0

    .line 1717
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->playSoundEffect(I)V

    .line 1719
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTab:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->select()V

    .line 1720
    const/4 v1, 0x1

    return v1

    .line 1722
    :cond_1
    return v0
.end method

.method reset()V
    .locals 1

    .line 1792
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->setTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V

    .line 1793
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->setSelected(Z)V

    .line 1794
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1757
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1759
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1760
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1762
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1763
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1765
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1766
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1768
    :cond_2
    return-void
.end method

.method public setSelected(Z)V
    .locals 3
    .param p1, "selected"    # Z

    .line 1729
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1731
    .local v0, "changed":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1733
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 1735
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->sendAccessibilityEvent(I)V

    .line 1738
    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v1, p0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$400(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;Z)V

    .line 1740
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTextView:Landroid/widget/TextView;

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 1744
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 1745
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1747
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 1748
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1750
    :cond_3
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 1751
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setSelected(Z)V

    .line 1753
    :cond_4
    return-void
.end method

.method setTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1785
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTab:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    if-eq p1, v0, :cond_0

    .line 1786
    iput-object p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTab:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    .line 1787
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->update()V

    .line 1789
    :cond_0
    return-void
.end method

.method final update()V
    .locals 6

    .line 1797
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTab:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    .line 1798
    .local v0, "tab":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 1799
    .local v2, "custom":Landroid/view/View;
    :goto_0
    if-eqz v2, :cond_6

    .line 1800
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1801
    .local v3, "customParent":Landroid/view/ViewParent;
    if-eq v3, p0, :cond_2

    .line 1802
    if-eqz v3, :cond_1

    .line 1803
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1805
    :cond_1
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->addView(Landroid/view/View;)V

    .line 1807
    :cond_2
    iput-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 1808
    iget-object v4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    if-eqz v4, :cond_3

    .line 1809
    iget-object v4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1811
    :cond_3
    iget-object v4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    .line 1812
    iget-object v4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1813
    iget-object v4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1816
    :cond_4
    const v1, 0x1020014

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 1817
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 1818
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    invoke-static {v1}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mDefaultMaxLines:I

    .line 1820
    :cond_5
    const v1, 0x1020006

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    .line 1821
    .end local v3    # "customParent":Landroid/view/ViewParent;
    goto :goto_1

    .line 1823
    :cond_6
    iget-object v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v3, :cond_7

    .line 1824
    iget-object v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->removeView(Landroid/view/View;)V

    .line 1825
    iput-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 1827
    :cond_7
    iput-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 1828
    iput-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    .line 1831
    :goto_1
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mCustomView:Landroid/view/View;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_b

    .line 1833
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v1, :cond_8

    .line 1834
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v5, Lcoui/support/appcompat/R$layout;->design_layout_tab_icon:I

    .line 1835
    invoke-virtual {v1, v5, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1836
    .local v1, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p0, v1, v4}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->addView(Landroid/view/View;I)V

    .line 1837
    iput-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    .line 1839
    .end local v1    # "iconView":Landroid/widget/ImageView;
    :cond_8
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v1, :cond_9

    .line 1840
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v5, Lcoui/support/appcompat/R$layout;->design_layout_tab_text:I

    .line 1841
    invoke-virtual {v1, v5, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1842
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->addView(Landroid/view/View;)V

    .line 1843
    iput-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTextView:Landroid/widget/TextView;

    .line 1844
    iget-object v5, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-static {v5}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mDefaultMaxLines:I

    .line 1845
    invoke-static {v1, v3}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->adaptBoldAndMediumFont(Landroid/widget/TextView;Z)V

    .line 1851
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_9
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    iget v5, v5, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextSize:F

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1852
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1854
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    iget-object v1, v1, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_a

    .line 1855
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    iget-object v5, v5, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1857
    :cond_a
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 1860
    :cond_b
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_d

    .line 1861
    :cond_c
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 1866
    :cond_d
    :goto_2
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_3

    :cond_e
    move v3, v4

    :goto_3
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->setSelected(Z)V

    .line 1867
    return-void
.end method
