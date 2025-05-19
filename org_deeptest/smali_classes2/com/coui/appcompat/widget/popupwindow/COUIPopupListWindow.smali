.class public Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;
.super Landroid/widget/PopupWindow;
.source "COUIPopupListWindow.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mAlphaAnimationDuration:I

.field private mAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mAnchor:Landroid/view/View;

.field private mAnchorRect:Landroid/graphics/Rect;

.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mBackgroundPaddingRect:Landroid/graphics/Rect;

.field private mContentView:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mCoordinate:Landroid/graphics/Point;

.field private mCustomAdapter:Landroid/widget/BaseAdapter;

.field private mDecorViewRect:Landroid/graphics/Rect;

.field private mDefaultAdapter:Landroid/widget/BaseAdapter;

.field private mHasHorizontalSpace:Z

.field private mHasVerticalSpace:Z

.field private mIsDismissing:Z

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/widget/popupwindow/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mListViewUsedToMeasure:Landroid/widget/ListView;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mParentRectOnScreen:Landroid/graphics/Rect;

.field private mPivotX:F

.field private mPivotY:F

.field private mPopupListWindowMinWidth:I

.field private mPopupWindowOffset:[I

.field private mScaleAnimationDuration:I

.field private mScaleAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mShowAboveFirst:Z

.field private mTempLocation:[I

.field private mWindowLocationOnScreen:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mCoordinate:Landroid/graphics/Point;

    .line 70
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mTempLocation:[I

    .line 71
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mWindowLocationOnScreen:[I

    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mPopupWindowOffset:[I

    .line 85
    new-instance v0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow$1;-><init>(Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 110
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mContext:Landroid/content/Context;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mItemList:Ljava/util/List;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$integer;->coui_animation_time_move_veryfast:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mScaleAnimationDuration:I

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$integer;->coui_animation_time_move_veryfast:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAlphaAnimationDuration:I

    .line 114
    sget v0, Lcoui/support/appcompat/R$anim;->coui_curve_opacity_inout:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mScaleAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_popup_list_window_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mPopupListWindowMinWidth:I

    .line 117
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mListViewUsedToMeasure:Landroid/widget/ListView;

    .line 118
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mListViewUsedToMeasure:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mListViewUsedToMeasure:Landroid/widget/ListView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->createContentView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mContentView:Landroid/view/ViewGroup;

    .line 122
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->setClippingEnabled(Z)V

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v0, v2, :cond_0

    .line 126
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 127
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 129
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;
    .param p1, "x1"    # Z

    .line 54
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mIsDismissing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    .line 54
    invoke-direct {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->dismissPopupWindow()V

    return-void
.end method

.method private animateEnter()V
    .locals 10

    .line 311
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    iget v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mPivotX:F

    iget v8, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mPivotY:F

    const v1, 0x3f666666    # 0.9f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 313
    .local v0, "scaleAnimation":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 315
    .local v1, "alphaAnimation":Landroid/view/animation/Animation;
    iget v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mScaleAnimationDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 316
    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mScaleAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 317
    iget v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAlphaAnimationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 318
    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 320
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 321
    .local v2, "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 322
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 323
    iget-object v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 324
    return-void
.end method

.method private animateExit()V
    .locals 3

    .line 327
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 328
    .local v0, "alphaAnimation":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAlphaAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 329
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 330
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 331
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 332
    return-void
.end method

.method private calculateCoordinate()V
    .locals 12

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mHasHorizontalSpace:Z

    .line 263
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mHasVerticalSpace:Z

    .line 264
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 265
    iput-boolean v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mHasHorizontalSpace:Z

    .line 266
    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 269
    .local v1, "x":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mWindowLocationOnScreen:[I

    aget v4, v4, v3

    sub-int/2addr v2, v4

    .line 272
    .end local v1    # "x":I
    .local v2, "x":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v4

    .line 273
    .local v1, "availableHeightAboveAnchor":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 274
    .local v4, "availableHeightBelowAnchor":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->getHeight()I

    move-result v5

    .line 275
    .local v5, "popupWindowHeight":I
    if-lt v1, v5, :cond_1

    move v6, v0

    goto :goto_0

    :cond_1
    move v6, v3

    .line 276
    .local v6, "aboveHasSpace":Z
    :goto_0
    if-lt v4, v5, :cond_2

    move v7, v0

    goto :goto_1

    :cond_2
    move v7, v3

    .line 277
    .local v7, "belowHasSpace":Z
    :goto_1
    iget-object v8, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    .line 278
    .local v8, "aboveY":I
    iget-object v9, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    .line 279
    .local v9, "belowY":I
    if-gtz v4, :cond_3

    if-gtz v1, :cond_3

    .line 280
    iput-boolean v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mHasVerticalSpace:Z

    .line 281
    return-void

    .line 282
    :cond_3
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mShowAboveFirst:Z

    if-eqz v3, :cond_4

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_4
    if-eqz v7, :cond_6

    .line 283
    :goto_2
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mShowAboveFirst:Z

    if-eqz v3, :cond_5

    move v3, v8

    goto :goto_3

    :cond_5
    move v3, v9

    :goto_3
    goto :goto_6

    .line 284
    :cond_6
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mShowAboveFirst:Z

    if-eqz v3, :cond_7

    if-eqz v7, :cond_9

    goto :goto_4

    :cond_7
    if-eqz v6, :cond_9

    .line 285
    :goto_4
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mShowAboveFirst:Z

    if-eqz v3, :cond_8

    move v3, v9

    goto :goto_5

    :cond_8
    move v3, v8

    :goto_5
    goto :goto_6

    .line 286
    :cond_9
    if-le v1, v4, :cond_a

    .line 287
    iget-object v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 288
    .local v3, "y":I
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->setHeight(I)V

    goto :goto_6

    .line 290
    .end local v3    # "y":I
    :cond_a
    iget-object v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 291
    .restart local v3    # "y":I
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->setHeight(I)V

    .line 294
    :goto_6
    iget-object v10, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mCoordinate:Landroid/graphics/Point;

    iget-object v11, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mWindowLocationOnScreen:[I

    aget v0, v11, v0

    sub-int v0, v3, v0

    invoke-virtual {v10, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 295
    return-void
.end method

.method private calculatePivot()V
    .locals 5

    .line 298
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mWindowLocationOnScreen:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mCoordinate:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->getWidth()I

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-lt v0, v1, :cond_0

    .line 299
    iput v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mPivotX:F

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mWindowLocationOnScreen:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mCoordinate:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mPivotX:F

    .line 303
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mCoordinate:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mWindowLocationOnScreen:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mPivotY:F

    goto :goto_1

    .line 306
    :cond_1
    iput v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mPivotY:F

    .line 308
    :goto_1
    return-void
.end method

.method private calculateWindowLocation()V
    .locals 8

    .line 211
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mTempLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 212
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mTempLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 213
    .local v0, "rootViewLeftOnScreen":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mTempLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 215
    .local v2, "rootViewTopOnScreen":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mTempLocation:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 216
    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mTempLocation:[I

    aget v4, v4, v1

    .line 217
    .local v4, "rootViewLeftOnWindow":I
    iget-object v5, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mTempLocation:[I

    aget v5, v5, v3

    .line 219
    .local v5, "rootViewTopOnWindow":I
    iget-object v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mWindowLocationOnScreen:[I

    sub-int v7, v0, v4

    aput v7, v6, v1

    .line 220
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mWindowLocationOnScreen:[I

    sub-int v6, v2, v5

    aput v6, v1, v3

    .line 221
    return-void
.end method

.method private createContentView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 140
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$layout;->coui_popup_list_window_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 141
    .local v0, "contentView":Landroid/widget/FrameLayout;
    sget v1, Lcoui/support/appcompat/R$id;->coui_popup_list_view:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mListView:Landroid/widget/ListView;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    sget v3, Lcoui/support/appcompat/R$attr;->couiPopupListWindowBackground:I

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 143
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 144
    .local v2, "background":Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mBackgroundPaddingRect:Landroid/graphics/Rect;

    .line 145
    iget-object v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mBackgroundPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 146
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 147
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    return-object v0
.end method

.method private dismissPopupWindow()V
    .locals 1

    .line 344
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mIsDismissing:Z

    .line 346
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 347
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->setContentView(Landroid/view/View;)V

    .line 348
    return-void
.end method

.method private getPopupWindowMaxWidth()I
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mBackgroundPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mBackgroundPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 352
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mIsDismissing:Z

    if-nez v0, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->animateExit()V

    .line 355
    :cond_0
    return-void
.end method

.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/widget/popupwindow/PopupListItem;",
            ">;"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mItemList:Ljava/util/List;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public measurePopupWindow()V
    .locals 11

    .line 227
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAdapter:Landroid/widget/BaseAdapter;

    .line 228
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 229
    .local v1, "maxItemWidth":I
    const/4 v2, 0x0

    .line 232
    .local v2, "totalHeight":I
    invoke-direct {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->getPopupWindowMaxWidth()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 233
    .local v3, "widthMeasureSpec":I
    const/4 v4, 0x0

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 234
    .local v5, "heightMeasureSpec":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    .line 235
    .local v6, "count":I
    nop

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 236
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mListViewUsedToMeasure:Landroid/widget/ListView;

    invoke-interface {v0, v4, v7, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 238
    .local v7, "itemView":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/AbsListView$LayoutParams;

    .line 239
    .local v8, "lp":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v8, Landroid/widget/AbsListView$LayoutParams;->height:I

    const/4 v10, -0x2

    if-eq v9, v10, :cond_0

    .line 240
    iget v9, v8, Landroid/widget/AbsListView$LayoutParams;->height:I

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 243
    :cond_0
    invoke-virtual {v7, v3, v5}, Landroid/view/View;->measure(II)V

    .line 244
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 245
    .local v9, "itemWidth":I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 247
    .local v10, "itemHeight":I
    if-le v9, v1, :cond_1

    .line 248
    move v1, v9

    .line 250
    :cond_1
    add-int/2addr v2, v10

    .line 235
    .end local v8    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v9    # "itemWidth":I
    .end local v10    # "itemHeight":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 253
    .end local v4    # "i":I
    .end local v7    # "itemView":Landroid/view/View;
    :cond_2
    iget v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mPopupListWindowMinWidth:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v7, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mBackgroundPaddingRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v7

    iget-object v7, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mBackgroundPaddingRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v7

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->setWidth(I)V

    .line 254
    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mBackgroundPaddingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget-object v7, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mBackgroundPaddingRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v7

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->setHeight(I)V

    .line 255
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 336
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 337
    .local v0, "newRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 338
    .local v1, "oldRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 339
    invoke-direct {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->dismissPopupWindow()V

    .line 341
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 4

    .line 451
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Lcoui/support/appcompat/R$attr;->couiPopupListWindowBackground:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 452
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 453
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 454
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 455
    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .line 394
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mCustomAdapter:Landroid/widget/BaseAdapter;

    .line 395
    return-void
.end method

.method public setDismissTouchOutside(Z)V
    .locals 1
    .param p1, "isDismiss"    # Z

    .line 414
    if-eqz p1, :cond_0

    .line 415
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->setTouchable(Z)V

    .line 416
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->setFocusable(Z)V

    .line 417
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->setOutsideTouchable(Z)V

    goto :goto_0

    .line 419
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->setFocusable(Z)V

    .line 420
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->setOutsideTouchable(Z)V

    .line 422
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->update()V

    .line 423
    return-void
.end method

.method public setItemList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/widget/popupwindow/PopupListItem;",
            ">;)V"
        }
    .end annotation

    .line 373
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/coui/appcompat/widget/popupwindow/PopupListItem;>;"
    if-eqz p1, :cond_0

    .line 374
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mItemList:Ljava/util/List;

    .line 375
    new-instance v0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mDefaultAdapter:Landroid/widget/BaseAdapter;

    .line 377
    :cond_0
    return-void
.end method

.method public setOffset(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 435
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mPopupWindowOffset:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 436
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mPopupWindowOffset:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 437
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mPopupWindowOffset:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 438
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mPopupWindowOffset:[I

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 439
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 385
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 386
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;

    .line 158
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mDefaultAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mCustomAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_6

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 162
    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchor:Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 164
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 166
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mCustomAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mDefaultAdapter:Landroid/widget/BaseAdapter;

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAdapter:Landroid/widget/BaseAdapter;

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mCustomAdapter:Landroid/widget/BaseAdapter;

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAdapter:Landroid/widget/BaseAdapter;

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 176
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    .line 177
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 178
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mParentRectOnScreen:Landroid/graphics/Rect;

    .line 179
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchor:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 180
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchor:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 181
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mParentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 182
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mPopupWindowOffset:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 183
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mPopupWindowOffset:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 184
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mPopupWindowOffset:[I

    const/4 v5, 0x2

    aget v2, v2, v5

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 185
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mPopupWindowOffset:[I

    const/4 v5, 0x3

    aget v2, v2, v5

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 186
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mTempLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 187
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mTempLocation:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mTempLocation:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 188
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mTempLocation:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mTempLocation:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 190
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 191
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 192
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 193
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 195
    invoke-direct {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->calculateWindowLocation()V

    .line 196
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->measurePopupWindow()V

    .line 197
    invoke-direct {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->calculateCoordinate()V

    .line 198
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mHasVerticalSpace:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mHasHorizontalSpace:Z

    if-nez v0, :cond_4

    goto :goto_1

    .line 201
    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->setContentView(Landroid/view/View;)V

    .line 202
    invoke-direct {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->calculatePivot()V

    .line 203
    invoke-direct {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->animateEnter()V

    .line 204
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mAnchor:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mCoordinate:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mCoordinate:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->showAtLocation(Landroid/view/View;III)V

    .line 205
    return-void

    .line 199
    :cond_5
    :goto_1
    return-void

    .line 159
    :cond_6
    :goto_2
    return-void
.end method

.method public showAboveFirst(Z)V
    .locals 0
    .param p1, "showAboveFirst"    # Z

    .line 447
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->mShowAboveFirst:Z

    .line 448
    return-void
.end method
