.class public Lcom/coui/appcompat/widget/tablayout/COUITabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "COUITabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/tablayout/COUITabLayout$AdapterChangeListener;,
        Lcom/coui/appcompat/widget/tablayout/COUITabLayout$PagerAdapterObserver;,
        Lcom/coui/appcompat/widget/tablayout/COUITabLayout$ViewPagerOnTabSelectedListener;,
        Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;,
        Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;,
        Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;,
        Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;,
        Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;,
        Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabGravity;,
        Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Mode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field static final DEFAULT_GAP_TEXT_ICON:I = 0x8

.field private static final DEFAULT_HEIGHT:I = 0x30

.field private static final DEFAULT_HEIGHT_WITH_TEXT_ICON:I = 0x48

.field private static final DEFAULT_MIN_DIVIDER:I = 0x10

.field private static final DEFAULT_MIN_MARGIN:I = 0x18

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field private static final INVALID_WIDTH:I = -0x1

.field private static final MEDIUM_FONT:Ljava/lang/String; = "sans-serif-medium"

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field static final MOTION_NON_ADJACENT_OFFSET:I = 0x18

.field private static final sTabPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapterChangeListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$AdapterChangeListener;

.field private mCOUIHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

.field private mCurrentVpSelectedListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;

.field private mDefaultIndicatorRatio:F

.field private mDefaultTabTextSize:F

.field private mDotHorizontalOffset:I

.field private mEvaluator:Landroid/animation/ArgbEvaluator;

.field private mIndicatorPadding:I

.field private mLastOffset:F

.field private mLongTextViewHeight:I

.field mMode:I

.field private mNormalTextColor:I

.field private mPageChangeListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;

.field private mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mPagerAdapterObserver:Landroid/database/DataSetObserver;

.field private mRectF:Landroid/graphics/RectF;

.field private final mRequestedTabMaxWidth:I

.field private final mRequestedTabMinWidth:I

.field private mResizeHeight:I

.field private mScrollAnimator:Landroid/animation/ValueAnimator;

.field private mSelectedIndicatorColor:I

.field private mSelectedListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;

.field private final mSelectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedPosition:I

.field private mSelectedTab:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

.field private mSelectedTextColor:I

.field private mSetupViewPagerImplicitly:Z

.field private mStyle:I

.field private mTabAlreadyMeasure:Z

.field final mTabBackgroundResId:I

.field mTabGravity:I

.field private mTabMinDivider:I

.field private mTabMinMargin:I

.field mTabPaddingBottom:I

.field mTabPaddingEnd:I

.field mTabPaddingStart:I

.field mTabPaddingTop:I

.field private final mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

.field mTabTextAppearance:I

.field mTabTextColors:Landroid/content/res/ColorStateList;

.field private mTabTextDisabledColor:I

.field mTabTextMultiLineSize:F

.field mTabTextSize:F

.field private mTabTextTypeFace:Landroid/graphics/Typeface;

.field private final mTabViewPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field private mTextColorBlue:I

.field private mTextColorGreen:I

.field private mTextColorRed:I

