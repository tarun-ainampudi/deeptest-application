.class public Lcom/coui/appcompat/widget/COUILockPatternView;
.super Landroid/view/View;
.source "COUILockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;,
        Lcom/coui/appcompat/widget/COUILockPatternView$SavedState;,
        Lcom/coui/appcompat/widget/COUILockPatternView$OnPatternListener;,
        Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;,
        Lcom/coui/appcompat/widget/COUILockPatternView$OnCellDrawListener;,
        Lcom/coui/appcompat/widget/COUILockPatternView$CellState;,
        Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    }
.end annotation


# static fields
.field public static final ALPHA_DELAY:J = 0xa6L

.field public static final ALPHA_DURATION:J = 0xa7L

.field public static final ALPHA_OFFSET:J = 0x10L

.field private static final ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final ASPECT_LOCK_WIDTH:I = 0x1

.field private static final ASPECT_SQUARE:I = 0x0

.field public static final DEBUG_A11Y:Z = false

.field private static final DRAG_THRESHHOLD:F = 0.0f

.field private static final FEEDBACK_MIN_SIZE:I = 0x1

.field private static final MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final PROFILE_DRAWING:Z = false

.field private static final TAG:Ljava/lang/String; = "COUILockPatternView"

.field public static final TRANSLATE_Y_DURATION:J = 0x1f4L

.field public static final TRANSLATE_Y_OFFSET:J = 0x10L

.field public static final VIRTUAL_BASE_VIEW_ID:I = 0x1


# instance fields
.field private mAccessibilityManagerService:Landroid/view/accessibility/AccessibilityManager;

.field private mAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private mAnimatingPeriodStart:J

