.class public Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;
.super Ljava/lang/Object;
.source "COUIPanelAdjustResizeHelper.java"


# static fields
.field private static final DISMISS_HEIGHT_ANIM_DURATION_COEFFICIENT:F = 50.0f

.field private static final DISMISS_HEIGHT_ANIM_DURATION_INITIAL_VALUE:F = 200.0f

.field private static final DISMISS_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SHOW_HEIGHT_ANIM_DURATION_COEFFICIENT:F = 120.0f

.field private static final SHOW_HEIGHT_ANIM_DURATION_INITIAL_VALUE:F = 300.0f

.field private static final SHOW_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAdjustKeyboardHeight:I

.field private mAdjustKeyboardOffset:I

.field private mAdjustKeyboardStartHeight:I

.field private mAdjustKeyboardTargetHeight:I

.field private mFocusVerticalScrolledView:Landroid/view/View;

.field private mFocusView:Landroid/view/View;

.field private mFocusViewRawY:I

.field private mInitialScrollParentViewPaddingBottom:I

.field private mIsAdjustKeyboardHeightChange:Z

.field private mIsFocusViewDisplayInVerticalScrolledView:Z

.field private mIsIgnoreHideKeyboardAnim:Z

.field private mIsKeyboardShow:Z

.field private mPaddingBottomAnim:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 38
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3e19999a    # 0.15f

    invoke-direct {v0, v2, v2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->SHOW_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 42
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->DISMISS_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mIsIgnoreHideKeyboardAnim:Z

    .line 46
    iput-boolean v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mIsKeyboardShow:Z

    .line 47
    iput v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardStartHeight:I

    .line 48
    iput v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardHeight:I

    .line 49
    iput v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardOffset:I

    .line 50
    iput v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardTargetHeight:I

    .line 51
    iput-boolean v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mIsAdjustKeyboardHeightChange:Z

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mFocusView:Landroid/view/View;

    .line 54
    iput v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mFocusViewRawY:I

    .line 55
    iput-boolean v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mIsFocusViewDisplayInVerticalScrolledView:Z

    .line 56
    iput-object v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mFocusVerticalScrolledView:Landroid/view/View;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mInitialScrollParentViewPaddingBottom:I

    .line 62
    return-void
.end method

.method private doAdjustKeyboardAnim(Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;Ljava/lang/Boolean;)V
    .locals 10
    .param p1, "layout"    # Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;
    .param p2, "isShowKeyBoard"    # Ljava/lang/Boolean;

    .line 134
    if-eqz p1, :cond_a

    iget v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardOffset:I

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 138
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardHeight:I

    iget v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardOffset:I

    const/4 v2, -0x1

    if-eq v0, v1, :cond_1

    .line 139
    const/4 v0, 0x1

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 143
    .local v0, "temp":I
    :goto_0
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getMaxHeight()I

    move-result v1

    .line 144
    .local v1, "maxHeight":I
    iget v3, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardStartHeight:I

    iget v4, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mFocusViewRawY:I

    sub-int/2addr v3, v4

    iget-boolean v4, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mIsKeyboardShow:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardHeight:I

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    sub-int/2addr v3, v4

    .line 145
    .local v3, "focusViewBottom":I
    iget-boolean v4, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mIsFocusViewDisplayInVerticalScrolledView:Z

    const/high16 v5, 0x43480000    # 200.0f

    const/high16 v6, 0x42480000    # 50.0f

    const/high16 v7, 0x43960000    # 300.0f

    const/high16 v8, 0x42f00000    # 120.0f

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    .line 146
    iget v4, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardOffset:I

    mul-int/2addr v4, v0

    .line 148
    .local v4, "offset":I
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 149
    int-to-float v5, v4

    mul-float/2addr v5, v8

    int-to-float v6, v1

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v5, v7

    goto :goto_2

    .line 151
    :cond_4
    int-to-float v7, v4

    mul-float/2addr v7, v6

    int-to-float v6, v1

    div-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    .line 154
    .local v5, "duration":F
    :goto_2
    iget-object v6, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mFocusVerticalScrolledView:Landroid/view/View;

    if-eqz v6, :cond_5

    .line 155
    iget-object v2, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mFocusVerticalScrolledView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 156
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mInitialScrollParentViewPaddingBottom:I

    goto :goto_3

    .line 158
    .end local v2    # "view":Landroid/view/View;
    :cond_5
    move-object v6, p1

    .line 159
    .local v6, "view":Landroid/view/View;
    iput v2, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mInitialScrollParentViewPaddingBottom:I

    .line 161
    move-object v2, v6

    .end local v6    # "view":Landroid/view/View;
    .restart local v2    # "view":Landroid/view/View;
    :goto_3
    float-to-long v6, v5

    invoke-direct {p0, v2, v4, v6, v7}, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->doPaddingBottomAnim(Landroid/view/View;IJ)V

    .line 162
    .end local v2    # "view":Landroid/view/View;
    .end local v4    # "offset":I
    .end local v5    # "duration":F
    goto :goto_5

    :cond_6
    iget-boolean v2, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mIsKeyboardShow:Z

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v2, v4, :cond_7

    iget v2, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardHeight:I

    if-ge v3, v2, :cond_9

    .line 163
    :cond_7
    iget v2, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardOffset:I

    mul-int/2addr v2, v0

    .line 165
    .local v2, "offset":I
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 166
    int-to-float v4, v2

    mul-float/2addr v4, v8

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v4, v7

    goto :goto_4

    .line 168
    :cond_8
    int-to-float v4, v2

    mul-float/2addr v4, v6

    int-to-float v6, v1

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v4, v5

    .line 170
    .local v4, "duration":F
    :goto_4
    float-to-long v5, v4

    invoke-direct {p0, p1, v2, v5, v6}, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->doPaddingBottomAnim(Landroid/view/View;IJ)V

    .line 172
    .end local v2    # "offset":I
    .end local v4    # "duration":F
    :cond_9
    :goto_5
    return-void

    .line 135
    .end local v0    # "temp":I
    .end local v1    # "maxHeight":I
    .end local v3    # "focusViewBottom":I
    :cond_a
    :goto_6
    return-void
.end method

.method private doPaddingBottomAnim(Landroid/view/View;IJ)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I
    .param p3, "duration"    # J

    .line 175
    move-object/from16 v7, p0

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 178
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    .line 179
    .local v10, "paddingLeft":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    .line 180
    .local v11, "paddingRight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    .line 182
    .local v12, "paddingTop":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    .line 183
    .local v13, "paddingBottom":I
    const/4 v0, 0x0

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 184
    .local v14, "startValue":I
    add-int v1, v14, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 185
    .local v15, "endValue":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v14, v1, v0

    const/4 v0, 0x1

    aput v15, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v7, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mPaddingBottomAnim:Landroid/animation/ValueAnimator;

    .line 186
    iget-object v0, v7, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mPaddingBottomAnim:Landroid/animation/ValueAnimator;

    move-wide/from16 v5, p3

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 187
    if-ge v14, v15, :cond_1

    .line 188
    iget-object v0, v7, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mPaddingBottomAnim:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->SHOW_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, v7, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mPaddingBottomAnim:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->DISMISS_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 192
    :goto_0
    iget-object v4, v7, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mPaddingBottomAnim:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$1;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v8, v3

    move v3, v10

    move-object v9, v4

    move v4, v12

    move v5, v11

    move v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$1;-><init>(Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;Landroid/view/View;IIII)V

    invoke-virtual {v9, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 198
    iget-object v6, v7, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mPaddingBottomAnim:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$2;

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$2;-><init>(Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;Landroid/view/View;III)V

    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 207
    iget-object v0, v7, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mPaddingBottomAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 208
    return-void

    .line 176
    .end local v10    # "paddingLeft":I
    .end local v11    # "paddingRight":I
    .end local v12    # "paddingTop":I
    .end local v13    # "paddingBottom":I
    .end local v14    # "startValue":I
    .end local v15    # "endValue":I
    :cond_2
    :goto_1
    return-void
.end method

.method private getMeasureHeight(Landroid/view/View;)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 211
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 213
    .local v1, "height":I
    if-nez v1, :cond_0

    .line 214
    nop

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 216
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 214
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0

    .line 219
    :cond_0
    return v1

    .line 222
    .end local v1    # "height":I
    :cond_1
    return v0
.end method

.method private getScrollingParentView()Landroid/view/View;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mFocusVerticalScrolledView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mFocusVerticalScrolledView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 239
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleFocusView(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 108
    if-eqz p1, :cond_2

    .line 109
    invoke-virtual {p1}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, "focusView":Landroid/view/View;
    iput-object v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mFocusView:Landroid/view/View;

    .line 111
    if-eqz v0, :cond_2

    .line 112
    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mFocusViewRawY:I

    .line 113
    iput-boolean v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mIsFocusViewDisplayInVerticalScrolledView:Z

    .line 114
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mFocusVerticalScrolledView:Landroid/view/View;

    .line 115
    invoke-direct {p0, v0}, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->isScrolled(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 116
    iput-boolean v2, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mIsFocusViewDisplayInVerticalScrolledView:Z

    .line 117
    iput-object v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mFocusVerticalScrolledView:Landroid/view/View;

    .line 119
    :cond_0
    invoke-direct {p0, v0}, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->getMeasureHeight(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mFocusViewRawY:I

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 121
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 122
    invoke-direct {p0, v0}, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->isScrolled(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    iput-boolean v2, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mIsFocusViewDisplayInVerticalScrolledView:Z

    .line 124
    iput-object v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mFocusVerticalScrolledView:Landroid/view/View;

    .line 126
    :cond_1
    iget v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mFocusViewRawY:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mFocusViewRawY:I

    .line 127
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 131
    .end local v0    # "focusView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private isScrolled(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 226
    instance-of v0, p1, Landroid/widget/ScrollView;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/widget/AbsListView;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroidx/core/view/ScrollingView;

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


# virtual methods
.method public adjustResize(Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;ZI)V
    .locals 4
    .param p1, "layout"    # Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;
    .param p2, "isKeyboardShow"    # Z
    .param p3, "keyboardHeight"    # I

    .line 68
    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mIsKeyboardShow:Z

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardHeight:I

    if-ne v0, p3, :cond_0

    goto/16 :goto_2

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->releaseData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    nop

    .line 73
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 74
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getMaxHeight()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 72
    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->measure(II)V

    .line 76
    :cond_1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->handleFocusView(Landroid/view/ViewGroup;)V

    .line 77
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 78
    iget v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardHeight:I

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardHeight:I

    if-eq v1, p3, :cond_3

    .line 79
    iput-boolean v2, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mIsAdjustKeyboardHeightChange:Z

    .line 80
    iget-boolean v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mIsKeyboardShow:Z

    if-eqz v1, :cond_2

    .line 81
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, p3

    iput v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardStartHeight:I

    .line 82
    iget v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardHeight:I

    sub-int v1, p3, v1

    iput v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardOffset:I

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardStartHeight:I

    .line 85
    iput p3, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardOffset:I

    .line 87
    :goto_0
    iput p3, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardHeight:I

    .line 88
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->doAdjustKeyboardAnim(Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 90
    :cond_3
    iput-boolean v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mIsAdjustKeyboardHeightChange:Z

    .line 91
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardStartHeight:I

    .line 92
    iput p3, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardHeight:I

    .line 93
    iget v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardStartHeight:I

    iget v3, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardHeight:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardTargetHeight:I

    .line 94
    iget v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardHeight:I

    iput v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardOffset:I

    .line 95
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->doAdjustKeyboardAnim(Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 97
    :cond_4
    iget-boolean v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mIsIgnoreHideKeyboardAnim:Z

    if-nez v1, :cond_5

    .line 98
    iput-boolean v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mIsAdjustKeyboardHeightChange:Z

    .line 99
    iput p3, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardHeight:I

    .line 100
    iget v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardHeight:I

    iput v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mAdjustKeyboardOffset:I

    .line 101
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->doAdjustKeyboardAnim(Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;Ljava/lang/Boolean;)V

    .line 103
    :cond_5
    :goto_1
    iput-boolean v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mIsIgnoreHideKeyboardAnim:Z

    .line 104
    iput-boolean p2, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mIsKeyboardShow:Z

    .line 105
    return-void

    .line 69
    :cond_6
    :goto_2
    return-void
.end method

.method public recoveryScrollingParentViewPaddingBottom(Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;)V
    .locals 3
    .param p1, "layout"    # Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;

    .line 243
    iget-boolean v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mIsFocusViewDisplayInVerticalScrolledView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->getScrollingParentView()Landroid/view/View;

    move-result-object v0

    .line 245
    .local v0, "parent":Landroid/view/View;
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mInitialScrollParentViewPaddingBottom:I

    if-ltz v2, :cond_0

    .line 246
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 248
    .end local v0    # "parent":Landroid/view/View;
    :cond_0
    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 249
    invoke-virtual {p1, v1, v1, v1, v1}, Lcom/coui/appcompat/widget/COUIMaxHeightDraggableVerticalLinearLayout;->setPadding(IIII)V

    .line 251
    :cond_2
    :goto_0
    return-void
.end method

.method public releaseData()Z
    .locals 2

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "result":Z
    iget-object v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mPaddingBottomAnim:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mPaddingBottomAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mPaddingBottomAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 258
    const/4 v0, 0x1

    .line 260
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mPaddingBottomAnim:Landroid/animation/ValueAnimator;

    .line 262
    :cond_1
    return v0
.end method

.method public setIgnoreHideKeyboardAnim(Z)V
    .locals 0
    .param p1, "ignoreHideKeyboardAnim"    # Z

    .line 232
    iput-boolean p1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->mIsIgnoreHideKeyboardAnim:Z

    .line 233
    return-void
.end method