.field mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 126
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->sTabPool:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 289
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 295
    sget v0, Lcoui/support/appcompat/R$attr;->couiTabLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 296
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 311
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedPosition:I

    .line 155
    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mLastOffset:F

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    .line 245
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    .line 249
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mEvaluator:Landroid/animation/ArgbEvaluator;

    .line 259
    new-instance v2, Landroidx/core/util/Pools$SimplePool;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabViewPool:Landroidx/core/util/Pools$Pool;

    .line 313
    if-eqz p2, :cond_0

    .line 314
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mStyle:I

    .line 315
    iget v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mStyle:I

    if-nez v2, :cond_1

    .line 316
    iput p3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mStyle:I

    goto :goto_0

    .line 319
    :cond_0
    iput v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mStyle:I

    .line 323
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 325
    new-instance v2, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-direct {v2, p0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;-><init>(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    .line 326
    iget-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v2, v0, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 333
    sget-object v2, Lcoui/support/appcompat/R$styleable;->COUITabLayout:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 337
    .local v2, "a":Landroid/content/res/TypedArray;
    iget-object v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    sget v4, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabIndicatorHeight:I

    .line 338
    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 337
    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 339
    sget v3, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabIndicatorColor:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedIndicatorColor:I

    .line 340
    iget-object v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    iget v4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedIndicatorColor:I

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 343
    sget v3, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabIndicatorBackgroundHeight:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setIndicatorBackgroundHeight(I)V

    .line 344
    sget v3, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabIndicatorBackgroundColor:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setIndicatorBackgroundColor(I)V

    .line 345
    sget v3, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabIndicatorBackgroundPaddingLeft:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setIndicatorBackgroundPaddingLeft(I)V

    .line 346
    sget v3, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabIndicatorBackgroundPaddingRight:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setIndicatorBackgroundPaddingRight(I)V

    .line 347
    sget v3, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabIndicatorWidthRatio:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setIndicatorWidthRatio(F)V

    .line 348
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcoui/support/appcompat/R$dimen;->coui_tablayout_default_resize_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mResizeHeight:I

    .line 349
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcoui/support/appcompat/R$dimen;->tablayout_long_text_view_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mLongTextViewHeight:I

    .line 350
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabMinDivider:I

    const/high16 v3, 0x41800000    # 16.0f

    .line 351
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v6, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 350
    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabMinDivider:I

    .line 352
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabMinMargin:I

    const/high16 v3, 0x41c00000    # 24.0f

    .line 353
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 352
    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabMinMargin:I

    .line 354
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcoui/support/appcompat/R$dimen;->coui_tablayout_indicator_padding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mIndicatorPadding:I

    .line 355
    iget v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabMinMargin:I

    iget v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabMinMargin:I

    invoke-static {p0, v1, v0, v3, v0}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 357
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabPadding:I

    .line 358
    invoke-virtual {v2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingBottom:I

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingEnd:I

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingTop:I

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingStart:I

    .line 359
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabPaddingStart:I

    iget v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingStart:I

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingStart:I

    .line 361
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabPaddingTop:I

    iget v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingTop:I

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingTop:I

    .line 363
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabPaddingEnd:I

    iget v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingEnd:I

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingEnd:I

    .line 365
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabPaddingBottom:I

    iget v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingBottom:I

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingBottom:I

    .line 368
    iget v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingStart:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingStart:I

    .line 369
    iget v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingTop:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingTop:I

    .line 370
    iget v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingEnd:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingEnd:I

    .line 371
    iget v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingBottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingBottom:I

    .line 373
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabTextAppearance:I

    sget v3, Lcoui/support/appcompat/R$style;->TextAppearance_Design_COUITab:I

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextAppearance:I

    .line 377
    iget v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextAppearance:I

    sget-object v3, Lcoui/support/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 380
    .local v1, "ta":Landroid/content/res/TypedArray;
    :try_start_0
    sget v3, Lcoui/support/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextSize:F

    .line 382
    iget v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextSize:F

    iput v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mDefaultTabTextSize:F

    .line 383
    sget v3, Lcoui/support/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 388
    nop

    .line 390
    sget v3, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabTextColor:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 392
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2

    .line 393
    sget v3, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabTextColor:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 395
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcoui/support/appcompat/R$color;->coui_tab_text_color_normal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 396
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v7, Lcoui/support/appcompat/R$attr;->couiTintControlDisabled:I

    invoke-static {v4, v7, v0}, Lcom/coui/appcompat/util/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v4

    .line 397
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcoui/support/appcompat/R$attr;->couiTintControlNormal:I

    invoke-static {v7, v8, v0}, Lcom/coui/appcompat/util/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v7

    .line 398
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcoui/support/appcompat/R$attr;->couiTintControlNormal:I

    invoke-static {v8, v9, v0}, Lcom/coui/appcompat/util/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v8

    .line 395
    invoke-static {v3, v4, v7, v8}, Lcom/coui/appcompat/util/COUIStateListUtil;->createColorStateList(IIII)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 401
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcoui/support/appcompat/R$attr;->couiTintControlDisabled:I

    invoke-static {v3, v4, v0}, Lcom/coui/appcompat/util/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextDisabledColor:I

    .line 402
    sget v3, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabSelectedTextColor:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 406
    sget v3, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabSelectedTextColor:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 407
    .local v3, "selected":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    iget v7, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextDisabledColor:I

    invoke-static {v4, v7, v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->createColorStateList(III)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 410
    .end local v3    # "selected":I
    :cond_4
    sget v3, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabMinWidth:I

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mRequestedTabMinWidth:I

    .line 412
    sget v3, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabMaxWidth:I

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mRequestedTabMaxWidth:I

    .line 414
    sget v3, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabBackground:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabBackgroundResId:I

    .line 415
    sget v3, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabMode:I

    invoke-virtual {v2, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mMode:I

    .line 416
    sget v3, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabGravity:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabGravity:I

    .line 417
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 420
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 422
    .local v0, "res":Landroid/content/res/Resources;
    sget v3, Lcoui/support/appcompat/R$dimen;->tablayout_small_text_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextMultiLineSize:F

    .line 425
    invoke-direct {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->applyModeAndGravity()V

    .line 426
    invoke-direct {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->updateTextColor()V

    .line 427
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->initRedDotResources(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 428
    return-void

    .line 387
    .end local v0    # "res":Landroid/content/res/Resources;
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    .line 114
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabMinMargin:I

    return v0
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    .line 114
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mLongTextViewHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    .line 114
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mIndicatorPadding:I

    return v0
.end method

.method static synthetic access$1300(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    .line 114
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mNormalTextColor:I

    return v0
.end method

.method static synthetic access$1400(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    .line 114
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedTextColor:I

    return v0
.end method

.method static synthetic access$1500(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)Lcom/coui/appcompat/util/COUIHintRedDotHelper;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    .line 114
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    .line 114
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mDotHorizontalOffset:I

    return v0
.end method

.method static synthetic access$1700(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    .line 114
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mRectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    .line 114
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    return-object v0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout;
    .param p1, "x1"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    .param p2, "x2"    # Z

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->changeTabTextFont(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    .line 114
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabAlreadyMeasure:Z

    return v0
.end method

.method static synthetic access$502(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout;
    .param p1, "x1"    # Z

    .line 114
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabAlreadyMeasure:Z

    return p1
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    .line 114
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mDefaultIndicatorRatio:F

    return v0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    .line 114
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mDefaultTabTextSize:F

    return v0
.end method

.method static synthetic access$800(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    .line 114
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mRequestedTabMaxWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    .line 114
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabMinDivider:I

    return v0
.end method

.method private addTabFromItemView(Lcom/coui/appcompat/widget/tablayout/COUITabItem;)V
    .locals 2
    .param p1, "item"    # Lcom/coui/appcompat/widget/tablayout/COUITabItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 583
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->newTab()Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    move-result-object v0

    .line 584
    .local v0, "tab":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    iget-object v1, p1, Lcom/coui/appcompat/widget/tablayout/COUITabItem;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 585
    iget-object v1, p1, Lcom/coui/appcompat/widget/tablayout/COUITabItem;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    .line 587
    :cond_0
    iget-object v1, p1, Lcom/coui/appcompat/widget/tablayout/COUITabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 588
    iget-object v1, p1, Lcom/coui/appcompat/widget/tablayout/COUITabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    .line 590
    :cond_1
    iget v1, p1, Lcom/coui/appcompat/widget/tablayout/COUITabItem;->mCustomLayout:I

    if-eqz v1, :cond_2

    .line 591
    iget v1, p1, Lcom/coui/appcompat/widget/tablayout/COUITabItem;->mCustomLayout:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->setCustomView(I)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    .line 593
    :cond_2
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/tablayout/COUITabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 594
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/tablayout/COUITabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    .line 596
    :cond_3
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->addTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V

    .line 597
    return-void
.end method

.method private addTabView(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V
    .locals 4
    .param p1, "tab"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    .line 1073
    iget-object v0, p1, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mView:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    .line 1074
    .local v0, "tabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->getPosition()I

    move-result v2

    invoke-direct {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1075
    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 1098
    instance-of v0, p1, Lcom/coui/appcompat/widget/tablayout/COUITabItem;

    if-eqz v0, :cond_0

    .line 1099
    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/widget/tablayout/COUITabItem;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->addTabFromItemView(Lcom/coui/appcompat/widget/tablayout/COUITabItem;)V

    .line 1103
    return-void

    .line 1101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private animateToTab(I)V
    .locals 6
    .param p1, "newPosition"    # I

    .line 1175
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1176
    return-void

    .line 1179
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    .line 1180
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->childrenNeedLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1187
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getScrollX()I

    move-result v0

    .line 1188
    .local v0, "startScrollX":I
    invoke-direct {p0, p1, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->calculateScrollXForTab(IF)I

    move-result v2

    .line 1190
    .local v2, "targetScrollX":I
    if-eq v0, v2, :cond_2

    .line 1191
    invoke-direct {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->ensureScrollAnimator()V

    .line 1193
    iget-object v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v2, v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1194
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 1198
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    const/16 v3, 0x12c

    invoke-virtual {v1, p1, v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V

    .line 1199
    return-void

    .line 1183
    .end local v0    # "startScrollX":I
    .end local v2    # "targetScrollX":I
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setScrollPosition(IFZ)V

    .line 1184
    return-void
.end method

.method private applyModeAndGravity()V
    .locals 2

    .line 1346
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$202(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;Z)Z

    .line 1347
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->updateTabViews(Z)V

    .line 1348
    return-void
.end method

.method private calculateScrollXForTab(IF)I
    .locals 8
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .line 1314
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1315
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1316
    .local v0, "selectedChild":Landroid/view/View;
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    add-int/lit8 v2, p1, 0x1

    .line 1317
    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1320
    .local v1, "nextChild":Landroid/view/View;
    :goto_0
    const/4 v2, 0x0

    .line 1321
    .local v2, "selectedWidth":I
    if-eqz v0, :cond_1

    .line 1322
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1323
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v2, v4, v5

    .line 1325
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    const/4 v3, 0x0

    .line 1326
    .local v3, "nextWidth":I
    if-eqz v1, :cond_2

    .line 1327
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1328
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v3, v5, v6

    .line 1331
    .end local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    div-int/lit8 v4, v2, 0x2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 1332
    .local v4, "scrollBase":I
    if-eqz v0, :cond_3

    .line 1333
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1334
    .local v5, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 1336
    .end local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    add-int v5, v2, v3

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    mul-float/2addr v5, p2

    float-to-int v5, v5

    .line 1338
    .local v5, "scrollOffset":I
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    if-nez v6, :cond_4

    add-int v6, v4, v5

    goto :goto_1

    :cond_4
    sub-int v6, v4, v5

    :goto_1
    return v6

    .line 1342
    .end local v0    # "selectedChild":Landroid/view/View;
    .end local v1    # "nextChild":Landroid/view/View;
    .end local v2    # "selectedWidth":I
    .end local v3    # "nextWidth":I
    .end local v4    # "scrollBase":I
    .end local v5    # "scrollOffset":I
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private changeTabTextFont(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;Z)V
    .locals 1
    .param p1, "tabView"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    .param p2, "isSelected"    # Z

    .line 437
    if-nez p1, :cond_0

    .line 438
    return-void

    .line 440
    :cond_0
    invoke-static {p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->access$000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v0

    .line 441
    .local v0, "textView":Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 442
    return-void

    .line 444
    :cond_1
    return-void
.end method

.method private configureTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;I)V
    .locals 3
    .param p1, "tab"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    .param p2, "position"    # I

    .line 1063
    invoke-virtual {p1, p2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->setPosition(I)V

    .line 1064
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1066
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1067
    .local v0, "count":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1068
    iget-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->setPosition(I)V

    .line 1067
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1070
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static createColorStateList(III)Landroid/content/res/ColorStateList;
    .locals 5
    .param p0, "defaultColor"    # I
    .param p1, "disabledColor"    # I
    .param p2, "selectedColor"    # I

    .line 2560
    const/4 v0, 0x3

    new-array v1, v0, [[I

    .line 2561
    .local v1, "states":[[I
    new-array v0, v0, [I

    .line 2562
    .local v0, "colors":[I
    const/4 v2, 0x0

    .line 2564
    .local v2, "i":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    aput-object v4, v1, v2

    .line 2565
    aput p2, v0, v2

    .line 2566
    add-int/lit8 v2, v2, 0x1

    .line 2568
    new-array v3, v3, [I

    fill-array-data v3, :array_1

    aput-object v3, v1, v2

    .line 2569
    aput p1, v0, v2

    .line 2570
    add-int/lit8 v2, v2, 0x1

    .line 2573
    sget-object v3, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->EMPTY_STATE_SET:[I

    aput-object v3, v1, v2

    .line 2574
    aput p0, v0, v2

    .line 2575
    add-int/lit8 v2, v2, 0x1

    .line 2577
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3

    nop

    :array_0
    .array-data 4
        0x10100a1
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        -0x10100a1
        -0x101009e
    .end array-data
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 1106
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1108
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    return-object v0
.end method

.method private createTabView(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    .locals 3
    .param p1, "tab"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1052
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabViewPool:Landroidx/core/util/Pools$Pool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabViewPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1053
    .local v0, "tabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    :goto_0
    if-nez v0, :cond_1

    .line 1054
    new-instance v1, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;-><init>(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;Landroid/content/Context;)V

    move-object v0, v1

    .line 1056
    :cond_1
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->setTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V

    .line 1057
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->setFocusable(Z)V

    .line 1058
    invoke-direct {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getTabMinWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->setMinimumWidth(I)V

    .line 1059
    return-object v0
.end method

.method private dispatchTabReselected(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1308
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1309
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;->onTabReselected(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V

    .line 1308
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1311
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private dispatchTabSelected(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1296
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1297
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;->onTabSelected(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V

    .line 1296
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1299
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private dispatchTabUnselected(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1302
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1303
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;->onTabUnselected(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V

    .line 1302
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1305
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private ensureScrollAnimator()V
    .locals 3

    .line 1202
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1203
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    .line 1204
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/widget/tablayout/COUIAnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1205
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1206
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$1;-><init>(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1213
    :cond_0
    return-void
.end method

.method private getDefaultHeight()I
    .locals 5

    .line 2581
    const/4 v0, 0x0

    .line 2582
    .local v0, "hasIconAndText":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2583
    iget-object v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    .line 2584
    .local v3, "tab":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2585
    const/4 v0, 0x1

    .line 2586
    goto :goto_1

    .line 2582
    .end local v3    # "tab":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2589
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    const/16 v1, 0x48

    goto :goto_2

    :cond_2
    const/16 v1, 0x30

    :goto_2
    return v1
.end method

.method private getScrollPosition()F
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getIndicatorPosition()F

    move-result v0

    return v0
.end method

.method private getTabMinWidth()I
    .locals 1

    .line 2598
    const/4 v0, 0x0

    return v0
.end method

.method private getTabScrollRange()I
    .locals 2

    .line 990
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 991
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 990
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private initRedDotResources(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 431
    new-instance v6, Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    sget-object v3, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot:[I

    sget v5, Lcoui/support/appcompat/R$style;->Widget_COUI_COUIHintRedDot_Small:I

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;[III)V

    iput-object v6, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    .line 432
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mRectF:Landroid/graphics/RectF;

    .line 433
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_dot_horizontal_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mDotHorizontalOffset:I

    .line 434
    return-void
.end method

.method private removeTabViewAt(I)V
    .locals 2
    .param p1, "position"    # I

    .line 1165
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    .line 1166
    .local v0, "view":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->removeViewAt(I)V

    .line 1167
    if-eqz v0, :cond_0

    .line 1168
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->reset()V

    .line 1169
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabViewPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1171
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->requestLayout()V

    .line 1172
    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 5
    .param p1, "position"    # I

    .line 1221
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    .line 1222
    .local v0, "tabCount":I
    if-ge p1, v0, :cond_1

    .line 1223
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1224
    iget-object v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-virtual {v3, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1225
    .local v3, "child":Landroid/view/View;
    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1223
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1228
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private setSelectedTabView(IF)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "offset"    # F

    .line 1231
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mLastOffset:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    cmpl-float v0, p2, v1

    if-nez v0, :cond_1

    .line 1232
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedPosition:I

    .line 1234
    :cond_1
    iput p2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mLastOffset:F

    .line 1236
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedPosition:I

    if-eq p1, v0, :cond_3

    .line 1238
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    .line 1240
    .local v0, "nextView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v3, p2, v2

    if-ltz v3, :cond_2

    .line 1241
    iget-object v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    .line 1242
    .local v3, "previousView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    sub-float v4, p2, v2

    div-float/2addr v4, v2

    goto :goto_0

    .line 1244
    .end local v3    # "previousView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    :cond_2
    iget-object v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    .line 1245
    .restart local v3    # "previousView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    sub-float v4, v2, p2

    div-float/2addr v4, v2

    .local v4, "ratio":F
    :goto_0
    move v2, v4

    .line 1247
    .end local v4    # "ratio":F
    .local v2, "ratio":F
    invoke-static {v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->access$000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mEvaluator:Landroid/animation/ArgbEvaluator;

    iget v6, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedTextColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mNormalTextColor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v2, v6, v7}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1248
    invoke-static {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->access$000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mEvaluator:Landroid/animation/ArgbEvaluator;

    iget v6, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mNormalTextColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedTextColor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v2, v6, v7}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1251
    .end local v0    # "nextView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    .end local v2    # "ratio":F
    .end local v3    # "previousView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    :cond_3
    cmpl-float v0, p2, v1

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 1252
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getTabCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1253
    iget-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1254
    .local v2, "child":Landroid/view/View;
    move-object v3, v2

    check-cast v3, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    invoke-static {v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->access$000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1255
    if-ne v1, p1, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    move v3, v0

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1252
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1258
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method private setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V
    .locals 3
    .param p1, "viewPager"    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "autoRefresh"    # Z
    .param p3, "implicitSetup"    # Z

    .line 891
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    .line 893
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mPageChangeListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mPageChangeListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mAdapterChangeListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$AdapterChangeListener;

    if-eqz v0, :cond_1

    .line 897
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mAdapterChangeListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$AdapterChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 901
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mCurrentVpSelectedListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 903
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mCurrentVpSelectedListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->removeOnTabSelectedListener(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;)V

    .line 904
    iput-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mCurrentVpSelectedListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;

    .line 907
    :cond_2
    if-eqz p1, :cond_6

    .line 908
    iput-object p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 911
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mPageChangeListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;

    if-nez v0, :cond_3

    .line 912
    new-instance v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mPageChangeListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;

    .line 914
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mPageChangeListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;->reset()V

    .line 915
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mPageChangeListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 918
    new-instance v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$ViewPagerOnTabSelectedListener;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mCurrentVpSelectedListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;

    .line 919
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mCurrentVpSelectedListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->addOnTabSelectedListener(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;)V

    .line 921
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 925
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 929
    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mAdapterChangeListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$AdapterChangeListener;

    if-nez v0, :cond_5

    .line 930
    new-instance v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$AdapterChangeListener;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$AdapterChangeListener;-><init>(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mAdapterChangeListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$AdapterChangeListener;

    .line 932
    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mAdapterChangeListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$AdapterChangeListener;

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$AdapterChangeListener;->setAutoRefresh(Z)V

    .line 933
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mAdapterChangeListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$AdapterChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 935
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setScrollPosition(IFZ)V

    goto :goto_0

    .line 939
    :cond_6
    iput-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 940
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 943
    :goto_0
    iput-boolean p3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSetupViewPagerImplicitly:Z

    .line 944
    return-void
.end method

.method private updateAllTabs()V
    .locals 3

    .line 1046
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "z":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1047
    iget-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->updateView()V

    .line 1046
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1049
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_0
    return-void
.end method

.method private updateTextColor()V
    .locals 3

    .line 847
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mNormalTextColor:I

    .line 848
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$attr;->couiTintControlNormal:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/util/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    .line 849
    .local v0, "selectedTextColor":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedTextColor:I

    .line 850
    iget v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedTextColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mNormalTextColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTextColorRed:I

    .line 851
    iget v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedTextColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mNormalTextColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTextColorGreen:I

    .line 852
    iget v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedTextColor:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mNormalTextColor:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTextColorBlue:I

    .line 853
    return-void

    nop

    :array_0
    .array-data 4
        0x101009e
        0x10100a1
    .end array-data
.end method


# virtual methods
.method public addOnTabSelectedListener(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 628
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    :cond_0
    return-void
.end method

.method public addTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 539
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->addTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;Z)V

    .line 540
    return-void
.end method

.method public addTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;I)V
    .locals 1
    .param p1, "tab"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I

    .line 550
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->addTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;IZ)V

    .line 551
    return-void
.end method

.method public addTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;IZ)V
    .locals 2
    .param p1, "tab"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .line 571
    iget-object v0, p1, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mParent:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    if-ne v0, p0, :cond_1

    .line 574
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->configureTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;I)V

    .line 575
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->addTabView(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V

    .line 577
    if-eqz p3, :cond_0

    .line 578
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->select()V

    .line 580
    :cond_0
    return-void

    .line 572
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;Z)V
    .locals 1
    .param p1, "tab"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "setSelected"    # Z

    .line 560
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->addTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;IZ)V

    .line 561
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 1079
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->addViewInternal(Landroid/view/View;)V

    .line 1080
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 1084
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->addViewInternal(Landroid/view/View;)V

    .line 1085
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1094
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->addViewInternal(Landroid/view/View;)V

    .line 1095
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1089
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->addViewInternal(Landroid/view/View;)V

    .line 1090
    return-void
.end method

.method public clearOnTabSelectedListeners()V
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 648
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2522
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2524
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    if-eqz v0, :cond_5

    .line 2525
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$1800(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2526
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$1900(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$2000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v3, v0

    .line 2527
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$2100(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    .line 2528
    invoke-static {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$1800(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)Landroid/graphics/Paint;

    move-result-object v6

    .line 2526
    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2530
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$2200(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2531
    const-string v0, " "

    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$2200(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2532
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$2300(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$2400(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)I

    move-result v1

    if-le v0, v1, :cond_5

    .line 2533
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$2400(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2534
    .local v0, "left":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$2300(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2535
    .local v1, "right":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mIndicatorPadding:I

    sub-int/2addr v2, v3

    .line 2536
    .local v2, "min":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mIndicatorPadding:I

    add-int/2addr v3, v4

    .line 2537
    .local v3, "max":I
    const/4 v4, 0x1

    .line 2538
    .local v4, "shouldDraw":Z
    if-gt v1, v2, :cond_1

    .line 2539
    const/4 v4, 0x0

    goto :goto_0

    .line 2540
    :cond_1
    if-lt v0, v3, :cond_2

    .line 2541
    const/4 v4, 0x0

    .line 2543
    :cond_2
    :goto_0
    if-eqz v4, :cond_5

    .line 2544
    if-ge v0, v2, :cond_3

    .line 2545
    move v0, v2

    .line 2547
    :cond_3
    if-le v1, v3, :cond_4

    .line 2548
    move v1, v3

    .line 2550
    :cond_4
    int-to-float v6, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getHeight()I

    move-result v5

    iget-object v7, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v7}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$2500(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v7, v5

    int-to-float v8, v1

    .line 2551
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getHeight()I

    move-result v5

    int-to-float v9, v5

    iget-object v5, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$2200(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)Landroid/graphics/Paint;

    move-result-object v10

    .line 2550
    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2557
    .end local v0    # "left":I
    .end local v1    # "right":I
    .end local v2    # "min":I
    .end local v3    # "max":I
    .end local v4    # "shouldDraw":Z
    :cond_5
    return-void
.end method

.method dpToPx(I)I
    .locals 2
    .param p1, "dps"    # I

    .line 1112
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public enableTab(IZ)Z
    .locals 2
    .param p1, "position"    # I
    .param p2, "enabled"    # Z

    .line 2987
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getTabAt(I)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    move-result-object v0

    .line 2988
    .local v0, "tab":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mView:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    if-eqz v1, :cond_0

    .line 2989
    iget-object v1, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mView:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    invoke-virtual {v1, p2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->setEnabled(Z)V

    .line 2990
    const/4 v1, 0x1

    return v1

    .line 2992
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 2607
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultIndicatoRatio()F
    .locals 1

    .line 2889
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mDefaultIndicatorRatio:F

    return v0
.end method

.method protected getIndicatorAnimTime(II)I
    .locals 2
    .param p1, "newPosition"    # I
    .param p2, "oldPosition"    # I

    .line 3022
    sub-int v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x32

    add-int/lit16 v0, v0, 0x96

    const/16 v1, 0x12c

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getIndicatorBackgroundHeight()I
    .locals 1

    .line 2829
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    if-nez v0, :cond_0

    .line 2830
    const/4 v0, -0x1

    return v0

    .line 2832
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$2000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)I

    move-result v0

    return v0
.end method

.method public getIndicatorBackgroundPaddingLeft()I
    .locals 1

    .line 2854
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    if-nez v0, :cond_0

    .line 2855
    const/4 v0, -0x1

    return v0

    .line 2857
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$1900(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)I

    move-result v0

    return v0
.end method

.method public getIndicatorBackgroundPaddingRight()I
    .locals 1

    .line 2865
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    if-nez v0, :cond_0

    .line 2866
    const/4 v0, -0x1

    return v0

    .line 2868
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$2100(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)I

    move-result v0

    return v0
.end method

.method public getIndicatorBackgroundPaintColor()I
    .locals 1

    .line 2877
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    if-nez v0, :cond_0

    .line 2878
    const/4 v0, -0x1

    return v0

    .line 2880
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$1800(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getIndicatorPadding()I
    .locals 1

    .line 2940
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mIndicatorPadding:I

    return v0
.end method

.method public getIndicatorWidthRatio()F
    .locals 1

    .line 2910
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    if-nez v0, :cond_0

    .line 2911
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 2913
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$2600(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)F

    move-result v0

    return v0
.end method

.method public getSelectedIndicatorColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 466
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedIndicatorColor:I

    return v0
.end method

.method public getSelectedTabPosition()I
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedTab:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedTab:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getTabAt(I)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    .locals 1
    .param p1, "index"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 682
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .locals 1

    .line 812
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabGravity:I

    return v0
.end method

.method public getTabMinDivider()I
    .locals 1

    .line 2922
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabMinDivider:I

    return v0
.end method

.method public getTabMinMargin()I
    .locals 1

    .line 2931
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabMinMargin:I

    return v0
.end method

.method public getTabMode()I
    .locals 1

    .line 792
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mMode:I

    return v0
.end method

.method public getTabPaddingBottom()I
    .locals 1

    .line 2976
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingBottom:I

    return v0
.end method

.method public getTabPaddingEnd()I
    .locals 1

    .line 2967
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingEnd:I

    return v0
.end method

.method public getTabPaddingStart()I
    .locals 1

    .line 2949
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingStart:I

    return v0
.end method

.method public getTabPaddingTop()I
    .locals 1

    .line 2958
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingTop:I

    return v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 833
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTabTextSize()F
    .locals 1

    .line 2820
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextSize:F

    return v0
.end method

.method public isResizeText()Z
    .locals 1

    .line 2898
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    if-nez v0, :cond_0

    .line 2899
    const/4 v0, 0x0

    return v0

    .line 2901
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$200(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)Z

    move-result v0

    return v0
.end method

.method public newTab()Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 659
    sget-object v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->sTabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    .line 660
    .local v0, "tab":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    if-nez v0, :cond_0

    .line 661
    new-instance v1, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    invoke-direct {v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;-><init>()V

    move-object v0, v1

    .line 663
    :cond_0
    iput-object p0, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mParent:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    .line 664
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->createTabView(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mView:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    .line 665
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 964
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 966
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    .line 969
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 970
    .local v0, "vp":Landroid/view/ViewParent;
    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_0

    .line 973
    move-object v1, v0

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    .line 976
    .end local v0    # "vp":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 760
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 761
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabAlreadyMeasure:Z

    .line 762
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 980
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 982
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSetupViewPagerImplicitly:Z

    if-eqz v0, :cond_0

    .line 984
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 985
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSetupViewPagerImplicitly:Z

    .line 987
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1119
    invoke-direct {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getDefaultHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->dpToPx(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 1120
    .local v0, "idealHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1127
    :cond_0
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 1122
    :cond_1
    nop

    .line 1123
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1122
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1125
    nop

    .line 1131
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1132
    .local v1, "widthSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 1133
    .local v4, "widthMode":I
    const/4 v5, 0x0

    if-eq v4, v3, :cond_2

    .line 1134
    invoke-virtual {p0, v5, v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setMeasuredDimension(II)V

    .line 1135
    return-void

    .line 1137
    :cond_2
    iget v6, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mMode:I

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 1139
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1140
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v6, p2}, Landroid/view/View;->measure(II)V

    .line 1142
    goto :goto_1

    .line 1144
    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x1fffffff

    .line 1145
    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v6, v2, p2}, Landroid/view/View;->measure(II)V

    .line 1150
    :goto_1
    iget-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$200(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1151
    invoke-virtual {p0, v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1152
    .local v2, "child":Landroid/view/View;
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1153
    .local v5, "height":I
    iget v6, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mResizeHeight:I

    if-le v5, v6, :cond_3

    .line 1154
    iget v5, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mResizeHeight:I

    .line 1155
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1156
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1155
    invoke-virtual {v2, v6, v3}, Landroid/view/View;->measure(II)V

    .line 1158
    :cond_3
    invoke-virtual {p0, v1, v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setMeasuredDimension(II)V

    .line 1159
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "height":I
    goto :goto_2

    .line 1160
    :cond_4
    invoke-virtual {p0, v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setMeasuredDimension(II)V

    .line 1162
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method populateFromPagerAdapter()V
    .locals 6

    .line 1015
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->removeAllTabs()V

    .line 1017
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_4

    .line 1019
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 1020
    .local v0, "adapterCount":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    instance-of v1, v1, Lcom/coui/appcompat/widget/COUIFragmentStatePagerAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1021
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    check-cast v1, Lcom/coui/appcompat/widget/COUIFragmentStatePagerAdapter;

    .line 1022
    .local v1, "fragmentStatePagerAdapter":Lcom/coui/appcompat/widget/COUIFragmentStatePagerAdapter;
    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1023
    invoke-virtual {v1, v3}, Lcom/coui/appcompat/widget/COUIFragmentStatePagerAdapter;->getPageIcon(I)I

    move-result v4

    if-lez v4, :cond_0

    .line 1024
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->newTab()Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    move-result-object v4

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/widget/COUIFragmentStatePagerAdapter;->getPageIcon(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->setIcon(I)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->addTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;Z)V

    goto :goto_1

    .line 1026
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->newTab()Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    move-result-object v4

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/widget/COUIFragmentStatePagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->addTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;Z)V

    .line 1022
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1029
    .end local v1    # "fragmentStatePagerAdapter":Lcom/coui/appcompat/widget/COUIFragmentStatePagerAdapter;
    .end local v3    # "i":I
    :cond_1
    goto :goto_3

    .line 1030
    :cond_2
    move v1, v2

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 1031
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->newTab()Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v4, v1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->addTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;Z)V

    .line 1030
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1036
    .end local v1    # "i":I
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    .line 1037
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    .line 1038
    .local v1, "curItem":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result v2

    if-eq v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getTabCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1039
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getTabAt(I)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->selectTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V

    .line 1043
    .end local v0    # "adapterCount":I
    .end local v1    # "curItem":I
    :cond_4
    return-void
.end method

.method public refresh()V
    .locals 7

    .line 3026
    const/4 v0, 0x0

    .line 3027
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mStyle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 3028
    .local v1, "styleAttrType":Ljava/lang/String;
    const-string v2, "attr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 3029
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUITabLayout:[I

    iget v6, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mStyle:I

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 3031
    :cond_0
    const-string v2, "style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3032
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUITabLayout:[I

    iget v6, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mStyle:I

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3036
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 3037
    sget v2, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabTextColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3038
    sget v2, Lcoui/support/appcompat/R$styleable;->COUITabLayout_couiTabTextColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 3040
    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->updateTextColor()V

    .line 3043
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3044
    return-void
.end method

.method public removeAllTabs()V
    .locals 3

    .line 739
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 740
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->removeTabViewAt(I)V

    .line 739
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 743
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 744
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    .line 745
    .local v1, "tab":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 746
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->reset()V

    .line 747
    sget-object v2, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->sTabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v2, v1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 748
    .end local v1    # "tab":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    goto :goto_1

    .line 750
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;>;"
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedTab:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    .line 753
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$202(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;Z)Z

    .line 754
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabAlreadyMeasure:Z

    .line 756
    return-void
.end method

.method public removeOnTabSelectedListener(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 640
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 641
    return-void
.end method

.method public removeTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    .line 701
    iget-object v0, p1, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mParent:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    if-ne v0, p0, :cond_0

    .line 705
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->removeTabAt(I)V

    .line 706
    return-void

    .line 702
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab does not belong to this TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeTabAt(I)V
    .locals 6
    .param p1, "position"    # I

    .line 715
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedTab:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedTab:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 716
    .local v0, "selectedTabPosition":I
    :goto_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->removeTabViewAt(I)V

    .line 718
    iget-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    .line 719
    .local v2, "removedTab":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    if-eqz v2, :cond_1

    .line 720
    invoke-virtual {v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->reset()V

    .line 721
    sget-object v3, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->sTabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v3, v2}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 724
    :cond_1
    iget-object v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 725
    .local v3, "newTabCount":I
    move v4, p1

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 726
    iget-object v5, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    invoke-virtual {v5, v4}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->setPosition(I)V

    .line 725
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 729
    .end local v4    # "i":I
    :cond_2
    if-ne v0, p1, :cond_4

    .line 730
    iget-object v4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    :goto_2
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->selectTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V

    .line 732
    :cond_4
    return-void
.end method

.method public selectTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    .line 1261
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->selectTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;Z)V

    .line 1262
    return-void
.end method

.method public selectTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;Z)V
    .locals 5
    .param p1, "tab"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    .param p2, "updateIndicator"    # Z

    .line 1265
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedTab:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    .line 1266
    .local v0, "currentTab":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    if-ne v0, p1, :cond_0

    .line 1267
    if-eqz v0, :cond_7

    .line 1268
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->dispatchTabReselected(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V

    goto :goto_2

    .line 1271
    :cond_0
    const/4 v1, -0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->getPosition()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 1272
    .local v2, "newPosition":I
    :goto_0
    if-eqz p2, :cond_5

    .line 1273
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->getPosition()I

    move-result v3

    if-ne v3, v1, :cond_3

    :cond_2
    if-eq v2, v1, :cond_3

    .line 1276
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setScrollPosition(IFZ)V

    goto :goto_1

    .line 1278
    :cond_3
    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->animateToTab(I)V

    .line 1280
    :goto_1
    if-eq v2, v1, :cond_4

    .line 1281
    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setSelectedTabView(I)V

    .line 1283
    :cond_4
    iput v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedPosition:I

    .line 1285
    :cond_5
    if-eqz v0, :cond_6

    .line 1286
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->dispatchTabUnselected(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V

    .line 1288
    :cond_6
    iput-object p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedTab:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    .line 1289
    if-eqz p1, :cond_7

    .line 1290
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->dispatchTabSelected(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V

    .line 1293
    .end local v2    # "newPosition":I
    :cond_7
    :goto_2
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 3002
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 3003
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedIndicatorColor:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$color;->couiTabIndicatorDisableColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 3004
    .local v0, "color":I
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 3005
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getTabCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3006
    invoke-virtual {p0, v1, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->enableTab(IZ)Z

    .line 3005
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3008
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setIndicatorAnimTime(I)V
    .locals 1
    .param p1, "time"    # I

    .line 3016
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    if-eqz v0, :cond_0

    .line 3017
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$2702(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;I)I

    .line 3019
    :cond_0
    return-void
.end method

.method public setIndicatorBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 2757
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    if-nez v0, :cond_0

    .line 2758
    return-void

    .line 2760
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$1800(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2761
    return-void
.end method

.method public setIndicatorBackgroundHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .line 2746
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    if-nez v0, :cond_0

    .line 2747
    return-void

    .line 2749
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$2002(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;I)I

    .line 2750
    return-void
.end method

.method public setIndicatorBackgroundPaddingLeft(I)V
    .locals 1
    .param p1, "paddingLeft"    # I

    .line 2769
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    if-nez v0, :cond_0

    .line 2770
    return-void

    .line 2772
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$1902(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;I)I

    .line 2773
    return-void
.end method

.method public setIndicatorBackgroundPaddingRight(I)V
    .locals 1
    .param p1, "paddingRight"    # I

    .line 2781
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    if-nez v0, :cond_0

    .line 2782
    return-void

    .line 2784
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$2102(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;I)I

    .line 2785
    return-void
.end method

.method public setIndicatorPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .line 2935
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mIndicatorPadding:I

    .line 2936
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->requestLayout()V

    .line 2937
    return-void
.end method

.method public setIndicatorWidthRatio(F)V
    .locals 1
    .param p1, "ratio"    # F

    .line 2842
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    if-nez v0, :cond_0

    .line 2843
    return-void

    .line 2845
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mDefaultIndicatorRatio:F

    .line 2846
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$2602(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;F)F

    .line 2847
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->removeOnTabSelectedListener(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;)V

    .line 612
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;

    .line 613
    if-eqz p1, :cond_1

    .line 614
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->addOnTabSelectedListener(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;)V

    .line 616
    :cond_1
    return-void
.end method

.method setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V
    .locals 2
    .param p1, "adapter"    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "addObserver"    # Z

    .line 995
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1000
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 1002
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 1004
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_1

    .line 1005
    new-instance v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$PagerAdapterObserver;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$PagerAdapterObserver;-><init>(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    .line 1007
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1011
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->populateFromPagerAdapter()V

    .line 1012
    return-void
.end method

.method setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 1216
    invoke-direct {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->ensureScrollAnimator()V

    .line 1217
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1218
    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "updateSelectedText"    # Z

    .line 490
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setScrollPosition(IFZZ)V

    .line 491
    return-void
.end method

.method setScrollPosition(IFZZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "updateSelectedText"    # Z
    .param p4, "updateIndicatorPosition"    # Z

    .line 495
    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 496
    .local v0, "roundedPosition":I
    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 508
    :cond_0
    if-eqz p4, :cond_1

    .line 509
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1, p2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->setIndicatorPositionFromTabPosition(IF)V

    goto :goto_0

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    iget v1, v1, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 511
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result v2

    iput v2, v1, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 512
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-static {v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->access$100(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)V

    .line 517
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 518
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 520
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->calculateScrollXForTab(IF)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->scrollTo(II)V

    .line 523
    if-eqz p3, :cond_4

    .line 524
    invoke-direct {p0, v0, p2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setSelectedTabView(IF)V

    .line 526
    :cond_4
    return-void

    .line 497
    :cond_5
    :goto_1
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 453
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 456
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mSelectedIndicatorColor:I

    .line 458
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .line 476
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 477
    return-void
.end method

.method public setTabGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 803
    return-void
.end method

.method public setTabMinDivider(I)V
    .locals 0
    .param p1, "height"    # I

    .line 2917
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabMinDivider:I

    .line 2918
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->requestLayout()V

    .line 2919
    return-void
.end method

.method public setTabMinMargin(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 2926
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabMinMargin:I

    .line 2927
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->requestLayout()V

    .line 2928
    return-void
.end method

.method public setTabMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 779
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mMode:I

    if-eq p1, v0, :cond_0

    .line 780
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mMode:I

    .line 781
    invoke-direct {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->applyModeAndGravity()V

    .line 783
    :cond_0
    return-void
.end method

.method public setTabPaddingBottom(I)V
    .locals 0
    .param p1, "paddingBottom"    # I

    .line 2971
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingBottom:I

    .line 2972
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->requestLayout()V

    .line 2973
    return-void
.end method

.method public setTabPaddingEnd(I)V
    .locals 0
    .param p1, "paddingEnd"    # I

    .line 2962
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingEnd:I

    .line 2963
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->requestLayout()V

    .line 2964
    return-void
.end method

.method public setTabPaddingStart(I)V
    .locals 0
    .param p1, "paddingStart"    # I

    .line 2944
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingStart:I

    .line 2945
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->requestLayout()V

    .line 2946
    return-void
.end method

.method public setTabPaddingTop(I)V
    .locals 0
    .param p1, "paddingTop"    # I

    .line 2953
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingTop:I

    .line 2954
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->requestLayout()V

    .line 2955
    return-void
.end method

.method public setTabTextColors(II)V
    .locals 1
    .param p1, "normalColor"    # I
    .param p2, "selectedColor"    # I

    .line 843
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextDisabledColor:I

    invoke-static {p1, v0, p2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->createColorStateList(III)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    .line 844
    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 821
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 822
    iput-object p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 823
    invoke-direct {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->updateTextColor()V

    .line 824
    invoke-direct {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->updateAllTabs()V

    .line 826
    :cond_0
    return-void
.end method

.method public setTabTextSize(F)V
    .locals 2
    .param p1, "textSize"    # F

    .line 2794
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    if-eqz v0, :cond_2

    .line 2795
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->isResizeText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2796
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mDefaultTabTextSize:F

    .line 2797
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextSize:F

    goto :goto_0

    .line 2799
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mDefaultTabTextSize:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 2800
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mDefaultTabTextSize:F

    .line 2801
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextSize:F

    goto :goto_0

    .line 2802
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mDefaultTabTextSize:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    .line 2803
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextSize:F

    .line 2807
    :cond_2
    :goto_0
    return-void
.end method

.method public setTabTextSize(FZ)V
    .locals 0
    .param p1, "textSize"    # F
    .param p2, "limit"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2811
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setTabTextSize(F)V

    .line 2812
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 953
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 954
    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1
    .param p1, "viewPager"    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 864
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    .line 865
    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V
    .locals 1
    .param p1, "viewPager"    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "autoRefresh"    # Z

    .line 886
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    .line 887
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 959
    invoke-direct {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getTabScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method updateTabViews(Z)V
    .locals 6
    .param p1, "requestLayout"    # Z

    .line 1351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1352
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1353
    .local v1, "child":Landroid/view/View;
    invoke-direct {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1354
    iget v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingStart:I

    iget v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingTop:I

    iget v4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingEnd:I

    iget v5, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabPaddingBottom:I

    invoke-static {v1, v2, v3, v4, v5}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1355
    if-eqz p1, :cond_0

    .line 1356
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 1351
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1359
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