.field private final mCellStates:[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

.field private mContext:Landroid/content/Context;

.field private final mCurrentPath:Landroid/graphics/Path;

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private mErrorColor:I

.field private mExploreByTouchHelper:Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInnerDrawable:Landroid/graphics/drawable/Drawable;

.field private mInputEnabled:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mIsLinearMotorVersion:Z

.field private mIsSetPassword:Z

.field private mMaxTranslateY:I

.field private mOnPatternListener:Lcom/coui/appcompat/widget/COUILockPatternView$OnPatternListener;

.field private mOuterCircleMaxAlpha:F

.field private mOuterDrawable:Landroid/graphics/drawable/Drawable;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPathAlpha:F

.field private final mPathPaint:Landroid/graphics/Paint;

.field private final mPathWidth:I

.field private final mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/widget/COUILockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDisplayMode:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

.field private final mPatternDrawLookup:[[Z

.field private mPatternInProgress:Z

.field private mRegularColor:I

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private mStyle:I

.field private mSuccessColor:I

.field private final mTmpInvalidateRect:Landroid/graphics/Rect;

.field private mTranslateYInterpolator:Landroid/view/animation/Interpolator;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWongAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mWrongAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 404
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUILockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 405
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 415
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPathAlpha:F

    .line 99
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mDrawingProfilingStarted:Z

    .line 101
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 102
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 135
    const/4 v2, 0x3

    filled-new-array {v2, v2}, [I

    move-result-object v3

    const-class v4, Z

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternDrawLookup:[[Z

    .line 142
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInProgressX:F

    .line 143
    iput v3, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInProgressY:F

    .line 147
    sget-object v3, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->Correct:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternDisplayMode:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    .line 148
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInputEnabled:Z

    .line 149
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInStealthMode:Z

    .line 150
    iput-boolean v3, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mEnableHapticFeedback:Z

    .line 151
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternInProgress:Z

    .line 153
    const v4, 0x3f19999a    # 0.6f

    iput v4, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mHitFactor:F

    .line 160
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 161
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 162
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 173
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mIsSetPassword:Z

    .line 188
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const/4 v5, 0x0

    const v6, 0x3ea8f5c3    # 0.33f

    const v7, 0x3f2b851f    # 0.67f

    invoke-direct {v4, v6, v5, v7, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 189
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e947ae1    # 0.29f

    const v7, 0x3f547ae1    # 0.83f

    const v8, 0x3e4ccccd    # 0.2f

    invoke-direct {v4, v6, v7, v8, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mTranslateYInterpolator:Landroid/view/animation/Interpolator;

    .line 695
    new-instance v4, Lcom/coui/appcompat/widget/COUILockPatternView$4;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/widget/COUILockPatternView$4;-><init>(Lcom/coui/appcompat/widget/COUILockPatternView;)V

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mWongAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 416
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v4

    if-eqz v4, :cond_0

    .line 417
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mStyle:I

    goto :goto_0

    .line 419
    :cond_0
    sget v4, Lcoui/support/appcompat/R$attr;->couiLockPatternViewStyle:I

    iput v4, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mStyle:I

    .line 421
    :goto_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mContext:Landroid/content/Context;

    .line 422
    invoke-static {p0, v1}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 423
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mContext:Landroid/content/Context;

    .line 424
    sget-object v4, Lcoui/support/appcompat/R$styleable;->COUILockPatternView:[I

    sget v6, Lcoui/support/appcompat/R$attr;->couiLockPatternViewStyle:I

    invoke-virtual {p1, p2, v4, v6, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 426
    .local v4, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUILockPatternView;->setClickable(Z)V

    .line 428
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 429
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 431
    sget v6, Lcoui/support/appcompat/R$styleable;->COUILockPatternView_couiRegularColor:I

    invoke-virtual {v4, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mRegularColor:I

    .line 432
    sget v6, Lcoui/support/appcompat/R$styleable;->COUILockPatternView_couiErrorColor:I

    invoke-virtual {v4, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mErrorColor:I

    .line 433
    sget v6, Lcoui/support/appcompat/R$styleable;->COUILockPatternView_couiSuccessColor:I

    invoke-virtual {v4, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mSuccessColor:I

    .line 435
    sget v6, Lcoui/support/appcompat/R$styleable;->COUILockPatternView_couiPathColor:I

    iget v7, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mRegularColor:I

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 436
    .local v6, "pathColor":I
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 438
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 439
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 440
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 442
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcoui/support/appcompat/R$dimen;->lock_pattern_dot_line_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPathWidth:I

    .line 443
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPathWidth:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 444
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcoui/support/appcompat/R$dimen;->lock_pattern_dot_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 446
    .local v7, "dotSize":I
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 447
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 448
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcoui/support/appcompat/R$dimen;->color_lock_pattern_view_max_translate_y:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mMaxTranslateY:I

    .line 449
    filled-new-array {v2, v2}, [I

    move-result-object v8

    const-class v9, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    iput-object v8, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mCellStates:[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    .line 450
    move v8, v1

    .local v8, "i":I
    :goto_1
    if-ge v8, v2, :cond_2

    .line 451
    move v9, v1

    .local v9, "j":I
    :goto_2
    if-ge v9, v2, :cond_1

    .line 452
    iget-object v10, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mCellStates:[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    aget-object v10, v10, v8

    new-instance v11, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    invoke-direct {v11}, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;-><init>()V

    aput-object v11, v10, v9

    .line 453
    iget-object v10, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mCellStates:[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    aget-object v10, v10, v8

    aget-object v10, v10, v9

    div-int/lit8 v11, v7, 0x2

    int-to-float v11, v11

    iput v11, v10, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->radius:F

    .line 454
    iget-object v10, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mCellStates:[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    aget-object v10, v10, v8

    aget-object v10, v10, v9

    iput v8, v10, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->row:I

    .line 455
    iget-object v10, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mCellStates:[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    aget-object v10, v10, v8

    aget-object v10, v10, v9

    iput v9, v10, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->col:I

    .line 456
    iget-object v10, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mCellStates:[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    aget-object v10, v10, v8

    aget-object v10, v10, v9

    const v11, 0x3ecccccd    # 0.4f

    iput v11, v10, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->alpha:F

    .line 457
    iget-object v10, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mCellStates:[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    aget-object v10, v10, v8

    aget-object v10, v10, v9

    iput v5, v10, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->innerCircleAlpha:F

    .line 458
    iget-object v10, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mCellStates:[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    aget-object v10, v10, v8

    aget-object v10, v10, v9

    iput v0, v10, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->innerCircleScale:F

    .line 459
    iget-object v10, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mCellStates:[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    aget-object v10, v10, v8

    aget-object v10, v10, v9

    iput v5, v10, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->outerCircleAlpha:F

    .line 460
    iget-object v10, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mCellStates:[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    aget-object v10, v10, v8

    aget-object v10, v10, v9

    iput v0, v10, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->outerCircleScale:F

    .line 461
    iget-object v10, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mCellStates:[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    aget-object v10, v10, v8

    aget-object v10, v10, v9

    iput-boolean v3, v10, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->needDrawCircle:Z

    .line 462
    iget-object v10, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mCellStates:[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    aget-object v10, v10, v8

    aget-object v10, v10, v9

    new-instance v11, Lcom/coui/appcompat/widget/COUILockPatternView$1;

    invoke-direct {v11, p0}, Lcom/coui/appcompat/widget/COUILockPatternView$1;-><init>(Lcom/coui/appcompat/widget/COUILockPatternView;)V

    invoke-virtual {v10, v11}, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->setCellDrawListener(Lcom/coui/appcompat/widget/COUILockPatternView$OnCellDrawListener;)V

    .line 451
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 450
    .end local v9    # "j":I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 471
    .end local v8    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_lock_pattern_inner_circle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInnerDrawable:Landroid/graphics/drawable/Drawable;

    .line 472
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_lock_pattern_outer_circle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 473
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_lock_pattern_view_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mViewWidth:I

    .line 474
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_lock_pattern_view_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mViewHeight:I

    .line 475
    sget v0, Lcoui/support/appcompat/R$styleable;->COUILockPatternView_couiOuterCircleMaxAlpha:I

    invoke-virtual {v4, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mOuterCircleMaxAlpha:F

    .line 476
    const v0, 0x10c000d

    .line 477
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 478
    new-instance v0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;

    invoke-direct {v0, p0, p0}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;-><init>(Lcom/coui/appcompat/widget/COUILockPatternView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;

    .line 479
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 481
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mAccessibilityManagerService:Landroid/view/accessibility/AccessibilityManager;

    .line 482
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 483
    invoke-static {p1}, Lcom/coui/appcompat/util/VibrateUtils;->isLinearMotorVersion(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mIsLinearMotorVersion:Z

    .line 484
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUILockPatternView;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILockPatternView;

    .line 85
    iget v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPathAlpha:F

    return v0
.end method

.method static synthetic access$002(Lcom/coui/appcompat/widget/COUILockPatternView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILockPatternView;
    .param p1, "x1"    # F

    .line 85
    iput p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPathAlpha:F

    return p1
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUILockPatternView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILockPatternView;

    .line 85
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPattern:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/widget/COUILockPatternView;)[[Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILockPatternView;

    .line 85
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternDrawLookup:[[Z

    return-object v0
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/widget/COUILockPatternView;I)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILockPatternView;
    .param p1, "x1"    # I

    .line 85
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView;->getCenterXForColumn(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/widget/COUILockPatternView;I)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILockPatternView;
    .param p1, "x1"    # I

    .line 85
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView;->getCenterYForRow(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/coui/appcompat/widget/COUILockPatternView;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILockPatternView;

    .line 85
    iget v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mSquareHeight:F

    return v0
.end method

.method static synthetic access$1400(Lcom/coui/appcompat/widget/COUILockPatternView;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILockPatternView;

    .line 85
    iget v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mHitFactor:F

    return v0
.end method

.method static synthetic access$1500(Lcom/coui/appcompat/widget/COUILockPatternView;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILockPatternView;

    .line 85
    iget v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mSquareWidth:F

    return v0
.end method

.method static synthetic access$1600(Lcom/coui/appcompat/widget/COUILockPatternView;F)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILockPatternView;
    .param p1, "x1"    # F

    .line 85
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView;->getRowHit(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/coui/appcompat/widget/COUILockPatternView;F)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILockPatternView;
    .param p1, "x1"    # F

    .line 85
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView;->getColumnHit(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUILockPatternView;)[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILockPatternView;

    .line 85
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mCellStates:[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/COUILockPatternView;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILockPatternView;

    .line 85
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->resetPattern()V

    return-void
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/COUILockPatternView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILockPatternView;

    .line 85
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/coui/appcompat/widget/COUILockPatternView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILockPatternView;

    .line 85
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternInProgress:Z

    return v0
.end method

.method private addCellToPattern(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)V
    .locals 3
    .param p1, "newCell"    # Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    .line 839
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 840
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInStealthMode:Z

    if-nez v0, :cond_0

    .line 842
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView;->startCellActivatedAnimation(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)V

    .line 844
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->notifyCellAdded()V

    .line 845
    return-void
.end method

.method private calculateLastSegmentAlpha(FFFF)F
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "lastX"    # F
    .param p4, "lastY"    # F

    .line 1307
    sub-float v0, p1, p3

    .line 1308
    .local v0, "diffX":F
    sub-float v1, p2, p4

    .line 1309
    .local v1, "diffY":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1310
    .local v2, "dist":F
    iget v3, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mSquareWidth:F

    div-float v3, v2, v3

    .line 1311
    .local v3, "frac":F
    const v4, 0x3e99999a    # 0.3f

    sub-float v4, v3, v4

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    return v4
.end method

.method private cancelLineAnimations()V
    .locals 6

    .line 1129
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 1130
    move v3, v0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 1131
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mCellStates:[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    aget-object v4, v4, v1

    aget-object v4, v4, v3

    .line 1132
    .local v4, "state":Lcom/coui/appcompat/widget/COUILockPatternView$CellState;
    iget-object v5, v4, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_0

    .line 1133
    iget-object v5, v4, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1134
    const/4 v5, 0x1

    iput v5, v4, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->lineEndX:F

    .line 1135
    iput v5, v4, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->lineEndY:F

    .line 1130
    .end local v4    # "state":Lcom/coui/appcompat/widget/COUILockPatternView$CellState;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1129
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1139
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private checkForNewHit(FF)Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 923
    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/COUILockPatternView;->getRowHit(F)I

    move-result v0

    .line 924
    .local v0, "rowHit":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 925
    return-object v1

    .line 927
    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView;->getColumnHit(F)I

    move-result v2

    .line 928
    .local v2, "columnHit":I
    if-gez v2, :cond_1

    .line 929
    return-object v1

    .line 932
    :cond_1
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternDrawLookup:[[Z

    aget-object v3, v3, v0

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_2

    .line 933
    return-object v1

    .line 935
    :cond_2
    invoke-static {v0, v2}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->of(II)Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    move-result-object v1

    return-object v1
.end method

.method private clearPatternDrawLookup()V
    .locals 5

    .line 728
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 729
    move v3, v0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 730
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternDrawLookup:[[Z

    aget-object v4, v4, v1

    aput-boolean v0, v4, v3

    .line 729
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 728
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 733
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private detectAndAddHit(FF)Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 792
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/COUILockPatternView;->checkForNewHit(FF)Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    move-result-object v0

    .line 793
    .local v0, "cell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    if-eqz v0, :cond_7

    .line 796
    const/4 v1, 0x0

    .line 797
    .local v1, "fillInGapCell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 798
    .local v2, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coui/appcompat/widget/COUILockPatternView$Cell;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 799
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    .line 800
    .local v3, "lastCell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$300(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v5

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$300(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v6

    sub-int/2addr v5, v6

    .line 801
    .local v5, "dRow":I
    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$400(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v6

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$400(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v7

    sub-int/2addr v6, v7

    .line 803
    .local v6, "dColumn":I
    invoke-static {v3}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$300(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v7

    .line 804
    .local v7, "fillInRow":I
    invoke-static {v3}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$400(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v8

    .line 806
    .local v8, "fillInColumn":I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, -0x1

    const/4 v11, 0x2

    if-ne v9, v11, :cond_1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-eq v9, v4, :cond_1

    .line 807
    invoke-static {v3}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$300(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v9

    if-lez v5, :cond_0

    move v12, v4

    goto :goto_0

    :cond_0
    move v12, v10

    :goto_0
    add-int v7, v9, v12

    .line 810
    :cond_1
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ne v9, v11, :cond_3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-eq v9, v4, :cond_3

    .line 811
    invoke-static {v3}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$400(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v9

    if-lez v6, :cond_2

    goto :goto_1

    :cond_2
    move v4, v10

    :goto_1
    add-int v8, v9, v4

    .line 814
    :cond_3
    invoke-static {v7, v8}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->of(II)Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    move-result-object v1

    .line 817
    .end local v3    # "lastCell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    .end local v5    # "dRow":I
    .end local v6    # "dColumn":I
    .end local v7    # "fillInRow":I
    .end local v8    # "fillInColumn":I
    :cond_4
    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternDrawLookup:[[Z

    .line 818
    invoke-static {v1}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$300(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$400(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v4

    aget-boolean v3, v3, v4

    if-nez v3, :cond_5

    .line 819
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUILockPatternView;->addCellToPattern(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)V

    .line 821
    :cond_5
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUILockPatternView;->addCellToPattern(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)V

    .line 822
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mEnableHapticFeedback:Z

    if-eqz v3, :cond_6

    .line 823
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->performHitFeedback()V

    .line 825
    :cond_6
    return-object v0

    .line 827
    .end local v1    # "fillInGapCell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    .end local v2    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coui/appcompat/widget/COUILockPatternView$Cell;>;"
    :cond_7
    const/4 v1, 0x0

    return-object v1
.end method

.method private drawCircle(Landroid/graphics/Canvas;FFFZF)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "radius"    # F
    .param p5, "partOfPattern"    # Z
    .param p6, "alpha"    # F

    .line 1336
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mRegularColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1337
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1338
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1339
    return-void
.end method

.method private drawCircleDrawable(Landroid/graphics/Canvas;FFFFFF)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "innerScale"    # F
    .param p5, "innerAlpha"    # F
    .param p6, "outerScale"    # F
    .param p7, "outerAlpha"    # F

    .line 1344
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1345
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInnerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1346
    .local v4, "innerWidth":I
    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    sub-float v5, v2, v5

    float-to-int v5, v5

    .line 1347
    .local v5, "innerLeft":I
    div-int/lit8 v6, v4, 0x2

    int-to-float v6, v6

    sub-float v6, v3, v6

    float-to-int v6, v6

    .line 1348
    .local v6, "innerTop":I
    add-int v7, v5, v4

    .line 1349
    .local v7, "innerRight":I
    add-int v8, v6, v4

    .line 1350
    .local v8, "innerBottom":I
    move/from16 v9, p4

    invoke-virtual {v1, v9, v9, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1351
    iget-object v10, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInnerDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x1

    invoke-direct {v0, v11}, Lcom/coui/appcompat/widget/COUILockPatternView;->getCurrentColor(Z)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1352
    iget-object v10, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInnerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1353
    iget-object v10, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInnerDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v12, 0x437f0000    # 255.0f

    mul-float v13, p5, v12

    float-to-int v13, v13

    invoke-virtual {v10, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1354
    iget-object v10, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInnerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1355
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1357
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1358
    iget-object v10, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 1359
    .local v10, "outerWidth":I
    div-int/lit8 v13, v10, 0x2

    int-to-float v13, v13

    sub-float v13, v2, v13

    float-to-int v13, v13

    .line 1360
    .local v13, "outerLeft":I
    div-int/lit8 v14, v10, 0x2

    int-to-float v14, v14

    sub-float v14, v3, v14

    float-to-int v14, v14

    .line 1361
    .local v14, "outerTop":I
    add-int v12, v13, v10

    .line 1362
    .local v12, "outerRight":I
    add-int v11, v14, v10

    .line 1363
    .local v11, "outerBottom":I
    move/from16 v16, v4

    move/from16 v4, p6

    .end local v4    # "innerWidth":I
    .local v16, "innerWidth":I
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1364
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Lcom/coui/appcompat/widget/COUILockPatternView;->getCurrentColor(Z)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1365
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v13, v14, v12, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1366
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float v4, p7, v15

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1367
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1368
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1369
    return-void
.end method

.method private getCenterXForColumn(I)F
    .locals 3
    .param p1, "column"    # I

    .line 1176
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mSquareWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getCenterYForRow(I)F
    .locals 3
    .param p1, "row"    # I

    .line 1180
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mSquareHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getColumnHit(F)I
    .locals 6
    .param p1, "x"    # F

    .line 967
    iget v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mSquareWidth:F

    .line 968
    .local v0, "squareWidth":F
    iget v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mHitFactor:F

    mul-float/2addr v1, v0

    .line 970
    .local v1, "hitSize":F
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 971
    .local v2, "offset":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 973
    int-to-float v4, v3

    mul-float/2addr v4, v0

    add-float/2addr v4, v2

    .line 974
    .local v4, "hitLeft":F
    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    add-float v5, v4, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 975
    return v3

    .line 971
    .end local v4    # "hitLeft":F
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 978
    .end local v3    # "i":I
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private getCurrentColor(Z)I
    .locals 3
    .param p1, "partOfPattern"    # Z

    .line 1315
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternDisplayMode:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    sget-object v1, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->Wrong:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternDisplayMode:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    sget-object v1, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->FingerprintNoMatch:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 1319
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternDisplayMode:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    sget-object v1, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->Correct:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternDisplayMode:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    sget-object v1, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->Animate:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternDisplayMode:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    sget-object v1, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->FingerprintMatch:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 1323
    :cond_1
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInStealthMode:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternInProgress:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1327
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown display mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternDisplayMode:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1325
    :cond_3
    :goto_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mRegularColor:I

    return v0

    .line 1322
    :cond_4
    :goto_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mSuccessColor:I

    return v0

    .line 1318
    :cond_5
    :goto_2
    iget v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mErrorColor:I

    return v0
.end method

.method private getRowHit(F)I
    .locals 6
    .param p1, "y"    # F

    .line 946
    iget v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mSquareHeight:F

    .line 947
    .local v0, "squareHeight":F
    iget v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mHitFactor:F

    mul-float/2addr v1, v0

    .line 949
    .local v1, "hitSize":F
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 950
    .local v2, "offset":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 952
    int-to-float v4, v3

    mul-float/2addr v4, v0

    add-float/2addr v4, v2

    .line 953
    .local v4, "hitTop":F
    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    add-float v5, v4, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 954
    return v3

    .line 950
    .end local v4    # "hitTop":F
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 957
    .end local v3    # "i":I
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1142
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPathAlpha:F

    .line 1143
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->resetPattern()V

    .line 1144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1145
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1146
    .local v1, "y":F
    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/widget/COUILockPatternView;->detectAndAddHit(FF)Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    move-result-object v2

    .line 1147
    .local v2, "hitCell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    if-eqz v2, :cond_0

    .line 1148
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/COUILockPatternView;->setPatternInProgress(Z)V

    .line 1149
    sget-object v3, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->Correct:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternDisplayMode:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    .line 1150
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->notifyPatternStarted()V

    goto :goto_0

    .line 1151
    :cond_0
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternInProgress:Z

    if-eqz v3, :cond_1

    .line 1152
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/COUILockPatternView;->setPatternInProgress(Z)V

    .line 1153
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->notifyPatternCleared()V

    .line 1155
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 1156
    invoke-static {v2}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$400(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/COUILockPatternView;->getCenterXForColumn(I)F

    move-result v3

    .line 1157
    .local v3, "startX":F
    invoke-static {v2}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$300(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/coui/appcompat/widget/COUILockPatternView;->getCenterYForRow(I)F

    move-result v4

    .line 1159
    .local v4, "startY":F
    iget v5, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mSquareWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 1160
    .local v5, "widthOffset":F
    iget v7, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mSquareHeight:F

    div-float/2addr v7, v6

    .line 1162
    .local v7, "heightOffset":F
    sub-float v6, v3, v5

    float-to-int v6, v6

    sub-float v8, v4, v7

    float-to-int v8, v8

    add-float v9, v3, v5

    float-to-int v9, v9

    add-float v10, v4, v7

    float-to-int v10, v10

    invoke-virtual {p0, v6, v8, v9, v10}, Lcom/coui/appcompat/widget/COUILockPatternView;->invalidate(IIII)V

    .line 1165
    .end local v3    # "startX":F
    .end local v4    # "startY":F
    .end local v5    # "widthOffset":F
    .end local v7    # "heightOffset":F
    :cond_2
    iput v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInProgressX:F

    .line 1166
    iput v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInProgressY:F

    .line 1173
    return-void
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 25
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1047
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPathWidth:I

    int-to-float v2, v2

    .line 1048
    .local v2, "radius":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    .line 1049
    .local v3, "historySize":I
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1050
    const/4 v4, 0x0

    .line 1051
    .local v4, "invalidateNow":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    add-int/lit8 v6, v3, 0x1

    if-ge v5, v6, :cond_7

    .line 1052
    if-ge v5, v3, :cond_0

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v6

    goto :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 1053
    .local v6, "x":F
    :goto_1
    if-ge v5, v3, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v7

    goto :goto_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 1054
    .local v7, "y":F
    :goto_2
    invoke-direct {v0, v6, v7}, Lcom/coui/appcompat/widget/COUILockPatternView;->detectAndAddHit(FF)Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    move-result-object v8

    .line 1055
    .local v8, "hitCell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    iget-object v9, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1056
    .local v9, "patternSize":I
    if-eqz v8, :cond_2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 1057
    invoke-direct {v0, v10}, Lcom/coui/appcompat/widget/COUILockPatternView;->setPatternInProgress(Z)V

    .line 1058
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->notifyPatternStarted()V

    .line 1061
    :cond_2
    iget v10, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInProgressX:F

    sub-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 1062
    .local v10, "dx":F
    iget v11, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInProgressY:F

    sub-float v11, v7, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1063
    .local v11, "dy":F
    const/4 v12, 0x0

    cmpl-float v13, v10, v12

    if-gtz v13, :cond_3

    cmpl-float v12, v11, v12

    if-lez v12, :cond_4

    .line 1064
    :cond_3
    const/4 v4, 0x1

    .line 1067
    :cond_4
    iget-boolean v12, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternInProgress:Z

    if-eqz v12, :cond_6

    if-lez v9, :cond_6

    .line 1068
    iget-object v12, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 1069
    .local v12, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coui/appcompat/widget/COUILockPatternView$Cell;>;"
    add-int/lit8 v13, v9, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    .line 1070
    .local v13, "lastCell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    invoke-static {v13}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$400(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/coui/appcompat/widget/COUILockPatternView;->getCenterXForColumn(I)F

    move-result v14

    .line 1071
    .local v14, "lastCellCenterX":F
    invoke-static {v13}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$300(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v15

    invoke-direct {v0, v15}, Lcom/coui/appcompat/widget/COUILockPatternView;->getCenterYForRow(I)F

    move-result v15

    .line 1074
    .local v15, "lastCellCenterY":F
    invoke-static {v14, v6}, Ljava/lang/Math;->min(FF)F

    move-result v16

    sub-float v1, v16, v2

    .line 1075
    .local v1, "left":F
    invoke-static {v14, v6}, Ljava/lang/Math;->max(FF)F

    move-result v16

    move/from16 v17, v3

    .end local v3    # "historySize":I
    .local v17, "historySize":I
    add-float v3, v16, v2

    .line 1076
    .local v3, "right":F
    invoke-static {v15, v7}, Ljava/lang/Math;->min(FF)F

    move-result v16

    move/from16 v18, v4

    .end local v4    # "invalidateNow":Z
    .local v18, "invalidateNow":Z
    sub-float v4, v16, v2

    .line 1077
    .local v4, "top":F
    invoke-static {v15, v7}, Ljava/lang/Math;->max(FF)F

    move-result v16

    move/from16 v19, v6

    .end local v6    # "x":F
    .local v19, "x":F
    add-float v6, v16, v2

    .line 1080
    .local v6, "bottom":F
    if-eqz v8, :cond_5

    .line 1081
    move/from16 v20, v2

    .end local v2    # "radius":F
    .local v20, "radius":F
    iget v2, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mSquareWidth:F

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v2, v2, v16

    .line 1082
    .local v2, "width":F
    move/from16 v21, v7

    .end local v7    # "y":F
    .local v21, "y":F
    iget v7, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mSquareHeight:F

    mul-float v7, v7, v16

    .line 1083
    .local v7, "height":F
    move/from16 v22, v9

    .end local v9    # "patternSize":I
    .local v22, "patternSize":I
    invoke-static {v8}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$400(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v9

    invoke-direct {v0, v9}, Lcom/coui/appcompat/widget/COUILockPatternView;->getCenterXForColumn(I)F

    move-result v9

    .line 1084
    .local v9, "hitCellCenterX":F
    move/from16 v23, v10

    .end local v10    # "dx":F
    .local v23, "dx":F
    invoke-static {v8}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$300(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v10

    invoke-direct {v0, v10}, Lcom/coui/appcompat/widget/COUILockPatternView;->getCenterYForRow(I)F

    move-result v10

    .line 1086
    .local v10, "hitCellCenterY":F
    move-object/from16 v24, v8

    .end local v8    # "hitCell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    .local v24, "hitCell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    sub-float v8, v9, v2

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1087
    add-float v8, v9, v2

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1088
    sub-float v8, v10, v7

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1089
    add-float v8, v10, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto :goto_3

    .line 1093
    .end local v20    # "radius":F
    .end local v21    # "y":F
    .end local v22    # "patternSize":I
    .end local v23    # "dx":F
    .end local v24    # "hitCell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    .local v2, "radius":F
    .local v7, "y":F
    .restart local v8    # "hitCell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    .local v9, "patternSize":I
    .local v10, "dx":F
    :cond_5
    move/from16 v20, v2

    move/from16 v21, v7

    move-object/from16 v24, v8

    move/from16 v22, v9

    move/from16 v23, v10

    .end local v2    # "radius":F
    .end local v7    # "y":F
    .end local v8    # "hitCell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    .end local v9    # "patternSize":I
    .end local v10    # "dx":F
    .restart local v20    # "radius":F
    .restart local v21    # "y":F
    .restart local v22    # "patternSize":I
    .restart local v23    # "dx":F
    .restart local v24    # "hitCell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    :goto_3
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1094
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 1093
    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_4

    .line 1051
    .end local v1    # "left":F
    .end local v6    # "bottom":F
    .end local v11    # "dy":F
    .end local v12    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coui/appcompat/widget/COUILockPatternView$Cell;>;"
    .end local v13    # "lastCell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    .end local v14    # "lastCellCenterX":F
    .end local v15    # "lastCellCenterY":F
    .end local v17    # "historySize":I
    .end local v18    # "invalidateNow":Z
    .end local v19    # "x":F
    .end local v20    # "radius":F
    .end local v21    # "y":F
    .end local v22    # "patternSize":I
    .end local v23    # "dx":F
    .end local v24    # "hitCell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    .restart local v2    # "radius":F
    .local v3, "historySize":I
    .local v4, "invalidateNow":Z
    :cond_6
    move/from16 v20, v2

    move/from16 v17, v3

    move/from16 v18, v4

    .end local v2    # "radius":F
    .end local v3    # "historySize":I
    .end local v4    # "invalidateNow":Z
    .restart local v17    # "historySize":I
    .restart local v18    # "invalidateNow":Z
    .restart local v20    # "radius":F
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v2, v20

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 1097
    .end local v5    # "i":I
    .end local v17    # "historySize":I
    .end local v18    # "invalidateNow":Z
    .end local v20    # "radius":F
    .restart local v2    # "radius":F
    .restart local v3    # "historySize":I
    .restart local v4    # "invalidateNow":Z
    :cond_7
    move/from16 v20, v2

    move/from16 v17, v3

    .end local v2    # "radius":F
    .end local v3    # "historySize":I
    .restart local v17    # "historySize":I
    .restart local v20    # "radius":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInProgressX:F

    .line 1098
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInProgressY:F

    .line 1101
    if-eqz v4, :cond_8

    .line 1102
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1103
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUILockPatternView;->invalidate(Landroid/graphics/Rect;)V

    .line 1104
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/coui/appcompat/widget/COUILockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1106
    :cond_8
    return-void
.end method

.method private handleActionUp()V
    .locals 1

    .line 1114
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUILockPatternView;->setPatternInProgress(Z)V

    .line 1116
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->cancelLineAnimations()V

    .line 1117
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->notifyPatternDetected()V

    .line 1118
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->invalidate()V

    .line 1126
    :cond_0
    return-void
.end method

.method private initCellAnim(Lcom/coui/appcompat/widget/COUILockPatternView$CellState;Ljava/util/List;I)V
    .locals 8
    .param p1, "cellState"    # Lcom/coui/appcompat/widget/COUILockPatternView$CellState;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/widget/COUILockPatternView$CellState;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;I)V"
        }
    .end annotation

    .line 1734
    .local p2, "animatorList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->setCellNumberAlpha(F)V

    .line 1735
    iget v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mMaxTranslateY:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->setCellNumberTranslateY(I)V

    .line 1737
    const-string v0, "cellNumberAlpha"

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1738
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    int-to-long v2, p3

    const-wide/16 v4, 0x10

    mul-long/2addr v2, v4

    const-wide/16 v6, 0xa6

    add-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1739
    const-wide/16 v2, 0xa7

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1740
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1741
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1743
    const-string v2, "cellNumberTranslateY"

    new-array v1, v1, [I

    iget v3, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mMaxTranslateY:I

    const/4 v6, 0x0

    aput v3, v1, v6

    const/4 v3, 0x1

    aput v6, v1, v3

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1744
    .local v1, "translateYAnimator":Landroid/animation/ObjectAnimator;
    int-to-long v2, p3

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1745
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1746
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mTranslateYInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1747
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1748
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private notifyCellAdded()V
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mOnPatternListener:Lcom/coui/appcompat/widget/COUILockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mOnPatternListener:Lcom/coui/appcompat/widget/COUILockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/coui/appcompat/widget/COUILockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 661
    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    .line 678
    sget v0, Lcoui/support/appcompat/R$string;->lockscreen_access_pattern_cleared:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUILockPatternView;->sendAccessEvent(I)V

    .line 679
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mOnPatternListener:Lcom/coui/appcompat/widget/COUILockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mOnPatternListener:Lcom/coui/appcompat/widget/COUILockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUILockPatternView$OnPatternListener;->onPatternCleared()V

    .line 682
    :cond_0
    return-void
.end method

.method private notifyPatternDetected()V
    .locals 2

    .line 671
    sget v0, Lcoui/support/appcompat/R$string;->lockscreen_access_pattern_detected:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUILockPatternView;->sendAccessEvent(I)V

    .line 672
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mOnPatternListener:Lcom/coui/appcompat/widget/COUILockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mOnPatternListener:Lcom/coui/appcompat/widget/COUILockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/coui/appcompat/widget/COUILockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 675
    :cond_0
    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    .line 664
    sget v0, Lcoui/support/appcompat/R$string;->lockscreen_access_pattern_start:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUILockPatternView;->sendAccessEvent(I)V

    .line 665
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mOnPatternListener:Lcom/coui/appcompat/widget/COUILockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mOnPatternListener:Lcom/coui/appcompat/widget/COUILockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUILockPatternView$OnPatternListener;->onPatternStart()V

    .line 668
    :cond_0
    return-void
.end method

.method private performHitFeedback()V
    .locals 1

    .line 831
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mIsLinearMotorVersion:Z

    if-eqz v0, :cond_0

    .line 832
    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUILockPatternView;->performHapticFeedback(I)Z

    goto :goto_0

    .line 834
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUILockPatternView;->performHapticFeedback(I)Z

    .line 836
    :goto_0
    return-void
.end method

.method private performWrongModeFeedback()V
    .locals 2

    .line 586
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mEnableHapticFeedback:Z

    if-nez v0, :cond_0

    .line 587
    return-void

    .line 589
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mIsLinearMotorVersion:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 590
    const/16 v0, 0x130

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/COUILockPatternView;->performHapticFeedback(II)Z

    goto :goto_0

    .line 594
    :cond_1
    const/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/COUILockPatternView;->performHapticFeedback(II)Z

    .line 598
    :goto_0
    return-void
.end method

.method private resetPattern()V
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 719
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->clearPatternDrawLookup()V

    .line 720
    sget-object v0, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->Correct:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternDisplayMode:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    .line 721
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->invalidate()V

    .line 722
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 4
    .param p1, "measureSpec"    # I
    .param p2, "desired"    # I

    .line 762
    const/4 v0, 0x0

    .line 763
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 764
    .local v1, "specSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    if-eqz v2, :cond_0

    .line 773
    move v0, v1

    goto :goto_0

    .line 766
    :cond_0
    move v0, p2

    .line 767
    goto :goto_0

    .line 769
    :cond_1
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 770
    nop

    .line 775
    :goto_0
    return v0
.end method

.method private sendAccessEvent(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1109
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUILockPatternView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1110
    return-void
.end method

.method private setPatternInProgress(Z)V
    .locals 1
    .param p1, "progress"    # Z

    .line 1040
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternInProgress:Z

    .line 1041
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 1042
    return-void
.end method

.method private startCellActivatedAnimation(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)V
    .locals 8
    .param p1, "cell"    # Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    .line 848
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mCellStates:[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$300(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$400(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v1

    aget-object v0, v0, v1

    .line 849
    .local v0, "cellState":Lcom/coui/appcompat/widget/COUILockPatternView$CellState;
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUILockPatternView;->startOuterAnimation(Lcom/coui/appcompat/widget/COUILockPatternView$CellState;)V

    .line 850
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUILockPatternView;->startInnerAnimation(Lcom/coui/appcompat/widget/COUILockPatternView$CellState;)V

    .line 851
    iget v4, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInProgressX:F

    iget v5, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInProgressY:F

    .line 852
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$400(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUILockPatternView;->getCenterXForColumn(I)F

    move-result v6

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$300(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUILockPatternView;->getCenterYForRow(I)F

    move-result v7

    .line 851
    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/coui/appcompat/widget/COUILockPatternView;->startLineEndAnimation(Lcom/coui/appcompat/widget/COUILockPatternView$CellState;FFFF)V

    .line 853
    return-void
.end method

.method private startFingerprintNoMatchAnimator()V
    .locals 11

    .line 627
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 628
    .local v2, "keyframe1":Landroid/animation/Keyframe;
    const v3, 0x3e4ccccd    # 0.2f

    const v4, 0x3eb33333    # 0.35f

    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 629
    .local v3, "keyframe2":Landroid/animation/Keyframe;
    const v4, 0x3ecccccd    # 0.4f

    invoke-static {v4, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 630
    .local v4, "keyframe3":Landroid/animation/Keyframe;
    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3e19999a    # 0.15f

    invoke-static {v5, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 631
    .local v5, "keyframe4":Landroid/animation/Keyframe;
    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v6, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 632
    .local v6, "keyframe5":Landroid/animation/Keyframe;
    invoke-static {v1, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 633
    .local v0, "keyframe6":Landroid/animation/Keyframe;
    const-string v1, "pathAlpha"

    const/4 v7, 0x6

    new-array v7, v7, [Landroid/animation/Keyframe;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v9, 0x1

    aput-object v3, v7, v9

    const/4 v10, 0x2

    aput-object v4, v7, v10

    const/4 v10, 0x3

    aput-object v5, v7, v10

    const/4 v10, 0x4

    aput-object v6, v7, v10

    const/4 v10, 0x5

    aput-object v0, v7, v10

    invoke-static {v1, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 635
    .local v1, "holder":Landroid/animation/PropertyValuesHolder;
    new-array v7, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v7, v8

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 636
    .local v7, "fingerNotMatchAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 637
    new-instance v8, Lcom/coui/appcompat/widget/COUILockPatternView$3;

    invoke-direct {v8, p0}, Lcom/coui/appcompat/widget/COUILockPatternView$3;-><init>(Lcom/coui/appcompat/widget/COUILockPatternView;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 650
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 651
    return-void
.end method

.method private startInnerAnimation(Lcom/coui/appcompat/widget/COUILockPatternView$CellState;)V
    .locals 5
    .param p1, "cellState"    # Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    .line 908
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 909
    .local v0, "alphaAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3f333333    # 0.7f

    invoke-direct {v1, v3, v2, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 910
    const-wide/16 v1, 0xe6

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 911
    new-instance v1, Lcom/coui/appcompat/widget/COUILockPatternView$9;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView$9;-><init>(Lcom/coui/appcompat/widget/COUILockPatternView;Lcom/coui/appcompat/widget/COUILockPatternView$CellState;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 917
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 918
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startLineEndAnimation(Lcom/coui/appcompat/widget/COUILockPatternView$CellState;FFFF)V
    .locals 9
    .param p1, "state"    # Lcom/coui/appcompat/widget/COUILockPatternView$CellState;
    .param p2, "startX"    # F
    .param p3, "startY"    # F
    .param p4, "targetX"    # F
    .param p5, "targetY"    # F

    .line 857
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 858
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v8, Lcom/coui/appcompat/widget/COUILockPatternView$5;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p4

    move v6, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/widget/COUILockPatternView$5;-><init>(Lcom/coui/appcompat/widget/COUILockPatternView;Lcom/coui/appcompat/widget/COUILockPatternView$CellState;FFFF)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 867
    new-instance v1, Lcom/coui/appcompat/widget/COUILockPatternView$6;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView$6;-><init>(Lcom/coui/appcompat/widget/COUILockPatternView;Lcom/coui/appcompat/widget/COUILockPatternView$CellState;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 873
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 874
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 875
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 876
    iput-object v0, p1, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    .line 877
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startOuterAnimation(Lcom/coui/appcompat/widget/COUILockPatternView$CellState;)V
    .locals 10
    .param p1, "cellState"    # Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    .line 880
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 881
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v1, 0x1cc

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 882
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v3, v3, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 883
    const/4 v1, 0x2

    new-array v4, v1, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 884
    .local v4, "scaleAnimator":Landroid/animation/ValueAnimator;
    new-instance v5, Lcom/coui/appcompat/widget/COUILockPatternView$7;

    invoke-direct {v5, p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView$7;-><init>(Lcom/coui/appcompat/widget/COUILockPatternView;Lcom/coui/appcompat/widget/COUILockPatternView$CellState;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 891
    invoke-static {v3, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 892
    .local v5, "keyframe1":Landroid/animation/Keyframe;
    iget v6, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mOuterCircleMaxAlpha:F

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v7, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 893
    .local v6, "keyframe2":Landroid/animation/Keyframe;
    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 894
    .local v2, "keyframe3":Landroid/animation/Keyframe;
    const-string v3, "alpha"

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Keyframe;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v9, 0x1

    aput-object v6, v7, v9

    aput-object v2, v7, v1

    invoke-static {v3, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 895
    .local v1, "holder":Landroid/animation/PropertyValuesHolder;
    new-array v3, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 896
    .local v3, "alphaAnimator":Landroid/animation/ValueAnimator;
    new-instance v7, Lcom/coui/appcompat/widget/COUILockPatternView$8;

    invoke-direct {v7, p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView$8;-><init>(Lcom/coui/appcompat/widget/COUILockPatternView;Lcom/coui/appcompat/widget/COUILockPatternView$CellState;)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 903
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 904
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 905
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40e00000    # 7.0f
    .end array-data
.end method

.method private startWrongAnimator()V
    .locals 11

    .line 601
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 602
    .local v2, "keyframe1":Landroid/animation/Keyframe;
    const v3, 0x3e4ccccd    # 0.2f

    const v4, 0x3eb33333    # 0.35f

    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 603
    .local v3, "keyframe2":Landroid/animation/Keyframe;
    const v4, 0x3ecccccd    # 0.4f

    invoke-static {v4, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 604
    .local v4, "keyframe3":Landroid/animation/Keyframe;
    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3e19999a    # 0.15f

    invoke-static {v5, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 605
    .local v5, "keyframe4":Landroid/animation/Keyframe;
    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v6, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 606
    .local v6, "keyframe5":Landroid/animation/Keyframe;
    invoke-static {v1, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 607
    .local v0, "keyframe6":Landroid/animation/Keyframe;
    const-string v1, "pathAlpha"

    const/4 v7, 0x6

    new-array v7, v7, [Landroid/animation/Keyframe;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v9, 0x1

    aput-object v3, v7, v9

    const/4 v10, 0x2

    aput-object v4, v7, v10

    const/4 v10, 0x3

    aput-object v5, v7, v10

    const/4 v10, 0x4

    aput-object v6, v7, v10

    const/4 v10, 0x5

    aput-object v0, v7, v10

    invoke-static {v1, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 609
    .local v1, "holder":Landroid/animation/PropertyValuesHolder;
    new-array v7, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v7, v8

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v7

    iput-object v7, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    .line 610
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 611
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/coui/appcompat/widget/COUILockPatternView$2;

    invoke-direct {v8, p0}, Lcom/coui/appcompat/widget/COUILockPatternView$2;-><init>(Lcom/coui/appcompat/widget/COUILockPatternView;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 623
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 624
    return-void
.end method


# virtual methods
.method public clearPattern()V
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mWongAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 691
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->resetPattern()V

    .line 693
    :goto_0
    return-void
.end method

.method public clearPattern(Z)V
    .locals 0
    .param p1, "isAnimation"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1692
    return-void
.end method

.method public disableInput()V
    .locals 1

    .line 740
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInputEnabled:Z

    .line 741
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 709
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 710
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 711
    return v0
.end method

.method public enableInput()V
    .locals 1

    .line 747
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInputEnabled:Z

    .line 748
    return-void
.end method

.method public getCellStates()[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mCellStates:[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    return-object v0
.end method

.method public getEnterAnim()Landroid/animation/AnimatorSet;
    .locals 8

    .line 1720
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1721
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1722
    .local v1, "animatorList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 1723
    move v5, v2

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_0

    .line 1724
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mCellStates:[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    aget-object v6, v6, v3

    aget-object v6, v6, v5

    .line 1725
    .local v6, "cell":Lcom/coui/appcompat/widget/COUILockPatternView$CellState;
    mul-int/lit8 v7, v3, 0x3

    add-int/2addr v7, v5

    .line 1726
    .local v7, "index":I
    invoke-direct {p0, v6, v1, v7}, Lcom/coui/appcompat/widget/COUILockPatternView;->initCellAnim(Lcom/coui/appcompat/widget/COUILockPatternView$CellState;Ljava/util/List;I)V

    .line 1723
    .end local v6    # "cell":Lcom/coui/appcompat/widget/COUILockPatternView$CellState;
    .end local v7    # "index":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1722
    .end local v5    # "j":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1729
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1730
    return-object v0
.end method

.method public getFailAnimator()Landroid/animation/Animator;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1699
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1700
    .local v0, "animation":Landroid/animation/ValueAnimator;
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getSuccessAnimator()Landroid/animation/Animator;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1710
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1711
    .local v0, "animator":Landroid/animation/ValueAnimator;
    return-object v0

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public isInStealthMode()Z
    .locals 1

    .line 499
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInStealthMode:Z

    return v0
.end method

.method public isSetLockPassword()Z
    .locals 1

    .line 1672
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mIsSetPassword:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .line 507
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mEnableHapticFeedback:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1373
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1374
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1376
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 1377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    .line 1379
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1185
    move-object/from16 v8, p0

    iget-object v9, v8, Lcom/coui/appcompat/widget/COUILockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 1186
    .local v9, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coui/appcompat/widget/COUILockPatternView$Cell;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1187
    .local v10, "count":I
    iget-object v11, v8, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternDrawLookup:[[Z

    .line 1189
    .local v11, "drawLookup":[[Z
    iget-object v0, v8, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternDisplayMode:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    sget-object v1, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->Animate:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 1194
    add-int/lit8 v0, v10, 0x1

    mul-int/lit16 v0, v0, 0x2bc

    .line 1195
    .local v0, "oneCycle":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v8, Lcom/coui/appcompat/widget/COUILockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    rem-int/2addr v1, v0

    .line 1197
    .local v1, "spotInCycle":I
    div-int/lit16 v3, v1, 0x2bc

    .line 1199
    .local v3, "numCircles":I
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->clearPatternDrawLookup()V

    .line 1200
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 1201
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    .line 1202
    .local v5, "cell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    invoke-virtual {v5}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->getRow()I

    move-result v6

    aget-object v6, v11, v6

    invoke-virtual {v5}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->getColumn()I

    move-result v7

    aput-boolean v2, v6, v7

    .line 1200
    .end local v5    # "cell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1207
    .end local v4    # "i":I
    :cond_0
    if-lez v3, :cond_1

    if-ge v3, v10, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 1210
    .local v4, "needToUpdateInProgressPoint":Z
    :goto_1
    if-eqz v4, :cond_2

    .line 1211
    rem-int/lit16 v5, v1, 0x2bc

    int-to-float v5, v5

    const/high16 v6, 0x442f0000    # 700.0f

    div-float/2addr v5, v6

    .line 1215
    .local v5, "percentageOfNextCircle":F
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    .line 1216
    .local v6, "currentCell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    invoke-static {v6}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$400(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v7

    invoke-direct {v8, v7}, Lcom/coui/appcompat/widget/COUILockPatternView;->getCenterXForColumn(I)F

    move-result v7

    .line 1217
    .local v7, "centerX":F
    invoke-static {v6}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$300(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v13

    invoke-direct {v8, v13}, Lcom/coui/appcompat/widget/COUILockPatternView;->getCenterYForRow(I)F

    move-result v13

    .line 1219
    .local v13, "centerY":F
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    .line 1220
    .local v14, "nextCell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    nop

    .line 1221
    invoke-static {v14}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$400(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v15

    invoke-direct {v8, v15}, Lcom/coui/appcompat/widget/COUILockPatternView;->getCenterXForColumn(I)F

    move-result v15

    sub-float/2addr v15, v7

    mul-float/2addr v15, v5

    .line 1222
    .local v15, "dx":F
    nop

    .line 1223
    invoke-static {v14}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$300(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v12

    invoke-direct {v8, v12}, Lcom/coui/appcompat/widget/COUILockPatternView;->getCenterYForRow(I)F

    move-result v12

    sub-float/2addr v12, v13

    mul-float/2addr v12, v5

    .line 1224
    .local v12, "dy":F
    add-float v2, v7, v15

    iput v2, v8, Lcom/coui/appcompat/widget/COUILockPatternView;->mInProgressX:F

    .line 1225
    add-float v2, v13, v12

    iput v2, v8, Lcom/coui/appcompat/widget/COUILockPatternView;->mInProgressY:F

    .line 1228
    .end local v5    # "percentageOfNextCircle":F
    .end local v6    # "currentCell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    .end local v7    # "centerX":F
    .end local v12    # "dy":F
    .end local v13    # "centerY":F
    .end local v14    # "nextCell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    .end local v15    # "dx":F
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->invalidate()V

    .line 1231
    .end local v0    # "oneCycle":I
    .end local v1    # "spotInCycle":I
    .end local v3    # "numCircles":I
    .end local v4    # "needToUpdateInProgressPoint":Z
    :cond_3
    iget-object v12, v8, Lcom/coui/appcompat/widget/COUILockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 1232
    .local v12, "currentPath":Landroid/graphics/Path;
    invoke-virtual {v12}, Landroid/graphics/Path;->rewind()V

    .line 1238
    iget-boolean v0, v8, Lcom/coui/appcompat/widget/COUILockPatternView;->mInStealthMode:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    move v13, v0

    .line 1240
    .local v13, "drawPath":Z
    if-eqz v13, :cond_b

    .line 1241
    iget-object v0, v8, Lcom/coui/appcompat/widget/COUILockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-direct {v8, v1}, Lcom/coui/appcompat/widget/COUILockPatternView;->getCurrentColor(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1242
    iget-object v0, v8, Lcom/coui/appcompat/widget/COUILockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v1, v8, Lcom/coui/appcompat/widget/COUILockPatternView;->mPathAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1243
    const/4 v0, 0x0

    .line 1244
    .local v0, "anyCircles":Z
    const/4 v1, 0x0

    .line 1245
    .local v1, "lastX":F
    const/4 v2, 0x0

    .line 1246
    .local v2, "lastY":F
    move v3, v2

    move v2, v1

    move v1, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v1, "anyCircles":Z
    .local v2, "lastX":F
    .local v3, "lastY":F
    :goto_2
    if-ge v0, v10, :cond_8

    .line 1247
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    .line 1252
    .local v4, "cell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    invoke-static {v4}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$300(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v5

    aget-object v5, v11, v5

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$400(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v6

    aget-boolean v5, v5, v6

    if-nez v5, :cond_4

    .line 1253
    goto :goto_4

    .line 1255
    :cond_4
    const/4 v1, 0x1

    .line 1257
    invoke-static {v4}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$400(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v5

    invoke-direct {v8, v5}, Lcom/coui/appcompat/widget/COUILockPatternView;->getCenterXForColumn(I)F

    move-result v5

    .line 1258
    .local v5, "centerX":F
    invoke-static {v4}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$300(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v6

    invoke-direct {v8, v6}, Lcom/coui/appcompat/widget/COUILockPatternView;->getCenterYForRow(I)F

    move-result v6

    .line 1259
    .local v6, "centerY":F
    if-nez v0, :cond_5

    .line 1260
    invoke-virtual {v12}, Landroid/graphics/Path;->rewind()V

    .line 1261
    invoke-virtual {v12, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1263
    :cond_5
    if-eqz v0, :cond_7

    .line 1264
    iget-object v7, v8, Lcom/coui/appcompat/widget/COUILockPatternView;->mCellStates:[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$300(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v14

    aget-object v7, v7, v14

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->access$400(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I

    move-result v14

    aget-object v7, v7, v14

    .line 1265
    .local v7, "state":Lcom/coui/appcompat/widget/COUILockPatternView$CellState;
    iget v14, v7, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->lineEndX:F

    const/4 v15, 0x1

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_6

    iget v14, v7, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->lineEndY:F

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_6

    .line 1266
    iget v14, v7, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->lineEndX:F

    iget v15, v7, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->lineEndY:F

    invoke-virtual {v12, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    .line 1268
    :cond_6
    invoke-virtual {v12, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1271
    .end local v7    # "state":Lcom/coui/appcompat/widget/COUILockPatternView$CellState;
    :cond_7
    :goto_3
    move v2, v5

    .line 1272
    move v3, v6

    .line 1246
    .end local v4    # "cell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    .end local v5    # "centerX":F
    .end local v6    # "centerY":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1276
    .end local v0    # "i":I
    :cond_8
    :goto_4
    iget-boolean v0, v8, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternInProgress:Z

    if-nez v0, :cond_9

    iget-object v0, v8, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternDisplayMode:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    sget-object v4, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->Animate:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    if-ne v0, v4, :cond_a

    :cond_9
    if-eqz v1, :cond_a

    .line 1278
    invoke-virtual {v12, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1279
    iget v0, v8, Lcom/coui/appcompat/widget/COUILockPatternView;->mInProgressX:F

    iget v4, v8, Lcom/coui/appcompat/widget/COUILockPatternView;->mInProgressY:F

    invoke-virtual {v12, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1281
    :cond_a
    iget-object v0, v8, Lcom/coui/appcompat/widget/COUILockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    invoke-virtual {v14, v12, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 1285
    .end local v1    # "anyCircles":Z
    .end local v2    # "lastX":F
    .end local v3    # "lastY":F
    :cond_b
    move-object/from16 v14, p1

    :goto_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    move v15, v0

    .end local v0    # "i":I
    .local v15, "i":I
    const/4 v7, 0x3

    if-ge v15, v7, :cond_10

    .line 1286
    invoke-direct {v8, v15}, Lcom/coui/appcompat/widget/COUILockPatternView;->getCenterYForRow(I)F

    move-result v6

    .line 1287
    .restart local v6    # "centerY":F
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_7
    move v5, v0

    .end local v0    # "j":I
    .local v5, "j":I
    if-ge v5, v7, :cond_f

    .line 1288
    iget-object v0, v8, Lcom/coui/appcompat/widget/COUILockPatternView;->mCellStates:[[Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    aget-object v0, v0, v15

    aget-object v4, v0, v5

    .line 1289
    .local v4, "cellState":Lcom/coui/appcompat/widget/COUILockPatternView$CellState;
    invoke-direct {v8, v5}, Lcom/coui/appcompat/widget/COUILockPatternView;->getCenterXForColumn(I)F

    move-result v3

    .line 1290
    .local v3, "centerX":F
    iget v2, v4, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->translationY:F

    .line 1291
    .local v2, "translationY":F
    iget v1, v4, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->translationX:F

    .line 1292
    .local v1, "translationX":F
    aget-object v0, v11, v15

    aget-boolean v16, v0, v5

    .line 1293
    .local v16, "partOfPattern":Z
    if-nez v16, :cond_d

    iget-object v0, v8, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternDisplayMode:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    sget-object v7, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->FingerprintNoMatch:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    if-ne v0, v7, :cond_c

    goto :goto_8

    .line 1298
    :cond_c
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v18, v5

    move-object/from16 v24, v9

    move/from16 v25, v10

    move-object/from16 v26, v11

    const/16 v17, 0x3

    move v11, v3

    move-object v9, v4

    move v10, v6

    goto :goto_9

    .line 1294
    :cond_d
    :goto_8
    float-to-int v0, v3

    int-to-float v0, v0

    add-float v7, v0, v1

    float-to-int v0, v6

    int-to-float v0, v0

    add-float v18, v0, v2

    iget v0, v4, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->innerCircleScale:F

    move/from16 v19, v5

    .end local v5    # "j":I
    .local v19, "j":I
    iget v5, v4, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->innerCircleAlpha:F

    move/from16 v20, v6

    .end local v6    # "centerY":F
    .local v20, "centerY":F
    iget v6, v4, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->outerCircleScale:F

    iget v8, v4, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->outerCircleAlpha:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v22, v1

    .end local v1    # "translationX":F
    .local v22, "translationX":F
    move-object/from16 v1, p1

    move/from16 v23, v2

    .end local v2    # "translationY":F
    .local v23, "translationY":F
    move v2, v7

    move v7, v3

    .end local v3    # "centerX":F
    .local v7, "centerX":F
    move/from16 v3, v18

    move-object/from16 v24, v9

    move-object v9, v4

    .end local v4    # "cellState":Lcom/coui/appcompat/widget/COUILockPatternView$CellState;
    .local v9, "cellState":Lcom/coui/appcompat/widget/COUILockPatternView$CellState;
    .local v24, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coui/appcompat/widget/COUILockPatternView$Cell;>;"
    move/from16 v4, v21

    move/from16 v18, v19

    .end local v19    # "j":I
    .local v18, "j":I
    move/from16 v25, v10

    move/from16 v10, v20

    .end local v20    # "centerY":F
    .local v10, "centerY":F
    .local v25, "count":I
    move-object/from16 v26, v11

    const/16 v17, 0x3

    move v11, v7

    .end local v7    # "centerX":F
    .local v11, "centerX":F
    .local v26, "drawLookup":[[Z
    move v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/widget/COUILockPatternView;->drawCircleDrawable(Landroid/graphics/Canvas;FFFFFF)V

    .line 1298
    :goto_9
    iget-boolean v0, v9, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->needDrawCircle:Z

    if-eqz v0, :cond_e

    .line 1299
    float-to-int v0, v11

    int-to-float v0, v0

    add-float v2, v0, v22

    float-to-int v0, v10

    int-to-float v0, v0

    add-float v3, v0, v23

    iget v4, v9, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->radius:F

    iget v6, v9, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->alpha:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/COUILockPatternView;->drawCircle(Landroid/graphics/Canvas;FFFZF)V

    .line 1287
    .end local v9    # "cellState":Lcom/coui/appcompat/widget/COUILockPatternView$CellState;
    .end local v11    # "centerX":F
    .end local v16    # "partOfPattern":Z
    .end local v22    # "translationX":F
    .end local v23    # "translationY":F
    :cond_e
    add-int/lit8 v0, v18, 0x1

    move v6, v10

    move/from16 v7, v17

    move-object/from16 v9, v24

    move/from16 v10, v25

    move-object/from16 v11, v26

    move-object/from16 v8, p0

    goto/16 :goto_7

    .line 1285
    .end local v18    # "j":I
    .end local v24    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coui/appcompat/widget/COUILockPatternView$Cell;>;"
    .end local v25    # "count":I
    .end local v26    # "drawLookup":[[Z
    .local v9, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coui/appcompat/widget/COUILockPatternView$Cell;>;"
    .local v10, "count":I
    .local v11, "drawLookup":[[Z
    :cond_f
    move-object/from16 v24, v9

    move/from16 v25, v10

    move-object/from16 v26, v11

    .end local v9    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coui/appcompat/widget/COUILockPatternView$Cell;>;"
    .end local v10    # "count":I
    .end local v11    # "drawLookup":[[Z
    .restart local v24    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coui/appcompat/widget/COUILockPatternView$Cell;>;"
    .restart local v25    # "count":I
    .restart local v26    # "drawLookup":[[Z
    add-int/lit8 v0, v15, 0x1

    move-object/from16 v8, p0

    goto/16 :goto_6

    .line 1304
    .end local v15    # "i":I
    .end local v24    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coui/appcompat/widget/COUILockPatternView$Cell;>;"
    .end local v25    # "count":I
    .end local v26    # "drawLookup":[[Z
    .restart local v9    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coui/appcompat/widget/COUILockPatternView$Cell;>;"
    .restart local v10    # "count":I
    .restart local v11    # "drawLookup":[[Z
    :cond_10
    move-object/from16 v24, v9

    move/from16 v25, v10

    move-object/from16 v26, v11

    .end local v9    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coui/appcompat/widget/COUILockPatternView$Cell;>;"
    .end local v10    # "count":I
    .end local v11    # "drawLookup":[[Z
    .restart local v24    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coui/appcompat/widget/COUILockPatternView$Cell;>;"
    .restart local v25    # "count":I
    .restart local v26    # "drawLookup":[[Z
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 983
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mAccessibilityManagerService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 984
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 985
    .local v0, "action":I
    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 993
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 987
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 988
    goto :goto_0

    .line 990
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 991
    nop

    .line 996
    :goto_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 997
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 999
    .end local v0    # "action":I
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 780
    iget v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mViewWidth:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mViewHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/COUILockPatternView;->setMeasuredDimension(II)V

    .line 781
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1392
    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/widget/COUILockPatternView$SavedState;

    .line 1393
    .local v0, "ss":Lcom/coui/appcompat/widget/COUILockPatternView$SavedState;
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1394
    sget-object v1, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->Correct:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    .line 1396
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coui/appcompat/util/COUILockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1394
    invoke-virtual {p0, v1, v2}, Lcom/coui/appcompat/widget/COUILockPatternView;->setPattern(Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;Ljava/util/List;)V

    .line 1397
    invoke-static {}, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->values()[Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILockPatternView$SavedState;->getDisplayMode()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternDisplayMode:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    .line 1398
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILockPatternView$SavedState;->isInputEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInputEnabled:Z

    .line 1399
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILockPatternView$SavedState;->isInStealthMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInStealthMode:Z

    .line 1400
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mEnableHapticFeedback:Z

    .line 1401
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 10

    .line 1383
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v8

    .line 1384
    .local v8, "superState":Landroid/os/Parcelable;
    new-instance v9, Lcom/coui/appcompat/widget/COUILockPatternView$SavedState;

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 1385
    invoke-static {v0}, Lcom/coui/appcompat/util/COUILockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternDisplayMode:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    .line 1386
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInStealthMode:Z

    iget-boolean v6, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mEnableHapticFeedback:Z

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, v8

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/widget/COUILockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/coui/appcompat/widget/COUILockPatternView$1;)V

    return-object v9
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 752
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 753
    .local v0, "width":I
    int-to-float v1, v0

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mSquareWidth:F

    .line 756
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->getPaddingTop()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    .line 757
    .local v1, "height":I
    int-to-float v3, v1

    div-float/2addr v3, v2

    iput v3, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mSquareHeight:F

    .line 758
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 759
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1004
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInputEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1008
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1036
    return v1

    .line 1023
    :pswitch_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternInProgress:Z

    if-eqz v0, :cond_1

    .line 1024
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUILockPatternView;->setPatternInProgress(Z)V

    .line 1025
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->resetPattern()V

    .line 1026
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->notifyPatternCleared()V

    .line 1034
    :cond_1
    return v2

    .line 1020
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    .line 1021
    return v2

    .line 1017
    :pswitch_2
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->handleActionUp()V

    .line 1018
    return v2

    .line 1010
    :pswitch_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1012
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1014
    :cond_2
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    .line 1015
    return v2

    .line 1005
    :cond_3
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refresh()V
    .locals 7

    .line 1774
    const/4 v0, 0x0

    .line 1775
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mStyle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 1776
    .local v1, "styleAttrType":Ljava/lang/String;
    const-string v2, "attr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 1777
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mContext:Landroid/content/Context;

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUILockPatternView:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mStyle:I

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 1778
    :cond_0
    const-string v2, "style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1779
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mContext:Landroid/content/Context;

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUILockPatternView:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mStyle:I

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1781
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1782
    sget v2, Lcoui/support/appcompat/R$styleable;->COUILockPatternView_couiRegularColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mRegularColor:I

    .line 1783
    sget v2, Lcoui/support/appcompat/R$styleable;->COUILockPatternView_couiErrorColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mErrorColor:I

    .line 1784
    sget v2, Lcoui/support/appcompat/R$styleable;->COUILockPatternView_couiSuccessColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mSuccessColor:I

    .line 1786
    sget v2, Lcoui/support/appcompat/R$styleable;->COUILockPatternView_couiPathColor:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mRegularColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 1787
    .local v2, "pathColor":I
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1788
    sget v3, Lcoui/support/appcompat/R$styleable;->COUILockPatternView_couiOuterCircleMaxAlpha:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mOuterCircleMaxAlpha:F

    .line 1789
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1791
    .end local v2    # "pathColor":I
    :cond_2
    return-void
.end method

.method public setDisplayMode(Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;)V
    .locals 2
    .param p1, "displayMode"    # Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    .line 561
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternDisplayMode:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    .line 562
    sget-object v0, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->Animate:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    if-ne p1, v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mAnimatingPeriodStart:J

    .line 568
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    .line 569
    .local v0, "first":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUILockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInProgressX:F

    .line 570
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->getRow()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUILockPatternView;->getCenterYForRow(I)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInProgressY:F

    .line 571
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->clearPatternDrawLookup()V

    goto :goto_0

    .line 564
    .end local v0    # "first":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_1
    :goto_0
    sget-object v0, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->Wrong:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    if-ne p1, v0, :cond_3

    .line 574
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 575
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->performWrongModeFeedback()V

    .line 577
    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->startWrongAnimator()V

    .line 579
    :cond_3
    sget-object v0, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->FingerprintNoMatch:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    if-ne p1, v0, :cond_4

    .line 580
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->startFingerprintNoMatchAnimator()V

    .line 582
    :cond_4
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->invalidate()V

    .line 583
    return-void
.end method

.method public setErrorColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 1755
    iput p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mErrorColor:I

    .line 1756
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0
    .param p1, "inStealthMode"    # Z

    .line 516
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mInStealthMode:Z

    .line 517
    return-void
.end method

.method public setLockPassword(Z)V
    .locals 0
    .param p1, "setPassword"    # Z

    .line 1681
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mIsSetPassword:Z

    .line 1682
    return-void
.end method

.method public setOnPatternListener(Lcom/coui/appcompat/widget/COUILockPatternView$OnPatternListener;)V
    .locals 0
    .param p1, "onPatternListener"    # Lcom/coui/appcompat/widget/COUILockPatternView$OnPatternListener;

    .line 534
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mOnPatternListener:Lcom/coui/appcompat/widget/COUILockPatternView$OnPatternListener;

    .line 535
    return-void
.end method

.method public setOuterCircleMaxAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 1767
    int-to-float v0, p1

    iput v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mOuterCircleMaxAlpha:F

    .line 1768
    return-void
.end method

.method public setPathColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 1763
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1764
    return-void
.end method

.method public setPattern(Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 5
    .param p1, "displayMode"    # Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/widget/COUILockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 543
    .local p2, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/coui/appcompat/widget/COUILockPatternView$Cell;>;"
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 544
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 545
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->clearPatternDrawLookup()V

    .line 546
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    .line 547
    .local v1, "cell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 548
    .end local v1    # "cell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    goto :goto_0

    .line 550
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView;->setDisplayMode(Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;)V

    .line 551
    return-void
.end method

.method public setRegularColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 1751
    iput p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mRegularColor:I

    .line 1752
    return-void
.end method

.method public setSuccessColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 1759
    iput p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mSuccessColor:I

    .line 1760
    return-void
.end method

.method public setSuccessFinger()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1706
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .param p1, "tactileFeedbackEnabled"    # Z

    .line 525
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView;->mEnableHapticFeedback:Z

    .line 526
    return-void
.end method
