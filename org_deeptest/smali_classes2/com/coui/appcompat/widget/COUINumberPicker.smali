.class public Lcom/coui/appcompat/widget/COUINumberPicker;
.super Landroid/widget/LinearLayout;
.source "COUINumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUINumberPicker$TouchEffectHandler;,
        Lcom/coui/appcompat/widget/COUINumberPicker$TwoDigitFormatter;,
        Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;,
        Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;,
        Lcom/coui/appcompat/widget/COUINumberPicker$Formatter;,
        Lcom/coui/appcompat/widget/COUINumberPicker$OnScrollListener;,
        Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;
    }
.end annotation


# static fields
.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_MIDDLE:I = 0x0

.field public static final ALIGN_RIGHT:I = 0x2

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final MSG_PLAY_EFFECT:I = 0x0

.field private static final MSG_TALKBACK_VALUE_CHANGE:I = 0x1

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field public static final SELECTOR_INDEX_IGNORE:I = -0x80000000

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_WHEEL_ITEM_COUNT_DEFAULT:I = 0x5

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "COUINumberPicker"

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final VELOCITY_SPEED_UP_RATIO:I = 0x2


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityNodeProvider:Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mAlignPosition:I

.field private mAlphaEnd:I

.field private mAlphaStart:I

.field private mBlueEnd:I

.field private mBlueStart:I

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private mClickSoundId:I

.field private mCurrentLanguageTooLong:Z

.field private mCurrentScrollOffset:I

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field mFocusTextColor:I

.field private mFocusTextSize:I

.field private mFormatter:Lcom/coui/appcompat/widget/COUINumberPicker$Formatter;

.field private mGradientPositionBottom:I

.field private mGradientPositionTop:I

.field private mGreenEnd:I

.field private mGreenStart:I

.field private mHandler:Landroid/os/Handler;

.field private mIgnorable:Z

.field private mIgnoreBarHeight:F

.field private mIgnoreBarSpacing:F

.field private mIgnoreBarWidth:F

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialScrollOffset:I

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMeasureTextSelectorPaint:Landroid/graphics/Paint;

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mNormalTextBottom:F

.field mNormalTextColor:I

.field private final mNormalTextSize:I

.field private mNormalTextTop:F

.field private mNumberPickerPaddingLeft:I

.field private mNumberPickerPaddingRight:I

.field private mOnScrollListener:Lcom/coui/appcompat/widget/COUINumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;

.field private mPerformClickOnTap:Z

.field private final mPressedStateHelper:Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mRedEnd:I

.field private mRedStart:I

.field mRefreshStyle:I

