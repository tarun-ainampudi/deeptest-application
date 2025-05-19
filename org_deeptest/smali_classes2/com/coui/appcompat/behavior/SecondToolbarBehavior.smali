.class public Lcom/coui/appcompat/behavior/SecondToolbarBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SecondToolbarBehavior.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "Lcom/google/android/material/appbar/AppBarLayout;",
        ">;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private mChild:Landroid/view/View;

.field private mCurrentOffset:I

.field private mDivider:Landroid/view/View;

.field private mDividerAlphaChangeEndY:I

.field private mDividerAlphaChangeOffset:I

.field private mDividerAlphaRange:F

.field public mDividerInitWidth:I

.field private mDividerParams:Landroid/view/ViewGroup$LayoutParams;

.field private mDividerWidthChangeEndY:I

.field private mDividerWidthChangeInitY:I

.field private mDividerWidthChangeOffset:I

.field private mDividerWidthRange:F

.field private mIsImmerSiveTheme:Z

.field private mListFirstChildInitY:I

.field private mLocation:[I

.field private mLocationY:I

.field private mMarginLeftRight:I

.field private mMaxWidth:I

.field private mNewOffset:I

.field private mResources:Landroid/content/res/Resources;

.field private mScrollView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mLocation:[I

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 83
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mLocation:[I

    .line 84
    invoke-direct {p0, p1}, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->init(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/behavior/SecondToolbarBehavior;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/behavior/SecondToolbarBehavior;

    .line 42
    invoke-direct {p0}, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->onListScroll()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    .line 89
    iget-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    sget v1, Lcoui/support/appcompat/R$dimen;->preference_divider_margin_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mMarginLeftRight:I

    .line 90
    iget-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    sget v1, Lcoui/support/appcompat/R$dimen;->preference_line_alpha_range_change_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerAlphaChangeOffset:I

    .line 91
    iget-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    sget v1, Lcoui/support/appcompat/R$dimen;->preference_divider_width_change_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerWidthChangeOffset:I

    .line 92
    iget-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    sget v1, Lcoui/support/appcompat/R$bool;->is_dialog_preference_immersive:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mIsImmerSiveTheme:Z

    .line 93
    return-void
.end method

.method private onListScroll()V
    .locals 4

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mChild:Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mScrollView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mScrollView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 143
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 144
    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 145
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 146
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mChild:Landroid/view/View;

    .line 147
    goto :goto_1

    .line 144
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mChild:Landroid/view/View;

    if-nez v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mScrollView:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mChild:Landroid/view/View;

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mChild:Landroid/view/View;

    iget-object v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mLocation:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 156
    iget-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mLocation:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mLocationY:I

    .line 157
    iput v1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mNewOffset:I

    .line 159
    iget v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mLocationY:I

    iget v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerAlphaChangeEndY:I

    if-ge v0, v2, :cond_3

    .line 160
    iget v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerAlphaChangeOffset:I

    iput v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mNewOffset:I

    goto :goto_2

    .line 161
    :cond_3
    iget v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mLocationY:I

    iget v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mListFirstChildInitY:I

    if-le v0, v2, :cond_4

    .line 162
    iput v1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mNewOffset:I

    goto :goto_2

    .line 165
    :cond_4
    iget v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mListFirstChildInitY:I

    iget v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mLocationY:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mNewOffset:I

    .line 167
    :goto_2
    iget v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mNewOffset:I

    iput v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mCurrentOffset:I

    .line 168
    iget v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerAlphaRange:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_5

    .line 169
    iget v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mCurrentOffset:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerAlphaChangeOffset:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerAlphaRange:F

    .line 170
    iget-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    iget v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerAlphaRange:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 173
    :cond_5
    iget v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mLocationY:I

    iget v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerWidthChangeEndY:I

    if-ge v0, v2, :cond_6

    .line 174
    iget v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerWidthChangeOffset:I

    iput v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mNewOffset:I

    goto :goto_3

    .line 175
    :cond_6
    iget v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mLocationY:I

    iget v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerWidthChangeInitY:I

    if-le v0, v2, :cond_7

    .line 176
    iput v1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mNewOffset:I

    goto :goto_3

    .line 179
    :cond_7
    iget v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerWidthChangeInitY:I

    iget v1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mLocationY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mNewOffset:I

    .line 181
    :goto_3
    iget v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mNewOffset:I

    iput v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mCurrentOffset:I

    .line 182
    iget v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mCurrentOffset:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerWidthChangeOffset:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerWidthRange:F

    .line 183
    iget-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerInitWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mMarginLeftRight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerWidthRange:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 184
    iget-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 136
    invoke-direct {p0}, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->onListScroll()V

    .line 137
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "i"    # I

    .line 132
    return-void
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 7
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    move-object v2, p2

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 5
    .param p1, "coordinatorLayout"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "child"    # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "directTargetChild"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "target"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "axes"    # I
    .param p6, "type"    # I

    .line 97
    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    move-result v2

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 99
    .local v0, "started":Z
    :goto_0
    iget-boolean v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mIsImmerSiveTheme:Z

    if-eqz v2, :cond_1

    .line 100
    return v1

    .line 102
    :cond_1
    if-eqz v0, :cond_4

    .line 103
    iget v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mListFirstChildInitY:I

    if-gtz v2, :cond_2

    .line 104
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mListFirstChildInitY:I

    .line 105
    iput-object p4, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mScrollView:Landroid/view/View;

    .line 106
    sget v2, Lcoui/support/appcompat/R$id;->divider_line:I

    invoke-virtual {p2, v2}, Lcom/google/android/material/appbar/AppBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    .line 107
    iget-object v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerInitWidth:I

    .line 108
    iget-object v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerParams:Landroid/view/ViewGroup$LayoutParams;

    .line 109
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mMaxWidth:I

    .line 110
    iget v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mListFirstChildInitY:I

    iget v3, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerAlphaChangeOffset:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerAlphaChangeEndY:I

    .line 111
    iget v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mListFirstChildInitY:I

    iget-object v3, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    sget v4, Lcoui/support/appcompat/R$dimen;->preference_divider_width_start_count_offset:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerWidthChangeInitY:I

    .line 112
    iget v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerWidthChangeInitY:I

    iget v3, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerWidthChangeOffset:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerWidthChangeEndY:I

    .line 114
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    .line 115
    new-instance v2, Lcom/coui/appcompat/behavior/SecondToolbarBehavior$1;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/behavior/SecondToolbarBehavior$1;-><init>(Lcom/coui/appcompat/behavior/SecondToolbarBehavior;)V

    invoke-virtual {p4, v2}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    goto :goto_1

    .line 121
    :cond_3
    instance-of v2, p4, Landroid/widget/AbsListView;

    if-eqz v2, :cond_4

    .line 122
    move-object v2, p4

    check-cast v2, Landroid/widget/AbsListView;

    .line 123
    .local v2, "listView":Landroid/widget/AbsListView;
    invoke-virtual {v2, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 126
    .end local v2    # "listView":Landroid/widget/AbsListView;
    :cond_4
    :goto_1
    return v1
.end method
