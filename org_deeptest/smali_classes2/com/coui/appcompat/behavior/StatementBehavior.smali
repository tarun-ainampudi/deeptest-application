.class public Lcom/coui/appcompat/behavior/StatementBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "StatementBehavior.java"


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

.field private mListFirstChildInitY:I

.field private mLocation:[I

.field private mLocationY:I

.field private mMarginLeftRight:I

.field private mNewOffset:I

.field private mResources:Landroid/content/res/Resources;

.field private mScrollView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mLocation:[I

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 76
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mLocation:[I

    .line 77
    invoke-direct {p0, p1}, Lcom/coui/appcompat/behavior/StatementBehavior;->init(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/behavior/StatementBehavior;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/behavior/StatementBehavior;

    .line 37
    invoke-direct {p0}, Lcom/coui/appcompat/behavior/StatementBehavior;->onScroll()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mResources:Landroid/content/res/Resources;

    .line 82
    iget-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mResources:Landroid/content/res/Resources;

    sget v1, Lcoui/support/appcompat/R$dimen;->preference_divider_margin_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mMarginLeftRight:I

    .line 83
    iget-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mResources:Landroid/content/res/Resources;

    sget v1, Lcoui/support/appcompat/R$dimen;->preference_line_alpha_range_change_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerAlphaChangeOffset:I

    .line 84
    iget-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mResources:Landroid/content/res/Resources;

    sget v1, Lcoui/support/appcompat/R$dimen;->preference_divider_width_change_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerWidthChangeOffset:I

    .line 85
    return-void
.end method

.method private onScroll()V
    .locals 5

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mChild:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mScrollView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mScrollView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 116
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 117
    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 118
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 119
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mChild:Landroid/view/View;

    .line 120
    goto :goto_1

    .line 117
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mChild:Landroid/view/View;

    if-nez v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mScrollView:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mChild:Landroid/view/View;

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mChild:Landroid/view/View;

    iget-object v2, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mLocation:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 129
    iget-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mLocation:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mLocationY:I

    .line 130
    iput v1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mNewOffset:I

    .line 132
    iget v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mLocationY:I

    iget v2, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerAlphaChangeEndY:I

    if-ge v0, v2, :cond_3

    .line 133
    iget v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerAlphaChangeOffset:I

    iput v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mNewOffset:I

    goto :goto_2

    .line 134
    :cond_3
    iget v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mLocationY:I

    iget v2, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mListFirstChildInitY:I

    if-le v0, v2, :cond_4

    .line 135
    iput v1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mNewOffset:I

    goto :goto_2

    .line 137
    :cond_4
    iget v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mListFirstChildInitY:I

    iget v2, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mLocationY:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mNewOffset:I

    .line 139
    :goto_2
    iget v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mNewOffset:I

    iput v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mCurrentOffset:I

    .line 141
    iget v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerAlphaRange:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_5

    .line 142
    iget v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mCurrentOffset:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerAlphaChangeOffset:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    iput v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerAlphaRange:F

    .line 143
    iget-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDivider:Landroid/view/View;

    iget v3, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerAlphaRange:F

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 146
    :cond_5
    iget v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mLocationY:I

    iget v3, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerWidthChangeEndY:I

    if-ge v0, v3, :cond_6

    .line 147
    iget v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerWidthChangeOffset:I

    iput v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mNewOffset:I

    goto :goto_3

    .line 148
    :cond_6
    iget v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mLocationY:I

    iget v3, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerWidthChangeInitY:I

    if-le v0, v3, :cond_7

    .line 149
    iput v1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mNewOffset:I

    goto :goto_3

    .line 151
    :cond_7
    iget v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerWidthChangeInitY:I

    iget v1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mLocationY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mNewOffset:I

    .line 153
    :goto_3
    iget v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mNewOffset:I

    iput v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mCurrentOffset:I

    .line 154
    iget v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mCurrentOffset:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerWidthChangeOffset:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerWidthRange:F

    .line 155
    iget-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerInitWidth:I

    int-to-float v1, v1

    iget v3, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mMarginLeftRight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerWidthRange:F

    sub-float/2addr v2, v4

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 156
    iget-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDivider:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    return-void
.end method


# virtual methods
.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 3
    .param p1, "coordinatorLayout"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "child"    # Landroid/view/View;
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

    .line 89
    iget v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mListFirstChildInitY:I

    if-gtz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mLocation:[I

    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 91
    iget-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mListFirstChildInitY:I

    .line 92
    iput-object p4, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mScrollView:Landroid/view/View;

    .line 93
    sget v0, Lcoui/support/appcompat/R$id;->divider_line:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDivider:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDivider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerInitWidth:I

    .line 95
    iget-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDivider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerParams:Landroid/view/ViewGroup$LayoutParams;

    .line 96
    iget v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mListFirstChildInitY:I

    iget v1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerAlphaChangeOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerAlphaChangeEndY:I

    .line 97
    iget v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mListFirstChildInitY:I

    iget-object v1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mResources:Landroid/content/res/Resources;

    sget v2, Lcoui/support/appcompat/R$dimen;->preference_divider_width_start_count_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerWidthChangeInitY:I

    .line 98
    iget v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerWidthChangeInitY:I

    iget v1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerWidthChangeOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerWidthChangeEndY:I

    .line 100
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 101
    new-instance v0, Lcom/coui/appcompat/behavior/StatementBehavior$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/behavior/StatementBehavior$1;-><init>(Lcom/coui/appcompat/behavior/StatementBehavior;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 109
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