.field private mScrollState:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectorIndices:[I

.field private mSelectorItemCount:I

.field private mSelectorMiddleItemIndex:I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSoundUtil:Lcom/coui/appcompat/util/COUISoundLoadUtil;

.field private mTalkbackSuffix:Ljava/lang/String;

.field private mTopSelectionDividerTop:I

.field private mTouchEffectThread:Landroid/os/HandlerThread;

.field private mTouchSlop:I

.field private mTwoDigitFormatter:Lcom/coui/appcompat/widget/COUINumberPicker$TwoDigitFormatter;

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVisualWidth:I

.field private mWrapSelectorWheel:Z

.field private mWrapSelectorWheelPreferred:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 372
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 373
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 379
    sget v0, Lcoui/support/appcompat/R$attr;->couiNumberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 380
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 386
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 387
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 403
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 147
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 229
    const-wide/16 v1, 0x12c

    iput-wide v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLongPressUpdateInterval:J

    .line 244
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mInitialScrollOffset:I

    .line 288
    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mScrollState:I

    .line 328
    const/4 v2, -0x1

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 404
    invoke-static {p0, v1}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 405
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    .line 406
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 407
    invoke-static {}, Lcom/coui/appcompat/util/COUISoundLoadUtil;->getInstance()Lcom/coui/appcompat/util/COUISoundLoadUtil;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSoundUtil:Lcom/coui/appcompat/util/COUISoundLoadUtil;

    .line 408
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSoundUtil:Lcom/coui/appcompat/util/COUISoundLoadUtil;

    sget v4, Lcoui/support/appcompat/R$raw;->coui_numberpicker_click:I

    invoke-virtual {v3, p1, v4}, Lcom/coui/appcompat/util/COUISoundLoadUtil;->loadSoundFile(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mClickSoundId:I

    .line 410
    if-eqz p2, :cond_0

    .line 411
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mRefreshStyle:I

    .line 413
    :cond_0
    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mRefreshStyle:I

    if-nez v3, :cond_1

    .line 414
    iput p3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mRefreshStyle:I

    .line 417
    :cond_1
    sget-object v3, Lcoui/support/appcompat/R$styleable;->COUINumberPicker:[I

    invoke-virtual {p1, p2, v3, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 418
    .local v3, "typedArray":Landroid/content/res/TypedArray;
    sget v4, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_couiPickerRowNumber:I

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorItemCount:I

    .line 419
    iget v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorItemCount:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorMiddleItemIndex:I

    .line 420
    iget v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorItemCount:I

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorIndices:[I

    .line 421
    sget v4, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_internalMinHeight:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinHeight:I

    .line 423
    sget v4, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_internalMaxHeight:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMaxHeight:I

    .line 425
    iget v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinHeight:I

    if-eq v4, v2, :cond_3

    iget v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMaxHeight:I

    if-eq v4, v2, :cond_3

    iget v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinHeight:I

    iget v5, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMaxHeight:I

    if-gt v4, v5, :cond_2

    goto :goto_0

    .line 427
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minHeight > maxHeight"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_3
    :goto_0
    sget v4, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_internalMinWidth:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinWidth:I

    .line 432
    sget v4, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_internalMaxWidth:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMaxWidth:I

    .line 434
    iget v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinWidth:I

    if-eq v4, v2, :cond_5

    iget v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMaxWidth:I

    if-eq v4, v2, :cond_5

    iget v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinWidth:I

    iget v5, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMaxWidth:I

    if-gt v4, v5, :cond_4

    goto :goto_1

    .line 436
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minWidth > maxWidth"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_5
    :goto_1
    sget v4, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_couiPickerAlignPosition:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAlignPosition:I

    .line 440
    sget v4, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_focusTextSize:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mFocusTextSize:I

    .line 441
    sget v4, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_startTextSize:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mNormalTextSize:I

    .line 442
    sget v4, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_couiPickerVisualWidth:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mVisualWidth:I

    .line 443
    sget v4, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_couiNOPickerPaddingLeft:I

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mNumberPickerPaddingLeft:I

    .line 444
    sget v4, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_couiNOPickerPaddingRight:I

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mNumberPickerPaddingRight:I

    .line 445
    sget v4, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_couiNormalTextColor:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mNormalTextColor:I

    .line 446
    sget v4, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_couiFocusTextColor:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mFocusTextColor:I

    .line 447
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mNormalTextColor:I

    iget v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mFocusTextColor:I

    invoke-virtual {p0, v2, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->setGradientColor(II)V

    .line 448
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 450
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcoui/support/appcompat/R$dimen;->coui_numberpicker_ignore_bar_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mIgnoreBarWidth:F

    .line 451
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcoui/support/appcompat/R$dimen;->coui_numberpicker_ignore_bar_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mIgnoreBarHeight:F

    .line 452
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcoui/support/appcompat/R$dimen;->coui_numberpicker_ignore_bar_spacing:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mIgnoreBarSpacing:F

    .line 454
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 455
    .local v2, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mTouchSlop:I

    .line 456
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinimumFlingVelocity:I

    .line 457
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMaximumFlingVelocity:I

    .line 460
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 461
    .local v4, "paint":Landroid/graphics/Paint;
    iget v5, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mNormalTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 462
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 463
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 464
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    .line 465
    .local v5, "metrics":Landroid/graphics/Paint$FontMetrics;
    const-string v6, "sys-sans-en"

    invoke-static {v6, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 466
    iget v6, v5, Landroid/graphics/Paint$FontMetrics;->top:F

    iput v6, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mNormalTextTop:F

    .line 467
    iget v6, v5, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iput v6, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mNormalTextBottom:F

    .line 468
    iput-object v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 469
    iput-object v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMeasureTextSelectorPaint:Landroid/graphics/Paint;

    .line 470
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMeasureTextSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcoui/support/appcompat/R$dimen;->coui_numberpicker_textSize_big:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 471
    new-instance v6, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v6, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 472
    new-instance v6, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x40200000    # 2.5f

    invoke-direct {v8, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v6, v7, v8}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v6, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 473
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getImportantForAccessibility()I

    move-result v6

    if-nez v6, :cond_6

    .line 474
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->setImportantForAccessibility(I)V

    .line 476
    :cond_6
    new-instance v0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;-><init>(Lcom/coui/appcompat/widget/COUINumberPicker;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mPressedStateHelper:Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;

    .line 477
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWillNotDraw(Z)V

    .line 478
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setVerticalScrollBarEnabled(Z)V

    .line 480
    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUINumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 79
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/widget/COUINumberPicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 79
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mTalkbackSuffix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/coui/appcompat/widget/COUINumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumberPicker;
    .param p1, "x1"    # Z

    .line 79
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/widget/COUINumberPicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 79
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->playSoundEffect()V

    return-void
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/widget/COUINumberPicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 79
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->performFeedback()V

    return-void
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUINumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 79
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/COUINumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 79
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$302(Lcom/coui/appcompat/widget/COUINumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumberPicker;
    .param p1, "x1"    # Z

    .line 79
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/COUINumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 79
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/COUINumberPicker;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumberPicker;
    .param p1, "x1"    # Z

    .line 79
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/COUINumberPicker;)J
    .locals 2
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 79
    iget-wide v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/widget/COUINumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 79
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mValue:I

    return v0
.end method

.method static synthetic access$800(Lcom/coui/appcompat/widget/COUINumberPicker;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 79
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/coui/appcompat/widget/COUINumberPicker;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 79
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method private changeValueByOne(Z)V
    .locals 13
    .param p1, "increment"    # Z

    .line 1356
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 1359
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mPreviousScrollerY:I

    .line 1360
    if-eqz p1, :cond_1

    .line 1361
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    neg-int v5, v0

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1363
    :cond_1
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1365
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate()V

    .line 1366
    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 4
    .param p1, "selectorIndices"    # [I

    .line 1484
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1485
    aget v2, p1, v1

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->getWrappedSelectorIndex(II)I

    move-result v2

    aput v2, p1, v1

    .line 1484
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1487
    .end local v1    # "i":I
    :cond_0
    aget v0, p1, v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1488
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .line 1495
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1496
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1497
    .local v1, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1498
    return-void

    .line 1500
    :cond_0
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinValue:I

    if-lt p1, v2, :cond_3

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 1503
    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1504
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinValue:I

    sub-int v2, p1, v2

    .line 1505
    .local v2, "displayedValueIndex":I
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v3, v2

    .line 1506
    .end local v2    # "displayedValueIndex":I
    goto :goto_1

    .line 1507
    :cond_2
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1501
    :cond_3
    :goto_0
    const-string v1, ""

    .line 1510
    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1511
    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    .line 1569
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    .line 1570
    .local v0, "deltaY":I
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1571
    iput v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mPreviousScrollerY:I

    .line 1572
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1

    .line 1573
    if-lez v0, :cond_0

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    neg-int v1, v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    :goto_0
    add-int/2addr v0, v1

    .line 1575
    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1576
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate()V

    .line 1577
    const/4 v1, 0x1

    return v1

    .line 1579
    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 10
    .param p1, "velocityY"    # I

    .line 1426
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mPreviousScrollerY:I

    .line 1428
    if-lez p1, :cond_0

    .line 1429
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1431
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1434
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate()V

    .line 1435
    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .line 1514
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mFormatter:Lcom/coui/appcompat/widget/COUINumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mFormatter:Lcom/coui/appcompat/widget/COUINumberPicker$Formatter;

    invoke-interface {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .line 483
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGradientCoeff(I)I
    .locals 3
    .param p1, "distance"    # I

    .line 1194
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mInitialScrollOffset:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorMiddleItemIndex:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    div-int/2addr v0, v1

    return v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 1
    .param p1, "selectorIndex"    # I

    .line 1441
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getWrappedSelectorIndex(II)I

    move-result v0

    return v0
.end method

.method private getWrappedSelectorIndex(II)I
    .locals 6
    .param p1, "selectorIndex"    # I
    .param p2, "offset"    # I

    .line 1453
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    .line 1454
    const/4 v0, -0x1

    return v0

    .line 1457
    :cond_0
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinValue:I

    add-int/lit8 v1, v1, -0x1

    .line 1458
    .local v1, "selectorIndexWrap":I
    :goto_0
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mIgnorable:Z

    add-int/2addr v2, v3

    .line 1459
    .local v2, "rangeWrap":I
    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinValue:I

    sub-int v3, v1, v3

    add-int/2addr v3, p2

    invoke-static {v3, v2}, Lcom/coui/appcompat/util/COUIMathUtils;->floorMod(II)I

    move-result v3

    .line 1461
    .local v3, "remainder":I
    iget v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMaxValue:I

    iget v5, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinValue:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    if-ge v3, v4, :cond_2

    .line 1462
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinValue:I

    add-int/2addr v0, v3

    return v0

    .line 1464
    :cond_2
    return v0
.end method

.method private gradualChange(IIF)I
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "coeff"    # F

    .line 1199
    sub-int v0, p2, p1

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    sub-int v0, p2, v0

    return v0
.end method

.method private gradualChangeTextSize(IIIII)F
    .locals 18
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "normalStart"    # I
    .param p4, "normalEnd"    # I
    .param p5, "distance"    # I

    .line 1203
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    iget v5, v0, Lcom/coui/appcompat/widget/COUINumberPicker;->mInitialScrollOffset:I

    iget v6, v0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorMiddleItemIndex:I

    iget v7, v0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 1204
    .local v5, "middleItemY":I
    iget v6, v0, Lcom/coui/appcompat/widget/COUINumberPicker;->mInitialScrollOffset:I

    .line 1205
    .local v6, "firstItemY":I
    iget v7, v0, Lcom/coui/appcompat/widget/COUINumberPicker;->mInitialScrollOffset:I

    iget-object v8, v0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorIndices:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    iget v9, v0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 1206
    .local v7, "lastItemY":I
    int-to-double v8, v4

    int-to-double v10, v5

    iget v12, v0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    int-to-double v12, v12

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    int-to-double v10, v4

    int-to-double v12, v5

    iget v8, v0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    move-wide/from16 v16, v10

    int-to-double v9, v8

    mul-double/2addr v9, v14

    add-double/2addr v12, v9

    cmpg-double v8, v16, v12

    if-gez v8, :cond_0

    .line 1207
    int-to-float v8, v1

    sub-int v10, v1, p1

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    sub-int v11, v4, v5

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    iget v11, v0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    sub-float/2addr v8, v10

    return v8

    .line 1209
    :cond_0
    iget v8, v0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    sub-int v8, v5, v8

    const/high16 v10, 0x3f800000    # 1.0f

    if-gt v4, v8, :cond_1

    .line 1210
    int-to-float v8, v2

    sub-int v11, v3, v2

    int-to-float v11, v11

    mul-float/2addr v11, v10

    sub-int v10, v4, v6

    int-to-float v10, v10

    mul-float/2addr v11, v10

    iget v10, v0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    int-to-float v10, v10

    div-float/2addr v11, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v11, v10

    add-float/2addr v8, v11

    return v8

    .line 1213
    :cond_1
    iget v8, v0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    add-int/2addr v8, v5

    if-lt v4, v8, :cond_2

    .line 1214
    int-to-float v8, v2

    sub-int v11, v3, v2

    int-to-float v11, v11

    mul-float/2addr v11, v10

    sub-int v10, v7, v4

    int-to-float v10, v10

    mul-float/2addr v11, v10

    iget v10, v0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    int-to-float v10, v10

    div-float/2addr v11, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v11, v10

    add-float/2addr v8, v11

    return v8

    .line 1217
    :cond_2
    int-to-float v8, v3

    return v8
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .line 1473
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 1474
    aget v1, p1, v0

    invoke-direct {p0, v1, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->getWrappedSelectorIndex(II)I

    move-result v1

    aput v1, p1, v0

    .line 1473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1476
    .end local v0    # "i":I
    :cond_0
    array-length v0, p1

    sub-int/2addr v0, v2

    aget v0, p1, v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1477
    return-void
.end method

.method private initColorGradientRes()V
    .locals 8

    .line 1633
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mInitialScrollOffset:I

    int-to-double v0, v0

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    int-to-double v2, v2

    iget v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorMiddleItemIndex:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mGradientPositionTop:I

    .line 1634
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mInitialScrollOffset:I

    int-to-double v0, v0

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    int-to-double v2, v2

    iget v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorMiddleItemIndex:I

    int-to-double v4, v4

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mGradientPositionBottom:I

    .line 1635
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .line 1384
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1385
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mNormalTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->setFadingEdgeLength(I)V

    .line 1386
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 6

    .line 1369
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->initializeSelectorWheelIndices()V

    .line 1370
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorIndices:[I

    .line 1371
    .local v0, "selectorIndices":[I
    array-length v1, v0

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mNormalTextSize:I

    mul-int/2addr v1, v2

    .line 1372
    .local v1, "totalTextHeight":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v2, v2

    .line 1373
    .local v2, "totalTextGapHeight":F
    array-length v3, v0

    int-to-float v3, v3

    .line 1374
    .local v3, "textGapCount":F
    div-float v4, v2, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorTextGapHeight:I

    .line 1375
    iget v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mNormalTextSize:I

    iget v5, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    .line 1377
    const/4 v4, 0x0

    iput v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mInitialScrollOffset:I

    iput v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mCurrentScrollOffset:I

    .line 1379
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mTopSelectionDividerTop:I

    .line 1380
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mBottomSelectionDividerBottom:I

    .line 1381
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 6

    .line 1275
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1276
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorIndices:[I

    .line 1277
    .local v0, "selectorIndices":[I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getValue()I

    move-result v1

    .line 1278
    .local v1, "current":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 1280
    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorMiddleItemIndex:I

    sub-int v3, v2, v3

    .line 1281
    .local v3, "offset":I
    iget-boolean v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mIgnorable:Z

    if-eqz v4, :cond_0

    .line 1282
    invoke-direct {p0, v1, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->getWrappedSelectorIndex(II)I

    move-result v4

    goto :goto_1

    .line 1284
    :cond_0
    add-int v4, v1, v3

    .line 1287
    .local v4, "selectorIndex":I
    :goto_1
    iget-boolean v5, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mWrapSelectorWheel:Z

    if-eqz v5, :cond_1

    .line 1288
    invoke-direct {p0, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->getWrappedSelectorIndex(I)I

    move-result v4

    .line 1291
    :cond_1
    aput v4, v0, v2

    .line 1292
    aget v5, v0, v2

    invoke-direct {p0, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1278
    .end local v3    # "offset":I
    .end local v4    # "selectorIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1294
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .line 1247
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1248
    return p1

    .line 1250
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1251
    .local v0, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1252
    .local v1, "mode":I
    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    .line 1254
    return p1

    .line 1260
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1258
    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 1256
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 7
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .line 511
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 512
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 513
    .local v1, "amountToScroll":I
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    rem-int/2addr v2, v3

    .line 514
    .local v2, "futureScrollOffset":I
    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v3, v2

    .line 515
    .local v3, "overshootAdjustment":I
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 516
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_1

    .line 517
    if-lez v3, :cond_0

    .line 518
    iget v5, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v3, v5

    goto :goto_0

    .line 520
    :cond_0
    iget v5, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    add-int/2addr v3, v5

    .line 523
    :cond_1
    :goto_0
    add-int/2addr v1, v3

    .line 524
    invoke-virtual {p0, v4, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->scrollBy(II)V

    .line 525
    return v0

    .line 527
    :cond_2
    return v4
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .line 1522
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mOnValueChangeListener:Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1523
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mOnValueChangeListener:Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;->onValueChange(Lcom/coui/appcompat/widget/COUINumberPicker;II)V

    .line 1525
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .line 1411
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    .line 1412
    return-void

    .line 1414
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mScrollState:I

    .line 1415
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mOnScrollListener:Lcom/coui/appcompat/widget/COUINumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1416
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mOnScrollListener:Lcom/coui/appcompat/widget/COUINumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker$OnScrollListener;->onScrollStateChange(Lcom/coui/appcompat/widget/COUINumberPicker;I)V

    .line 1418
    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .line 1394
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_0

    .line 1395
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->ensureScrollWheelAdjusted()Z

    .line 1397
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 1399
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mScrollState:I

    .line 1403
    :goto_0
    return-void
.end method

.method private performFeedback()V
    .locals 1

    .line 1352
    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->performHapticFeedback(I)Z

    .line 1353
    return-void
.end method

.method private playSoundEffect()V
    .locals 8

    .line 1348
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSoundUtil:Lcom/coui/appcompat/util/COUISoundLoadUtil;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mClickSoundId:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v7}, Lcom/coui/appcompat/util/COUISoundLoadUtil;->play(Landroid/content/Context;IFFIIF)V

    .line 1349
    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .line 1533
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1534
    new-instance v0, Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/coui/appcompat/widget/COUINumberPicker;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    .line 1536
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1538
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$000(Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1539
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Lcom/coui/appcompat/widget/COUINumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1540
    return-void
.end method

.method private removeAllCallbacks()V
    .locals 1

    .line 1555
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1556
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1558
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mPressedStateHelper:Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->cancel()V

    .line 1559
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .line 1546
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1547
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1549
    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .line 1266
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1267
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1268
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->resolveSizeAndState(III)I

    move-result v1

    return v1

    .line 1270
    .end local v0    # "desiredWidth":I
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 3
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .line 1303
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    .line 1304
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->initializeSelectorWheelIndices()V

    .line 1305
    return-void

    .line 1309
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_1

    .line 1310
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    .line 1312
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1313
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1316
    :goto_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mValue:I

    .line 1317
    .local v0, "previous":I
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mValue:I

    .line 1318
    if-eqz p2, :cond_2

    .line 1320
    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->notifyChange(II)V

    .line 1321
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1322
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1324
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1325
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1326
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1327
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1328
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1334
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->initializeSelectorWheelIndices()V

    .line 1335
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate()V

    .line 1336
    return-void
.end method

.method private updateWrapSelectorWheel()V
    .locals 4

    .line 951
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 952
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mWrapSelectorWheelPreferred:Z

    if-eqz v1, :cond_1

    move v2, v3

    nop

    :cond_1
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mWrapSelectorWheel:Z

    .line 953
    return-void
.end method


# virtual methods
.method public addTalkbackSuffix(Ljava/lang/String;)V
    .locals 0
    .param p1, "suffix"    # Ljava/lang/String;

    .line 1344
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mTalkbackSuffix:Ljava/lang/String;

    .line 1345
    return-void
.end method

.method public computeScroll()V
    .locals 4

    .line 758
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 759
    .local v0, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 761
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 762
    return-void

    .line 765
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 766
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 767
    .local v1, "currentScrollerY":I
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 768
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mPreviousScrollerY:I

    .line 770
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->scrollBy(II)V

    .line 771
    iput v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mPreviousScrollerY:I

    .line 772
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 773
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 775
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate()V

    .line 777
    :goto_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .line 830
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .line 820
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .line 825
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 713
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    const/4 v0, 0x0

    .line 718
    .local v0, "hoveredVirtualViewId":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 719
    .local v1, "action":I
    nop

    .line 720
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;

    .line 722
    .local v2, "provider":Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;
    const/4 v3, 0x7

    const/4 v4, -0x1

    const/16 v5, 0x100

    const/4 v6, 0x0

    const/16 v7, 0x40

    const/16 v8, 0x80

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    .end local v0    # "hoveredVirtualViewId":I
    .end local v1    # "action":I
    .end local v2    # "provider":Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;
    goto :goto_0

    .line 746
    .restart local v0    # "hoveredVirtualViewId":I
    .restart local v1    # "action":I
    .restart local v2    # "provider":Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;
    :pswitch_0
    invoke-virtual {v2, v0, v5}, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 748
    iput v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_0

    .line 724
    :pswitch_1
    invoke-virtual {v2, v0, v8}, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 726
    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 727
    invoke-virtual {v2, v0, v7, v6}, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 730
    goto :goto_0

    .line 732
    :cond_0
    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v3, v0, :cond_1

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v3, v4, :cond_1

    .line 734
    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v2, v3, v5}, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 737
    invoke-virtual {v2, v0, v8}, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 739
    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 740
    invoke-virtual {v2, v0, v7, v6}, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 753
    .end local v0    # "hoveredVirtualViewId":I
    .end local v1    # "action":I
    .end local v2    # "provider":Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 665
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 666
    .local v0, "keyCode":I
    const/16 v1, 0x17

    if-eq v0, v1, :cond_4

    const/16 v1, 0x42

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 674
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 688
    :pswitch_1
    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_5

    .line 689
    const/4 v1, -0x1

    iput v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 690
    return v2

    .line 676
    :pswitch_2
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mWrapSelectorWheel:Z

    const/16 v3, 0x14

    if-nez v1, :cond_1

    if-ne v0, v3, :cond_0

    .line 677
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_5

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_5

    .line 678
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->requestFocus()Z

    .line 679
    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 680
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->removeAllCallbacks()V

    .line 681
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 682
    if-ne v0, v3, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->changeValueByOne(Z)V

    .line 684
    :cond_3
    return v2

    .line 669
    :cond_4
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->removeAllCallbacks()V

    .line 670
    nop

    .line 695
    :cond_5
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 653
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 654
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 657
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->removeAllCallbacks()V

    .line 660
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 700
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 701
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 704
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->removeAllCallbacks()V

    .line 707
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1223
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAccessibilityNodeProvider:Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_0

    .line 1224
    new-instance v0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;-><init>(Lcom/coui/appcompat/widget/COUINumberPicker;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAccessibilityNodeProvider:Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;

    .line 1226
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAccessibilityNodeProvider:Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .line 1072
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .line 1025
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 990
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 914
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinValue:I

    return v0
.end method

.method public getTextSize()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        fromInclusive = false
    .end annotation

    .line 1236
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .line 1067
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 898
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .line 961
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method public isAccessibilityEnable()Z
    .locals 1

    .line 1629
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIgnorable()Z
    .locals 1

    .line 1643
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mIgnorable:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1077
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1078
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "touchEffect"

    const/16 v2, -0x10

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mTouchEffectThread:Landroid/os/HandlerThread;

    .line 1079
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mTouchEffectThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1080
    new-instance v0, Lcom/coui/appcompat/widget/COUINumberPicker$TouchEffectHandler;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mTouchEffectThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker$TouchEffectHandler;-><init>(Lcom/coui/appcompat/widget/COUINumberPicker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mHandler:Landroid/os/Handler;

    .line 1081
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1085
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1086
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->removeAllCallbacks()V

    .line 1087
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mTouchEffectThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mTouchEffectThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1089
    iput-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mTouchEffectThread:Landroid/os/HandlerThread;

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1092
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1095
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1100
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getRight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 1101
    .local v0, "x":F
    iget v1, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mCurrentScrollOffset:I

    .line 1103
    .local v1, "y":I
    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mVisualWidth:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mVisualWidth:I

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getRight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 1104
    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mAlignPosition:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1111
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getRight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mVisualWidth:I

    sub-int/2addr v2, v3

    iget v3, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mVisualWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v0, v2

    .line 1112
    goto :goto_0

    .line 1108
    :pswitch_1
    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mVisualWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 1109
    goto :goto_0

    .line 1106
    :pswitch_2
    nop

    .line 1118
    :cond_0
    :goto_0
    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mNumberPickerPaddingLeft:I

    if-eqz v2, :cond_1

    .line 1119
    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mNumberPickerPaddingLeft:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 1121
    :cond_1
    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mNumberPickerPaddingRight:I

    if-eqz v2, :cond_2

    .line 1122
    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mNumberPickerPaddingRight:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 1126
    .end local v0    # "x":F
    .local v7, "x":F
    :cond_2
    move v7, v0

    iget-object v8, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorIndices:[I

    .line 1127
    .local v8, "selectorIndices":[I
    const/4 v0, 0x0

    move v9, v1

    .end local v1    # "y":I
    .local v0, "i":I
    .local v9, "y":I
    :goto_1
    move v10, v0

    .end local v0    # "i":I
    .local v10, "i":I
    array-length v0, v8

    if-ge v10, v0, :cond_8

    .line 1128
    aget v11, v8, v10

    .line 1134
    .local v11, "selectorIndex":I
    iget v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mGradientPositionTop:I

    if-le v9, v0, :cond_3

    iget v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mGradientPositionBottom:I

    if-ge v9, v0, :cond_3

    .line 1135
    invoke-direct {v6, v9}, Lcom/coui/appcompat/widget/COUINumberPicker;->getGradientCoeff(I)I

    move-result v0

    .line 1136
    .local v0, "coeff":I
    iget v1, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mAlphaStart:I

    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mAlphaEnd:I

    int-to-float v3, v0

    invoke-direct {v6, v1, v2, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->gradualChange(IIF)I

    move-result v1

    .line 1137
    .local v1, "a":I
    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mRedStart:I

    iget v3, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mRedEnd:I

    int-to-float v4, v0

    invoke-direct {v6, v2, v3, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->gradualChange(IIF)I

    move-result v2

    .line 1138
    .local v2, "r":I
    iget v3, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mGreenStart:I

    iget v4, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mGreenEnd:I

    int-to-float v5, v0

    invoke-direct {v6, v3, v4, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->gradualChange(IIF)I

    move-result v3

    .line 1139
    .local v3, "g":I
    iget v4, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mBlueStart:I

    iget v5, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mBlueEnd:I

    int-to-float v12, v0

    invoke-direct {v6, v4, v5, v12}, Lcom/coui/appcompat/widget/COUINumberPicker;->gradualChange(IIF)I

    move-result v0

    .line 1140
    .local v0, "b":I
    goto :goto_2

    .line 1141
    .end local v0    # "b":I
    .end local v1    # "a":I
    .end local v2    # "r":I
    .end local v3    # "g":I
    :cond_3
    iget v1, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mAlphaStart:I

    .line 1142
    .restart local v1    # "a":I
    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mRedStart:I

    .line 1143
    .restart local v2    # "r":I
    iget v3, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mGreenStart:I

    .line 1144
    .restart local v3    # "g":I
    iget v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mBlueStart:I

    .end local v1    # "a":I
    .end local v2    # "r":I
    .end local v3    # "g":I
    .restart local v0    # "b":I
    .local v12, "a":I
    .local v13, "r":I
    .local v14, "g":I
    :goto_2
    move v12, v1

    move v13, v2

    move v14, v3

    move v15, v0

    .line 1146
    .end local v0    # "b":I
    .local v15, "b":I
    invoke-static {v12, v13, v14, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    .line 1148
    .local v5, "color":I
    iget v1, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mNormalTextSize:I

    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mFocusTextSize:I

    iget v3, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mNormalTextSize:I

    iget v4, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mNormalTextSize:I

    move-object/from16 v0, p0

    move-object/from16 v16, v8

    move v8, v5

    .end local v5    # "color":I
    .local v8, "color":I
    .local v16, "selectorIndices":[I
    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->gradualChangeTextSize(IIIII)F

    move-result v0

    .line 1149
    .local v0, "f":F
    iget-object v1, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1150
    iget-object v1, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1151
    .local v1, "scrollSelectorValue":Ljava/lang/String;
    iget-boolean v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mCurrentLanguageTooLong:Z

    if-nez v2, :cond_4

    .line 1152
    iget-object v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1153
    iget-object v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mMeasureTextSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 1154
    .local v2, "estimatedCurrentValueWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    .line 1156
    .local v3, "displayAreaWidth":F
    cmpl-float v4, v2, v3

    if-ltz v4, :cond_4

    .line 1157
    iget-object v4, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v5, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mNormalTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1158
    const/4 v4, 0x1

    iput-boolean v4, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mCurrentLanguageTooLong:Z

    .line 1162
    .end local v2    # "estimatedCurrentValueWidth":F
    .end local v3    # "displayAreaWidth":F
    :cond_4
    const/high16 v2, -0x80000000

    if-eq v11, v2, :cond_6

    .line 1163
    const/4 v2, 0x0

    .line 1164
    .local v2, "drawPositionY":I
    iget v3, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorMiddleItemIndex:I

    if-ne v10, v3, :cond_5

    .line 1165
    iget-object v3, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 1166
    .local v3, "fmi":Landroid/graphics/Paint$FontMetrics;
    add-int v4, v9, v9

    iget v5, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v4, v5

    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    .line 1167
    .end local v2    # "drawPositionY":I
    .end local v3    # "fmi":Landroid/graphics/Paint$FontMetrics;
    .local v4, "drawPositionY":I
    goto :goto_3

    .line 1168
    .end local v4    # "drawPositionY":I
    .restart local v2    # "drawPositionY":I
    :cond_5
    add-int v3, v9, v9

    iget v4, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mNormalTextTop:F

    sub-float/2addr v3, v4

    iget v4, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mNormalTextBottom:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v4, v3, 0x2

    .line 1171
    .end local v2    # "drawPositionY":I
    .restart local v4    # "drawPositionY":I
    :goto_3
    int-to-float v2, v4

    iget-object v3, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual {v5, v1, v7, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1172
    .end local v4    # "drawPositionY":I
    nop

    .line 1189
    move/from16 v23, v0

    move-object/from16 v24, v1

    goto :goto_5

    .line 1173
    :cond_6
    move-object/from16 v5, p1

    iget v2, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mFocusTextSize:I

    int-to-float v2, v2

    div-float v2, v0, v2

    .line 1175
    .local v2, "scale":F
    const/high16 v3, -0x41000000    # -0.5f

    .local v3, "barIndex":F
    :goto_4
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v17, v3, v4

    if-gez v17, :cond_7

    .line 1176
    iget v4, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mIgnoreBarWidth:F

    move/from16 v23, v0

    .end local v0    # "f":F
    .local v23, "f":F
    iget v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mIgnoreBarSpacing:F

    add-float/2addr v4, v0

    mul-float/2addr v4, v3

    mul-float/2addr v4, v2

    .line 1177
    .local v4, "barX":F
    iget v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mIgnoreBarWidth:F

    mul-float/2addr v0, v2

    .line 1178
    .local v0, "barWidth":F
    move-object/from16 v24, v1

    .end local v1    # "scrollSelectorValue":Ljava/lang/String;
    .local v24, "scrollSelectorValue":Ljava/lang/String;
    iget v1, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mIgnoreBarHeight:F

    mul-float/2addr v1, v2

    .line 1179
    .local v1, "barHeight":F
    add-float v17, v7, v4

    const/high16 v18, 0x40000000    # 2.0f

    div-float v19, v0, v18

    sub-float v19, v17, v19

    move/from16 v25, v2

    .end local v2    # "scale":F
    .local v25, "scale":F
    int-to-float v2, v9

    iget v5, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    int-to-float v5, v5

    div-float v5, v5, v18

    add-float/2addr v2, v5

    div-float v5, v1, v18

    sub-float/2addr v2, v5

    add-float v5, v7, v4

    div-float v17, v0, v18

    add-float v20, v5, v17

    int-to-float v5, v9

    move/from16 v26, v0

    .end local v0    # "barWidth":F
    .local v26, "barWidth":F
    iget v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    int-to-float v0, v0

    div-float v0, v0, v18

    add-float/2addr v5, v0

    div-float v0, v1, v18

    add-float v21, v5, v0

    iget-object v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v17, p1

    move/from16 v18, v19

    move/from16 v19, v2

    move-object/from16 v22, v0

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1175
    .end local v1    # "barHeight":F
    .end local v4    # "barX":F
    .end local v26    # "barWidth":F
    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v3, v0

    move/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v5, p1

    goto :goto_4

    .line 1189
    .end local v3    # "barIndex":F
    .end local v23    # "f":F
    .end local v24    # "scrollSelectorValue":Ljava/lang/String;
    .end local v25    # "scale":F
    .local v0, "f":F
    .local v1, "scrollSelectorValue":Ljava/lang/String;
    :cond_7
    move/from16 v23, v0

    move-object/from16 v24, v1

    .end local v0    # "f":F
    .end local v1    # "scrollSelectorValue":Ljava/lang/String;
    .restart local v23    # "f":F
    .restart local v24    # "scrollSelectorValue":Ljava/lang/String;
    :goto_5
    iget v0, v6, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    add-int/2addr v9, v0

    .line 1127
    .end local v8    # "color":I
    .end local v11    # "selectorIndex":I
    .end local v12    # "a":I
    .end local v13    # "r":I
    .end local v14    # "g":I
    .end local v15    # "b":I
    .end local v23    # "f":F
    .end local v24    # "scrollSelectorValue":Ljava/lang/String;
    add-int/lit8 v0, v10, 0x1

    move-object/from16 v8, v16

    goto/16 :goto_1

    .line 1191
    .end local v10    # "i":I
    .end local v16    # "selectorIndices":[I
    .local v8, "selectorIndices":[I
    :cond_8
    move-object/from16 v16, v8

    .end local v8    # "selectorIndices":[I
    .restart local v16    # "selectorIndices":[I
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 532
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 533
    return v1

    .line 535
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 538
    .local v0, "action":I
    if-nez v0, :cond_7

    .line 539
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->removeAllCallbacks()V

    .line 540
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLastDownEventY:F

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLastDownOrMoveEventY:F

    .line 541
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLastDownEventTime:J

    .line 542
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mPerformClickOnTap:Z

    .line 543
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLastDownEventY:F

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mTopSelectionDividerTop:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    const/4 v3, 0x1

    if-gez v2, :cond_1

    .line 544
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mScrollState:I

    if-nez v2, :cond_2

    .line 545
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mPressedStateHelper:Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    .line 548
    :cond_1
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLastDownEventY:F

    iget v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 549
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mScrollState:I

    if-nez v2, :cond_2

    .line 550
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mPressedStateHelper:Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 554
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 555
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 556
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 557
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 558
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->onScrollStateChange(I)V

    goto :goto_1

    .line 559
    :cond_3
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    .line 560
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 561
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 562
    :cond_4
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLastDownEventY:F

    iget v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5

    .line 563
    nop

    .line 564
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v4, v2

    .line 563
    invoke-direct {p0, v1, v4, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 565
    :cond_5
    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLastDownEventY:F

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 566
    nop

    .line 567
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    .line 566
    invoke-direct {p0, v3, v1, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 569
    :cond_6
    iput-boolean v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mPerformClickOnTap:Z

    .line 571
    :goto_1
    return v3

    .line 573
    :cond_7
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 488
    if-eqz p1, :cond_0

    .line 489
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->initializeSelectorWheel()V

    .line 490
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->initializeFadingEdges()V

    .line 492
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->initColorGradientRes()V

    .line 493
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 499
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 500
    .local v0, "newWidthMeasureSpec":I
    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 501
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 503
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMeasuredWidth()I

    move-result v3

    invoke-direct {p0, v2, v3, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mNumberPickerPaddingRight:I

    iget v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mNumberPickerPaddingLeft:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 505
    .local v2, "widthSize":I
    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMeasuredHeight()I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Lcom/coui/appcompat/widget/COUINumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 507
    .local v3, "heightSize":I
    invoke-virtual {p0, v2, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMeasuredDimension(II)V

    .line 508
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 578
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 579
    return v1

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 582
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 585
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 586
    .local v0, "action":I
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 604
    :pswitch_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->ensureScrollWheelAdjusted()Z

    .line 606
    goto/16 :goto_4

    .line 588
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 589
    .local v3, "currentMoveY":F
    iget v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mScrollState:I

    if-eq v4, v2, :cond_3

    .line 590
    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLastDownEventY:F

    sub-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    .line 591
    .local v1, "deltaDownY":I
    iget v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mTouchSlop:I

    if-le v1, v4, :cond_2

    .line 592
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->removeAllCallbacks()V

    .line 593
    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->onScrollStateChange(I)V

    .line 595
    .end local v1    # "deltaDownY":I
    :cond_2
    goto :goto_0

    .line 596
    :cond_3
    iget v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLastDownOrMoveEventY:F

    sub-float v4, v3, v4

    float-to-int v4, v4

    .line 597
    .local v4, "deltaMoveY":I
    invoke-virtual {p0, v1, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->scrollBy(II)V

    .line 598
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate()V

    .line 600
    .end local v4    # "deltaMoveY":I
    :goto_0
    iput v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLastDownOrMoveEventY:F

    .line 602
    .end local v3    # "currentMoveY":F
    goto/16 :goto_4

    .line 608
    :pswitch_2
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 609
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mPressedStateHelper:Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->cancel()V

    .line 610
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 611
    .local v3, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v4, 0x3e8

    iget v5, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 612
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    float-to-int v4, v4

    .line 613
    .local v4, "initialVelocity":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinimumFlingVelocity:I

    const/4 v7, 0x2

    if-le v5, v6, :cond_4

    .line 614
    mul-int/lit8 v1, v4, 0x2

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->fling(I)V

    .line 615
    invoke-direct {p0, v7}, Lcom/coui/appcompat/widget/COUINumberPicker;->onScrollStateChange(I)V

    goto :goto_3

    .line 617
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 618
    .local v5, "eventY":I
    int-to-float v6, v5

    iget v8, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLastDownEventY:F

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    .line 619
    .local v6, "deltaMoveY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLastDownEventTime:J

    sub-long/2addr v8, v10

    .line 620
    .local v8, "deltaTime":J
    iget v10, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mTouchSlop:I

    if-gt v6, v10, :cond_8

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_8

    .line 621
    iget-boolean v10, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mPerformClickOnTap:Z

    if-eqz v10, :cond_5

    .line 622
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mPerformClickOnTap:Z

    .line 623
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->performClick()Z

    goto :goto_2

    .line 625
    :cond_5
    iget v10, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    div-int v10, v5, v10

    iget v11, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorMiddleItemIndex:I

    sub-int/2addr v10, v11

    .line 627
    .local v10, "selectorIndexOffset":I
    if-lez v10, :cond_6

    .line 628
    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->changeValueByOne(Z)V

    .line 629
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mPressedStateHelper:Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;

    invoke-virtual {v7, v2}, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    .line 631
    :cond_6
    if-gez v10, :cond_7

    .line 632
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->changeValueByOne(Z)V

    .line 633
    iget-object v11, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mPressedStateHelper:Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;

    invoke-virtual {v11, v7}, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->buttonTapped(I)V

    .line 636
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->ensureScrollWheelAdjusted()Z

    .line 637
    .end local v10    # "selectorIndexOffset":I
    goto :goto_2

    .line 639
    :cond_8
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->ensureScrollWheelAdjusted()Z

    .line 641
    :goto_2
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->onScrollStateChange(I)V

    .line 643
    .end local v5    # "eventY":I
    .end local v6    # "deltaMoveY":I
    .end local v8    # "deltaTime":J
    :goto_3
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 644
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 648
    .end local v3    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v4    # "initialVelocity":I
    :goto_4
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refresh()V
    .locals 7

    .line 2092
    const/4 v0, 0x0

    .line 2093
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mRefreshStyle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 2094
    .local v1, "styleAttrType":Ljava/lang/String;
    const-string v2, "attr"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 2095
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUINumberPicker:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mRefreshStyle:I

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 2097
    :cond_0
    const-string v2, "style"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2098
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUINumberPicker:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mRefreshStyle:I

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2102
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 2103
    sget v2, Lcoui/support/appcompat/R$styleable;->COUINumberPicker_couiNormalTextColor:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mNormalTextColor:I

    .line 2104
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mNormalTextColor:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mFocusTextColor:I

    invoke-virtual {p0, v2, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setSelectorTextColor(II)V

    .line 2105
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2107
    :cond_2
    return-void
.end method

.method public scrollBy(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 781
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorIndices:[I

    .line 782
    .local v0, "selectorIndices":[I
    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mCurrentScrollOffset:I

    .line 784
    .local v1, "startScrollOffset":I
    iget-boolean v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mWrapSelectorWheel:Z

    if-nez v2, :cond_0

    if-lez p2, :cond_0

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorMiddleItemIndex:I

    aget v2, v0, v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinValue:I

    if-gt v2, v3, :cond_0

    .line 786
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mInitialScrollOffset:I

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mCurrentScrollOffset:I

    .line 787
    return-void

    .line 789
    :cond_0
    iget-boolean v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mWrapSelectorWheel:Z

    if-nez v2, :cond_1

    if-gez p2, :cond_1

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorMiddleItemIndex:I

    aget v2, v0, v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMaxValue:I

    if-lt v2, v3, :cond_1

    .line 791
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mInitialScrollOffset:I

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mCurrentScrollOffset:I

    .line 792
    return-void

    .line 795
    :cond_1
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mCurrentScrollOffset:I

    .line 796
    :cond_2
    :goto_0
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mCurrentScrollOffset:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorTextGapHeight:I

    const/4 v4, 0x1

    if-le v2, v3, :cond_3

    .line 797
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mCurrentScrollOffset:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mCurrentScrollOffset:I

    .line 798
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->decrementSelectorIndices([I)V

    .line 799
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorMiddleItemIndex:I

    aget v2, v0, v2

    invoke-direct {p0, v2, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValueInternal(IZ)V

    .line 800
    iget-boolean v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mWrapSelectorWheel:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorMiddleItemIndex:I

    aget v2, v0, v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinValue:I

    if-gt v2, v3, :cond_2

    .line 801
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mInitialScrollOffset:I

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 804
    :cond_3
    :goto_1
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mCurrentScrollOffset:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorTextGapHeight:I

    neg-int v3, v3

    if-ge v2, v3, :cond_4

    .line 805
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mCurrentScrollOffset:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorElementHeight:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mCurrentScrollOffset:I

    .line 806
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->incrementSelectorIndices([I)V

    .line 807
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorMiddleItemIndex:I

    aget v2, v0, v2

    invoke-direct {p0, v2, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValueInternal(IZ)V

    .line 808
    iget-boolean v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mWrapSelectorWheel:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorMiddleItemIndex:I

    aget v2, v0, v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMaxValue:I

    if-lt v2, v3, :cond_3

    .line 809
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mInitialScrollOffset:I

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 813
    :cond_4
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mCurrentScrollOffset:I

    if-eq v1, v2, :cond_5

    .line 814
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mCurrentScrollOffset:I

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2, v3, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->onScrollChanged(IIII)V

    .line 816
    :cond_5
    return-void
.end method

.method public scrollForceFinished()V
    .locals 1

    .line 2080
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2081
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 2083
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2084
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 2086
    :cond_1
    return-void
.end method

.method public setAlignPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 1062
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAlignPosition:I

    .line 1063
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .line 1038
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1039
    return-void

    .line 1041
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1042
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->initializeSelectorWheelIndices()V

    .line 1043
    return-void
.end method

.method public setFormatter(Lcom/coui/appcompat/widget/COUINumberPicker$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Lcom/coui/appcompat/widget/COUINumberPicker$Formatter;

    .line 862
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mFormatter:Lcom/coui/appcompat/widget/COUINumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 863
    return-void

    .line 865
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mFormatter:Lcom/coui/appcompat/widget/COUINumberPicker$Formatter;

    .line 866
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->initializeSelectorWheelIndices()V

    .line 867
    return-void
.end method

.method public setGradientColor(II)V
    .locals 1
    .param p1, "startColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "endColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1589
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAlphaStart:I

    .line 1590
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAlphaEnd:I

    .line 1591
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mRedStart:I

    .line 1592
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mRedEnd:I

    .line 1593
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mGreenStart:I

    .line 1594
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mGreenEnd:I

    .line 1595
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mBlueStart:I

    .line 1596
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mBlueEnd:I

    .line 1597
    return-void
.end method

.method public setIgnorable(Z)V
    .locals 1
    .param p1, "ignorable"    # Z

    .line 1652
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mIgnorable:Z

    if-ne v0, p1, :cond_0

    .line 1653
    return-void

    .line 1655
    :cond_0
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mIgnorable:Z

    .line 1657
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->initializeSelectorWheelIndices()V

    .line 1658
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate()V

    .line 1659
    return-void
.end method

.method public setMaxValue(I)V
    .locals 2
    .param p1, "maxValue"    # I

    .line 1004
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    .line 1005
    return-void

    .line 1007
    :cond_0
    if-ltz p1, :cond_2

    .line 1010
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMaxValue:I

    .line 1011
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mValue:I

    if-ge v0, v1, :cond_1

    .line 1012
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMaxValue:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mValue:I

    .line 1015
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->initializeSelectorWheelIndices()V

    .line 1016
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate()V

    .line 1017
    return-void

    .line 1008
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinValue(I)V
    .locals 2
    .param p1, "minValue"    # I

    .line 928
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    .line 929
    return-void

    .line 931
    :cond_0
    if-ltz p1, :cond_2

    .line 934
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinValue:I

    .line 935
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinValue:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mValue:I

    if-le v0, v1, :cond_1

    .line 936
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mMinValue:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mValue:I

    .line 938
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->initializeSelectorWheelIndices()V

    .line 939
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate()V

    .line 940
    return-void

    .line 932
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNormalTextColor(I)V
    .locals 2
    .param p1, "normalTextColor"    # I

    .line 2115
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mNormalTextColor:I

    if-eq v0, p1, :cond_0

    .line 2116
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mNormalTextColor:I

    .line 2117
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mNormalTextColor:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mFocusTextColor:I

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setSelectorTextColor(II)V

    .line 2119
    :cond_0
    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0
    .param p1, "intervalMillis"    # J

    .line 889
    iput-wide p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mLongPressUpdateInterval:J

    .line 890
    return-void
.end method

.method public setOnScrollListener(Lcom/coui/appcompat/widget/COUINumberPicker$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Lcom/coui/appcompat/widget/COUINumberPicker$OnScrollListener;

    .line 848
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mOnScrollListener:Lcom/coui/appcompat/widget/COUINumberPicker$OnScrollListener;

    .line 849
    return-void
.end method

.method public setOnValueChangedListener(Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;

    .line 839
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mOnValueChangeListener:Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;

    .line 840
    return-void
.end method

.method public setPickerFocusColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 1617
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAlphaEnd:I

    .line 1618
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mRedEnd:I

    .line 1619
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mGreenEnd:I

    .line 1620
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mBlueEnd:I

    .line 1621
    return-void
.end method

.method public setPickerNormalColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 1605
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mAlphaStart:I

    .line 1606
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mRedStart:I

    .line 1607
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mGreenStart:I

    .line 1608
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mBlueStart:I

    .line 1609
    return-void
.end method

.method public setPickerRowNumber(I)V
    .locals 1
    .param p1, "number"    # I

    .line 1051
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorItemCount:I

    .line 1052
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorMiddleItemIndex:I

    .line 1053
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorItemCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mSelectorIndices:[I

    .line 1054
    return-void
.end method

.method public setSelectorTextColor(II)V
    .locals 0
    .param p1, "startColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "endColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 946
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setGradientColor(II)V

    .line 947
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate()V

    .line 948
    return-void
.end method

.method public setTwoDigitFormatter()V
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mTwoDigitFormatter:Lcom/coui/appcompat/widget/COUINumberPicker$TwoDigitFormatter;

    if-nez v0, :cond_0

    .line 874
    new-instance v0, Lcom/coui/appcompat/widget/COUINumberPicker$TwoDigitFormatter;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUINumberPicker$TwoDigitFormatter;-><init>(Lcom/coui/appcompat/widget/COUINumberPicker;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mTwoDigitFormatter:Lcom/coui/appcompat/widget/COUINumberPicker$TwoDigitFormatter;

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mTwoDigitFormatter:Lcom/coui/appcompat/widget/COUINumberPicker$TwoDigitFormatter;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mFormatter:Lcom/coui/appcompat/widget/COUINumberPicker$Formatter;

    .line 877
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .line 905
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValueInternal(IZ)V

    .line 906
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0
    .param p1, "wrapSelectorWheel"    # Z

    .line 980
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 981
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->updateWrapSelectorWheel()V

    .line 982
    return-void
.end method
