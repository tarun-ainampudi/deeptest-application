.class public Lcom/coui/appcompat/widget/navigation/COUITabNavigationMenuView;
.super Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;
.source "COUITabNavigationMenuView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/navigation/COUITabNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 27
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUITabNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/util/COUIOrientationUtil;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUITabNavigationMenuView;->getChildCount()I

    move-result v0

    .line 29
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 30
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/navigation/COUITabNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 31
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 32
    sget v3, Lcoui/support/appcompat/R$id;->icon:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 33
    .local v3, "iconLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xe

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 29
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "iconLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->onMeasure(II)V

    .line 38
    return-void
.end method
