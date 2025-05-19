.class public Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;
.super Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;
.source "COUIMaxHeightDraggableVerticalLinearLayout.java"


# instance fields
.field private mCurrentWindowViewHeight:I

.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mIsPortrait:Z

.field private mLayoutWindowVisibility:I

.field private mMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mCurrentWindowViewHeight:I

    .line 40
    iput v0, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mMaxHeight:I

    .line 48
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mIsPortrait:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mCurrentWindowViewHeight:I

    .line 40
    iput v0, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mMaxHeight:I

    .line 53
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mIsPortrait:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mCurrentWindowViewHeight:I

    .line 40
    iput v0, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mMaxHeight:I

    .line 58
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mIsPortrait:Z

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    .line 37
    iget v0, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mCurrentWindowViewHeight:I

    return v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    .line 37
    iget v0, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mMaxHeight:I

    return v0
.end method

.method static synthetic access$102(Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;
    .param p1, "x1"    # I

    .line 37
    iput p1, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mMaxHeight:I

    return p1
.end method


# virtual methods
.method public getMaxHeight()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mMaxHeight:I

    return v0
.end method

.method public layoutAtMaxHeight()V
    .locals 3

    .line 75
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 76
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mMaxHeight:I

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->getPanelMaxHeight(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mMaxHeight:I

    .line 79
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mMaxHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 80
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 93
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->onAttachedToWindow()V

    .line 94
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->getPanelMaxHeight(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mMaxHeight:I

    .line 95
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->contextToActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 96
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    new-instance v1, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout$1;-><init>(Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 116
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 118
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 131
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 132
    invoke-static {p1}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->isPortrait(Landroid/content/res/Configuration;)Z

    move-result v0

    .line 133
    .local v0, "isPortrait":Z
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mIsPortrait:Z

    if-eq v1, v0, :cond_0

    .line 134
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mIsPortrait:Z

    .line 135
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->getPanelMaxHeight(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mMaxHeight:I

    .line 137
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 126
    :cond_0
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->onDetachedFromWindow()V

    .line 127
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 63
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 64
    .local v0, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 65
    .local v1, "heightSize":I
    iget v2, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mMaxHeight:I

    if-lez v2, :cond_0

    if-eqz v0, :cond_0

    .line 66
    iget v2, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mMaxHeight:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 68
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->onMeasure(II)V

    .line 69
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .param p1, "visibility"    # I

    .line 141
    iget v0, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mLayoutWindowVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 142
    nop

    .line 143
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mMaxHeight:I

    const/high16 v2, -0x80000000

    .line 144
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 142
    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->measure(II)V

    .line 146
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mLayoutWindowVisibility:I

    .line 147
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->onWindowVisibilityChanged(I)V

    .line 148
    return-void
.end method

.method public updateMaxHeight(IZZ)V
    .locals 3
    .param p1, "windowHeight"    # I
    .param p2, "isIgnoreStatusBarHeight"    # Z
    .param p3, "isIgnoreNavigationBarHeight"    # Z

    .line 158
    if-nez p2, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 161
    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/util/COUINavigationBarUtil;->isNavigationBarShow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/util/COUINavigationBarUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->contextToActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 165
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 166
    invoke-static {v0, p1}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->getPanelMaxHeightIfActivityExist(Landroid/app/Activity;I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mMaxHeight:I

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_panel_normal_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int v1, p1, v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->mMaxHeight:I

    .line 170
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->requestLayout()V

    .line 171
    return-void
.end method
